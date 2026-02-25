/// 图片 HTML 输出模块
///
/// 当 image 的 source 是字符串路径时，生成 `<img>` 标签而非内联 base64。
/// 当 source 是 bytes 时，保持默认行为。

/// 将 Typst 的 fit 参数映射到 CSS object-fit
#let _fit-to-css(fit) = {
  if fit == "cover" { "object-fit:cover" }
  else if fit == "contain" { "object-fit:contain" }
  else if fit == "stretch" { "object-fit:fill" }
  else { none }
}

/// 将 Typst 的 scaling 参数映射到 CSS image-rendering
#let _scaling-to-css(scaling) = {
  if scaling == "pixelated" { "image-rendering:pixelated" }
  else if scaling == "smooth" { "image-rendering:auto" }
  else { none }
}

/// 将 Typst 尺寸值转为 CSS 字符串
#let _dim-to-css(value) = {
  if value == auto { none }
  else if type(value) == ratio { str(value) }
  else if type(value) == length {
    // length 可以直接转为 repr 形式如 "100pt"
    repr(value)
  } else if type(value) == relative {
    repr(value)
  } else {
    none
  }
}

/// 构建 CSS style 字符串
#let _build-style(width, height, fit, scaling) = {
  let parts = ()

  let w = _dim-to-css(width)
  if w != none { parts.push("width:" + w) }

  let h = _dim-to-css(height)
  if h != none { parts.push("height:" + h) }

  let f = _fit-to-css(fit)
  if f != none { parts.push(f) }

  let s = _scaling-to-css(scaling)
  if s != none { parts.push(s) }

  if parts.len() > 0 { parts.join(";") }
  else { none }
}

/// show rule：拦截 image 元素，路径型生成 <img> 标签
#let template-image(content) = {
  show image: it => {
    // 只有 source 为 str（路径）时才转为 HTML <img>
    // bytes 类型保持默认行为（内联 base64）
    if type(it.source) == str {
      let attrs = (:)
      attrs.insert("src", it.source)

      // alt 文本
      if it.alt != none {
        attrs.insert("alt", it.alt)
      } else {
        attrs.insert("alt", "")
      }

      // 构建 inline style
      let style = _build-style(it.width, it.height, it.fit, it.scaling)
      if style != none {
        attrs.insert("style", style)
      }

      html.elem("img", attrs: attrs)
    } else {
      it
    }
  }

  content
}
