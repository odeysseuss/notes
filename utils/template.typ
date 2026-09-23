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

// must place it before conf()
#let q_counter = counter("question")

#let conf(title: "", body) = {
  set page(
    numbering: "1",
    fill: rgb(colors.dark),
  )
  set text(
    fill: rgb(colors.light),
    font: "Maple Mono NF", // Regular, Italic, Bold, BoldItalic
    size: 1.2em,
  )
  show math.equation: set text(font: "Fira Math")
  set table(stroke: rgb(colors.grey))

  set heading(numbering: "1.")
  show heading: set block(above: 1.5em, below: 1.5em)
  show heading.where(level: 1): set align(center)
  show heading.where(level: 1): set text(size: 1.3em, fill: rgb(colors.blue))
  show heading.where(level: 2): set text(size: 1.25em, fill: rgb(colors.green))
  show heading.where(level: 3): set text(size: 1.2em, fill: rgb(colors.purple))

  // must be inside conf()
  show heading: it => {
    q_counter.update(0)
    it
  }

  align(center)[#underline(text(
      weight: "bold",
      size: 3.2em,
      fill: rgb(colors.purple),
    )[#title])
  ]

  linebreak()

  // outline()
  // pagebreak()

  body
}

#let note(body) = {
  block(
    stroke: (left: 2pt + rgb(colors.blue)),
    inset: (left: 0.8em, top: 0.5em, bottom: 0.5em),
    [
      #block(
        fill: rgb(colors.black),
        inset: 1.0em,
        radius: 1.0em,
        text(fill: rgb(colors.blue), weight: "semibold")[Note],
      )
      #text(fill: rgb(colors.light))[#body]
    ],
  )
}

#let eg(body) = {
  box(
    fill: rgb(colors.black),
    radius: 1em,
    inset: 0.5em,
  )[
    #context {
      text(fill: rgb(colors.blue), weight: "bold")[e.g.]
    }
  ]
  [   #body]
}

#let q(body) = {
  q_counter.step()

  box(
    fill: rgb(colors.black),
    radius: 1em,
    inset: 0.5em,
  )[
    #context {
      let h_num = counter(heading).display()
      let q_num = q_counter.display()

      text(fill: rgb(colors.blue), weight: "bold")[Q #h_num#q_num]
    }
  ]
  [   #body]
}
