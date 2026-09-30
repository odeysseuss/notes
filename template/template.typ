// === color pallete ===
#let colors = (
  dark: rgb("#1d2021"),
  light: rgb("#eee7da"),
  black: rgb("#111111"),
  red: rgb("#c4746e"),
  green: rgb("#8a9a7b"),
  blue: rgb("#8ba4b0"),
  yellow: rgb("#e9b143"),
  purple: rgb("#bdbcf9"),
  pink: rgb("#a292a3"),
  grey: rgb("#9e9b93"),
)

// === callout blocks ===
#let callout(content, fill: colors.blue) = box(
  fill: colors.black,
  radius: 0.8em,
  inset: (x: 0.8em, y: 0.4em),
  text(fill: fill, weight: "bold", content),
)

#let note(body) = block(
  stroke: (left: 0.1em + colors.blue),
  inset: (left: 0.8em, top: 0.5em, bottom: 0.5em),
  [
    #callout("Note") \
    #text(fill: colors.light, body)
  ],
)

#let eg(body) = [
  #callout("e.g.") #body
]

#let q_counter = counter("question")
#let q(body) = {
  q_counter.step()
  context {
    let h_num = counter(heading).display()
    let q_num = q_counter.display()
    callout("Q " + h_num + q_num)
  }
  [ #body]
}

// === core config ===
#let conf(title: "", body) = {
  // page and text
  set page(numbering: "1", fill: colors.dark)
  set text(
    fill: colors.light,
    font: "Maple Mono",
    size: 11.5pt,
  )
  set table(stroke: colors.grey)
  show math.equation: set text(font: "Fira Math")

  // heading
  set heading(numbering: "1.")
  show heading: set block(above: 1.5em, below: 1.5em)
  show heading.where(level: 1): set align(center)
  show heading.where(level: 1): set text(size: 1.3em, fill: colors.blue)
  show heading.where(level: 2): set text(size: 1.25em, fill: colors.green)
  show heading.where(level: 3): set text(size: 1.2em, fill: colors.purple)

  // reset question counter on each heading
  show heading: it => {
    q_counter.update(0)
    it
  }

  // code blocks
  set raw(theme: "kanagawa.tmTheme", tab-size: 4)
  show raw: set text(font: "Maple Mono")

  show raw.where(block: false): it => box(
    fill: colors.black,
    inset: (x: 0.4em, y: 0.1em),
    outset: (y: 0.1em),
    radius: 0.3em,
    baseline: 0%,
    text(fill: colors.yellow, it),
  )

  show raw.where(block: true): it => block(
    fill: colors.black,
    inset: 1em,
    radius: 0.5em,
    width: 100%,
    {
      // block and language title
      if it.lang != none {
        place(
          top + right,
          text(
            font: "Maple Mono",
            fill: colors.blue,
            weight: "extrabold",
            style: "italic",
            upper(it.lang),
          ),
        )
      }
      // line numbers
      grid(
        columns: (auto, 1fr),
        column-gutter: 1.5em,
        row-gutter: par.leading,
        ..for line in it.lines {
          (
            text(fill: colors.grey, weight: "light", style: "italic")[#line.number],
            line.body,
          )
        }
      )
    },
  )

  // document title
  align(center)[
    #underline(text(weight: "bold", size: 3.2em, fill: colors.purple)[#title])
  ]

  linebreak()

  body
}
