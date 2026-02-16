/// 文章日期显示模块
///
/// 在 heading level 1 下方注入创建日期，文末注入最后修改日期。
/// 日期格式化与地理位置解析由 date-location.js 在客户端完成。

/// 创建日期 HTML 元素 (<time> 标签)
///
/// - datetime-str: ISO 8601 日期字符串
/// - kind: "created" 或 "updated"
/// - geo: 地理坐标字符串 "lat,lng"（可选）
#let date-element(datetime-str, kind, geo: none) = {
  if datetime-str != none {
    let time-attrs = (
      class: "article-date " + kind + "-date",
      datetime: datetime-str,
    )
    if geo != none {
      time-attrs.insert("data-geo", geo)
    }
    html.div(
      class: "article-date-wrapper " + kind + "-date-wrapper",
      html.elem("time", attrs: time-attrs),
    )
  }
}

/// show rule：仅在第一个 level 1 标题下方注入文章创建日期
///
/// 用法：`show: template-date(date: "2025-06-03T15:30:45+08:00", date_geo: "39.9,116.4")`
#let template-date(date: none, date_geo: none) = (content) => {
  if date != none {
    let h1-injected = state("h1-date-injected", false)
    show heading.where(level: 1): it => {
      it
      context if not h1-injected.get() {
        h1-injected.update(true)
        date-element(date, "created", geo: date_geo)
      }
    }
    content
  } else {
    content
  }
}

/// 生成文末「最后修改日期」块
///
/// - updated: 已解析的日期字符串（非 auto）
/// - updated_geo: 地理坐标字符串
#let updated-block(updated: none, updated_geo: none) = {
  if updated != none {
    date-element(updated, "updated", geo: updated_geo)
  }
}
