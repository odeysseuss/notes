#import "@preview/lilaq:0.6.0" as lq
#import "/utils/template.typ": *
#import "/utils/math.typ": *

#show: conf.with(title: "Functions")

#show: lq.set-grid(stroke: rgb(colors.grey))
#show: lq.set-spine(stroke: rgb(colors.light))
#show lq.selector(lq.legend): set text(size: 0.65em)


#let graph(title, func, x, xlim: (-5, 5), ylim: (-10, 10), smooth: true) = {
  lq.diagram(
    title: title,
    // title: lq.title(
    //   [#title],
    //   position: bottom,
    //   pad: 1.5em,
    // ),
    width: 7cm,
    height: 4cm,
    xlim: xlim,
    ylim: ylim,
    lq.plot(
      color: rgb("#bdbcf9"),
      smooth: smooth,
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
#graph($x^2 + 3$, x => x * x + 3, quad_x)
- $f(x) - c$ -> Shifts the graph c units down
#graph($x^2 - 3$, x => x * x - 3, quad_x)
- $f(x - c)$ -> Shifts the graph c units right
#graph($(x - 2)^2$, x => calc.pow(x - 2, 2), quad_x)
- $f(x + c)$ -> Shifts the graph c units left
#graph($(x + 2)^2$, x => calc.pow(x + 2, 2), quad_x)
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
#graph($1/x$, x => 1 / x, lq.linspace(-5, 1) + lq.linspace(1, 5), smooth: false)
#graph($x^2$, x => x * x, range(-5, 5))
#graph($1/x^2$, x => 1 / calc.pow(x, 2), lq.linspace(-5, 1) + lq.linspace(1, 5), smooth: false)
#graph($sqrt(x)$, x => calc.sqrt(x), range(0, 5))
#graph($abs(x)$, x => calc.abs(x), range(-5, 5))
#graph($ln(x)$, x => calc.ln(x), range(1, 5))
#graph($e^x$, x => calc.exp(x), range(0, 5))
\

== Trig Functions
\
#let trig_x = lq.linspace(-2 * calc.pi, 2 * calc.pi)

#graph($sin(x)$, x => calc.sin(x), trig_x, smooth: false)
#graph($cos(x)$, x => calc.cos(x), trig_x, smooth: false)
#graph($tan(x)$, x => calc.tan(x), trig_x, smooth: false)
#graph($cot(x)$, x => 1 / calc.tan(x), trig_x, smooth: false)
#graph($csc(x)$, x => 1 / calc.sin(x), trig_x, smooth: false)
#graph($sec(x)$, x => 1 / calc.cos(x), trig_x, smooth: false)
\

== Inverse Trig Functions
\
#let arcsin_x = lq.linspace(-1, 1)
#let arctan_x = lq.linspace(-5, 5)
#let arcsec_x = lq.linspace(-5, -1) + lq.linspace(1, 5)

#graph($arcsin(x)$, x => calc.asin(x).rad(), arcsin_x, ylim: (-4, 4), smooth: false)
#graph($arccos(x)$, x => calc.acos(x).rad(), arcsin_x, ylim: (-4, 4), smooth: false)
#graph($arctan(x)$, x => calc.atan(x).rad(), arctan_x, ylim: (-4, 4), smooth: false)
#graph($arccot(x)$, x => calc.pi / 2 - calc.atan(x).rad(), arctan_x, ylim: (-4, 4), smooth: false)
#graph($arccsc(x)$, x => calc.asin(1 / x).rad(), arcsec_x, ylim: (-4, 4), smooth: false)
#graph($arcsec(x)$, x => calc.acos(1 / x).rad(), arcsec_x, ylim: (-4, 4), smooth: false)
\

== Polynomials
\
- Leading Coefficient Test: The leading coefficient test helps us evaluate the end behaviour of a function. We look at the leading term in a polynomial, that is the term with the highest exponent and we look at its exponent and coefficient. We check if the exponent is even ($x^2, x^4, "etc"$) or odd ($x^3, x^5 "etc"$) and if the coefficient is positive or negative.
#table(
  columns: (auto, auto, auto),
  [*Exponent*], [*Coefficient*], [*Behaviour*],
  [Odd], [Positive], [Drops down on the left, rises on the right \ #graph($x^3$, x => calc.pow(x, 3), range(-5, 5))],
  [Odd],
  [Negative],
  [Rises on the left and drops down on the right \ #graph($-x^3$, x => -calc.pow(x, 3), range(-5, 5))],

  [Even], [Positive], [Rises on both sides \ #graph($x^2$, x => x * x, range(-5, 5))],
  [Even], [Negative], [Drops down on both sides \ #graph($-x^2$, x => -x * x, range(-5, 5))],
)
\

- Find the zeroes: Find the values that makes the function equal to zero.
  This can be understood visually as x-intercepts. To do that we solve the function for x.
  - If a zero is listed odd times then the graph will cross the x-axis at that value. Ex.
    For the polynomial $x^2 + x - 2$ the roots are $(x - 1)(x + 2)$. So, this will pass the x-axis at $x = 1, -2$. \
    #graph($x^2 + x - 2$, x => x * x + x - 2, range(-5, 5))
  - If a zero is listed twice then the graph will touch the x-axis at that value. Ex. For the
    polynomial $x^4 - 3x^2 - 2x^2 + 12x + 8$ the roots are $(x + 2)(x - 1)(x - 2)^2$. So, this will pass the
    x-axis at $x = -2, 1$ and touch the x-axis at $x = 2$. \
    #graph(
      $x^4 - 3x^3 - 2x^2 + 12 x + 8$,
      x => calc.pow(x, 4) - 3 * calc.pow(x, 3) - 2 * x * x + 12 * x - 8,
      lq.linspace(-5, 5),
    )

  #note([
    As the value of the exponent in the factors increases, the graph tends to get less steeper near that point. Ex. \
    #lq.diagram(
      width: 7cm,
      height: 4cm,
      xlim: (-5, 5),
      ylim: (-10, 10),
      legend: (
        position: top + left,
        fill: rgb(colors.dark),
      ),
      lq.plot(
        color: rgb(colors.blue),
        smooth: true,
        lq.linspace(-5, 5),
        lq.linspace(-5, 5).map(x => calc.pow(x - 1, 3)),
        label: [$(x - 1)^3$],
      ),
      lq.plot(
        color: rgb(colors.green),
        smooth: true,
        lq.linspace(-5, 5),
        lq.linspace(-5, 5).map(x => calc.pow(x - 1, 5)),
        label: [$(x - 1)^5$],
      ),
      lq.plot(
        color: rgb(colors.purple),
        smooth: true,
        lq.linspace(-5, 5),
        lq.linspace(-5, 5).map(x => calc.pow(x - 1, 7)),
        label: [$(x - 1)^7$],
      ),
    )
  ])
