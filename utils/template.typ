#let colors = (
  dark: "#1d2021",
  light: "#eee7da",
  black: "#111111",
  red: "#c4746e",
  green: "#8a9a7b",
  blue: "#8ba4b0",
  yellow: "#e9b143",
  purple: "#bdbcf9",
  pink: "#a292a3",
  grey: "#9e9b93",
)

#let conf(title: "", body) = {
  set page(
    numbering: "1",
    fill: rgb(colors.dark),
  )
  set text(
    fill: rgb(colors.light),
    font: "Maple Mono NF",
    size: 1.2em,
  )

  set heading(numbering: "1.")
  show heading.where(level: 1): set align(center)
  show heading.where(level: 1): set text(size: 1.3em, fill: rgb(colors.blue))
  show heading.where(level: 2): set text(size: 1.25em, fill: rgb(colors.green))
  show heading.where(level: 3): set text(size: 1.2em, fill: rgb(colors.purple))

  set table(stroke: rgb(colors.grey))
  show math.equation: set text(font: "Fira Math")

  align(center)[#underline(text(
      weight: "bold",
      size: 4em,
      fill: rgb(colors.blue),
    )[#title])
  ]

  linebreak()

  outline()

  pagebreak()

  body
}
