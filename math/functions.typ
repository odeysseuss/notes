#import "@preview/lilaq:0.6.0" as lq
#import "/utils/template.typ": *
#import "/utils/math.typ": *

#show: conf.with(title: "Functions")

#let graph(title, func, x) = {
  show: lq.set-grid(stroke: rgb(colors.grey))
  show: lq.set-spine(stroke: rgb(colors.light))

  lq.diagram(
    title: title,
    // title: lq.title(
    //   [#title],
    //   position: bottom,
    //   pad: 1.5em,
    // ),
    width: 7cm,
    height: 4cm,
    ylim: (-10, 10),
    xlim: (-5, 5),
    lq.plot(
      color: rgb("#bdbcf9"),
      smooth: true,
      x,
      x.map(func),
    ),
  )
}

= Transformation of functions
\

== Translations
\
#let quad_x = lq.linspace(-5, 5)

- $f(x) = x^2$ -> Parent Function
#graph($x^2$, x => x * x, quad_x)

- $f(x) + c$ -> Shifts the graph c units up:
#graph($x^2 + 1$, x => x * x + 1, quad_x)
- $f(x) - c$ -> Shifts the graph c units down
#graph($x^2 - 1$, x => x * x - 1, quad_x)
- $f(x - c)$ -> Shifts the graph c units right
#graph($(x - 1)^2 + 2$, x => calc.pow(x - 1, 2), quad_x)
- $f(x + c)$ -> Shifts the graph c units left
#graph($(x + 1)^2$, x => calc.pow(x + 1, 2), quad_x)
\

== Reflections
\
#let root_pos_x = lq.linspace(0, 5)
#let root_neg_x = lq.linspace(-5, 0)

- $f(x) = sqrt(x)$ -> Parent Function
#graph($sqrt(x)$, x => calc.sqrt(x), root_pos_x)

- $-f(x)$ -> Flips graph over the x-axis
#graph($-sqrt(x)$, x => -calc.sqrt(x), root_pos_x)
- $f(-x)$ -> Flips graph over the y-axis
#graph($sqrt(-x)$, x => calc.sqrt(-x), root_neg_x)
- $-f(-x)$ -> $180 degree$ rotation over the origin
#graph($-sqrt(-x)$, x => -calc.sqrt(-x), root_neg_x)
\

== Dilations
\
#let abs_x = range(-2, 3)

- $f(x) = abs(x)$ -> Parent Function
#graph($abs(x)$, x => calc.abs(x), abs_x)

- $a dot f(x)$ -> $a > 1$, Graph is stretched vertically
#graph($2 dot abs(x)$, x => 2 * calc.abs(x), abs_x)
- $a dot f(x)$ -> $0 < a < 1$, Graph is shrinked vertically
#graph($frac(1, 2) dot abs(x)$, x => 1 / 2 * calc.abs(x), abs_x)
- $f(a dot x)$ -> $a > 1$, Graph is shrinked horizontally
#graph($abs((2 dot x))$, x => calc.abs(2 * x), abs_x)
- $f(a dot x)$ -> $0 < a < 1$, Graph is stretched horizontally
#graph($abs(frac(1, 2) dot x)$, x => calc.abs(1 / 2 * x), abs_x)
\

= Graphs
\

== Common Graphs
\
#graph($2x$, x => 2 * x, range(-5, 5))
#graph($x^2$, x => x * x, range(-5, 5))
#graph($sqrt(x)$, x => calc.sqrt(x), range(0, 5))
#graph($ln(x)$, x => calc.ln(x), range(1, 5))
#graph($e^x$, x => calc.exp(x), range(0, 5))
\

== Trig Functions
\
#let trig_x = lq.linspace(-2 * calc.pi, 2 * calc.pi)

#graph($sin(x)$, x => calc.sin(x), trig_x)
#graph($cos(x)$, x => calc.cos(x), trig_x)
#graph($tan(x)$, x => calc.tan(x), trig_x)
#graph($csc(x)$, x => 1 / calc.sin(x), trig_x)
#graph($sec(x)$, x => 1 / calc.cos(x), trig_x)
#graph($cot(x)$, x => 1 / calc.tan(x), trig_x)
