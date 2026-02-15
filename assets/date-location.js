/**
 * 日期与地理位置处理
 *
 * - 将 ISO 8601 日期转换为用户本地时间或指定地理位置时区的时间
 * - 通过地理坐标反向地理编码获取城市名称
 * - 根据页面语言 / 浏览器语言自动本地化标签
 * - 正确处理夏令时 / 冬令时（通过 IANA 时区名 + Intl API）
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
    function formatDate(date, timeZone, lang) {
        var opts = {
            year: "numeric",
            month: "long",
            day: "numeric",
            hour: "2-digit",
            minute: "2-digit",
        };
        if (timeZone) opts.timeZone = timeZone;
        try {
            return new Intl.DateTimeFormat(lang, opts).format(date);
        } catch (_) {
            // timeZone 无效时退回浏览器默认时区
            delete opts.timeZone;
            return new Intl.DateTimeFormat(lang, opts).format(date);
        }
    }

    // ─── 地理信息缓存 ────────────────────────────────────────────
    var geoCache = {};

    function cacheKey(lat, lng) {
        return lat.toFixed(4) + "," + lng.toFixed(4);
    }

    // ─── 反向地理编码（Nominatim / OpenStreetMap）──────────────
    function fetchCityName(lat, lng, lang) {
        var url =
            "https://nominatim.openstreetmap.org/reverse?lat=" +
            lat +
            "&lon=" +
            lng +
            "&format=json&accept-language=" +
            lang +
            "&zoom=10";
        return fetch(url, {
            headers: { "User-Agent": "TuftedBlog/1.0" },
        })
            .then(function (r) {
                return r.json();
            })
            .then(function (data) {
                var addr = data.address || {};
                var city =
                    addr.city ||
                    addr.town ||
                    addr.village ||
                    addr.county ||
                    addr.state ||
                    "";
                var country = addr.country || "";
                if (city && country) return city + ", " + country;
                return city || country || "";
            })
            .catch(function () {
                return "";
            });
    }

    // ─── 时区查询（TimeAPI.io）──────────────────────────────────
    function fetchTimezone(lat, lng) {
        var url =
            "https://www.timeapi.io/api/timezone/coordinate?latitude=" +
            lat +
            "&longitude=" +
            lng;
        return fetch(url)
            .then(function (r) {
                return r.json();
            })
            .then(function (data) {
                return data.timeZone || null;
            })
            .catch(function () {
                return null;
            });
    }

    // ─── 获取地理信息（带缓存）──────────────────────────────────
    function getGeoInfo(lat, lng, lang) {
        var key = cacheKey(lat, lng);
        if (geoCache[key]) return Promise.resolve(geoCache[key]);

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
        if (!datetimeStr) return Promise.resolve();

        var date = new Date(datetimeStr);
        if (isNaN(date.getTime())) return Promise.resolve();

        var isCreated = el.classList.contains("created-date");
        var labels = getLabels(locale);
        var label = isCreated ? labels.created : labels.updated;

        var geoStr = el.dataset.geo;

        if (geoStr) {
            var parts = geoStr.split(",");
            var lat = parseFloat(parts[0]);
            var lng = parseFloat(parts[1]);

            if (isNaN(lat) || isNaN(lng)) {
                // 坐标无效，退回浏览器时区
                el.textContent = label + formatDate(date, null, locale);
                return Promise.resolve();
            }

            return getGeoInfo(lat, lng, locale).then(function (info) {
                var formatted = formatDate(date, info.timezone, locale);
                var text = label + formatted;
                if (info.city) text += labels.at + info.city;
                el.textContent = text;
            });
        } else {
            // 无地理坐标：使用浏览器本地时区
            el.textContent = label + formatDate(date, null, locale);
            return Promise.resolve();
        }
    }

    // ─── 初始化 ──────────────────────────────────────────────────
    document.addEventListener("DOMContentLoaded", function () {
        var elements = document.querySelectorAll(".article-date");
        elements.forEach(function (el) {
            processTimeElement(el);
        });
    });
})();
