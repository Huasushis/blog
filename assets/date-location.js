/**
 * 日期与地理位置处理
 *
 * - 将 ISO 8601 日期转换为指定地理位置时区的时间，或浏览器本地时间
 * - 通过 Open-Meteo API 获取 IANA 时区名（正确处理夏令时/冬令时）
 * - 通过 Nominatim 反向地理编码获取城市名称（zoom=5，城市级精度）
 * - 根据页面语言 / 浏览器语言自动本地化标签
 */
(function () {
    "use strict";

    // ─── 语言 / 区域设置 ─────────────────────────────────────────
    var pageLang = document.documentElement.lang || "";
    var locale = pageLang || navigator.language || "en";

    // ─── 本地化标签 ──────────────────────────────────────────────
    function getLabels(lang) {
        var l = lang.toLowerCase();
        if (l.startsWith("zh"))
            return {
                created: "发布于 ",
                updated: "最后编辑于 ",
                at: "，于",
            };
        if (l.startsWith("ja"))
            return {
                created: "公開日：",
                updated: "最終編集：",
                at: "、",
            };
        if (l.startsWith("ko"))
            return {
                created: "게시일 ",
                updated: "마지막 수정 ",
                at: ", ",
            };
        if (l.startsWith("fr"))
            return {
                created: "Publié le ",
                updated: "Dernière modification le ",
                at: ", à ",
            };
        if (l.startsWith("de"))
            return {
                created: "Veröffentlicht am ",
                updated: "Zuletzt bearbeitet am ",
                at: ", in ",
            };
        if (l.startsWith("es"))
            return {
                created: "Publicado el ",
                updated: "Última edición el ",
                at: ", en ",
            };
        return {
            created: "Published on ",
            updated: "Last edited on ",
            at: ", at ",
        };
    }

    // ─── 日期格式化 ──────────────────────────────────────────────
    var FMT_OPTS = {
        year: "numeric",
        month: "long",
        day: "numeric",
        hour: "2-digit",
        minute: "2-digit",
    };

    // 使用 Intl.DateTimeFormat 格式化，timeZone 可选
    function formatDate(date, timeZone, lang) {
        var opts = Object.assign({}, FMT_OPTS);
        if (timeZone) opts.timeZone = timeZone;
        try {
            return new Intl.DateTimeFormat(lang, opts).format(date);
        } catch (_) {
            delete opts.timeZone;
            return new Intl.DateTimeFormat(lang, opts).format(date);
        }
    }

    // ─── 偏移量回退格式化 ────────────────────────────────────────
    // 从 ISO 8601 尾部解析偏移分钟数，用于 IANA 查询失败时的回退
    function parseUtcOffsetMinutes(datetimeStr) {
        if (datetimeStr.endsWith("Z")) return 0;
        var m = datetimeStr.match(/([+-])(\d{2}):(\d{2})$/);
        if (!m) return null;
        var sign = m[1] === "+" ? 1 : -1;
        return sign * (parseInt(m[2], 10) * 60 + parseInt(m[3], 10));
    }

    function offsetToEtcTimezone(minutes) {
        if (minutes % 60 !== 0) return null;
        var h = -(minutes / 60);
        return "Etc/GMT" + (h >= 0 ? "+" : "") + h;
    }

    function formatDateWithOffset(date, offsetMinutes, lang) {
        var shifted = new Date(date.getTime() + offsetMinutes * 60000);
        var opts = Object.assign({}, FMT_OPTS, { timeZone: "UTC" });
        return new Intl.DateTimeFormat(lang, opts).format(shifted);
    }

    // 偏移量回退：当 IANA 时区不可用时，使用 datetime 字符串中的偏移
    function formatFallback(date, datetimeStr, lang) {
        var offset = parseUtcOffsetMinutes(datetimeStr);
        if (offset === null) return formatDate(date, null, lang);
        var tz = offsetToEtcTimezone(offset);
        if (tz) return formatDate(date, tz, lang);
        return formatDateWithOffset(date, offset, lang);
    }

    // ─── 地理信息缓存（时区 + 城市名） ──────────────────────────
    var geoCache = {};

    function cacheKey(lat, lng) {
        return lat.toFixed(2) + "," + lng.toFixed(2);
    }

    // ─── IANA 时区查询（Open-Meteo，免费、无需 API Key）─────────
    function fetchTimezone(lat, lng) {
        var url =
            "https://api.open-meteo.com/v1/forecast?latitude=" +
            lat +
            "&longitude=" +
            lng +
            "&timezone=auto&forecast_days=1";
        return fetch(url)
            .then(function (r) {
                if (!r.ok) throw new Error(r.status);
                return r.json();
            })
            .then(function (data) {
                // Open-Meteo 返回 "timezone": "Asia/Shanghai" 等 IANA 名
                return data.timezone || null;
            })
            .catch(function () {
                return null;
            });
    }

    // ─── 反向地理编码（Nominatim，直接使用 display_name）────────
    function fetchCityName(lat, lng, lang) {
        var url =
            "https://nominatim.openstreetmap.org/reverse?lat=" +
            lat +
            "&lon=" +
            lng +
            "&format=json&accept-language=" +
            lang +
            "&zoom=8&addressdetails=0";
        return fetch(url, {
            headers: { "User-Agent": "TuftedBlog/1.0" },
        })
            .then(function (r) {
                if (!r.ok) throw new Error(r.status);
                return r.json();
            })
            .then(function (data) {
                return data.display_name || "";
            })
            .catch(function () {
                return "";
            });
    }

    // ─── 获取地理信息（时区 + 城市，带缓存）─────────────────────
    function getGeoInfo(lat, lng, lang) {
        var key = cacheKey(lat, lng);
        if (key in geoCache) return Promise.resolve(geoCache[key]);

        return Promise.all([
            fetchTimezone(lat, lng),
            fetchCityName(lat, lng, lang),
        ]).then(function (results) {
            var info = { timezone: results[0], city: results[1] };
            geoCache[key] = info;
            return info;
        });
    }

    // ─── 处理单个 <time> 元素 ────────────────────────────────────
    function processTimeElement(el) {
        var datetimeStr = el.getAttribute("datetime");
        if (!datetimeStr) return;

        var date = new Date(datetimeStr);
        if (isNaN(date.getTime())) return;

        var isCreated = el.classList.contains("created-date");
        var labels = getLabels(locale);
        var label = isCreated ? labels.created : labels.updated;

        var geoStr = el.dataset.geo;

        if (geoStr) {
            var parts = geoStr.split(",");
            var lat = parseFloat(parts[0]);
            var lng = parseFloat(parts[1]);

            if (isNaN(lat) || isNaN(lng)) {
                el.textContent = label + formatDate(date, null, locale);
                return;
            }

            // 立即显示日期（使用偏移量回退，保证不闪烁）
            el.textContent =
                label + formatFallback(date, datetimeStr, locale);

            // 异步获取 IANA 时区 + 城市名，获取后更新
            getGeoInfo(lat, lng, locale)
                .then(function (info) {
                    // 用 IANA 时区重新格式化（正确处理 DST）
                    var formatted = info.timezone
                        ? formatDate(date, info.timezone, locale)
                        : formatFallback(date, datetimeStr, locale);
                    var text = label + formatted;
                    if (info.city) text += labels.at + info.city;
                    el.textContent = text;
                })
                .catch(function () {
                    // 保留已有文本
                });
        } else {
            // 无地理坐标：使用浏览器本地时区
            el.textContent = label + formatDate(date, null, locale);
        }
    }

    // ─── 初始化 ──────────────────────────────────────────────────
    document.addEventListener("DOMContentLoaded", function () {
        var elements = document.querySelectorAll(".article-date");
        elements.forEach(processTimeElement);
    });
})();
