#let conf(title: "", body) = {
  set page(
    numbering: "1",
    // fill: rgb("#f1f1f1"),
    // fill: rgb("f2f0e3"),
  )
  set par(leading: 1.2em, justify: true)

  set heading(numbering: "1.")
  show heading.where(level: 3): set text(1.2em)

  set text(
    font: "Maple Mono NF",
    // fill: rgb("#2e2e2e"),
  )

  show math.equation: set text(font: "Fira Math")

  align(center)[#underline(text(
      weight: "bold",
      size: 22pt,
      fill: blue,
    )[#title])
  ]

  linebreak()

  body
}
