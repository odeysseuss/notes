#import "@preview/lilaq:0.6.0" as lq
#import "/utils/template.typ": *
#import "/utils/math.typ": *

#show: conf.with(title: "Functions")

#show: lq.set-grid(stroke: rgb(colors.grey))
#show: lq.set-spine(stroke: rgb(colors.light))
#show lq.selector(lq.legend): set text(size: 0.65em)

#let graph(title, func, x, xlim: (-5, 5), ylim: (-5, 5), smooth: true) = {
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

= Functions
\
== Definition
\
- A function is a relation from a set $X$ to a set $Y$ where every element $x in X$ is mapped
  to exactly one element $y in Y$.
- Multiple inputs can map to the same output, but a single input can never map to multiple
  outputs. As a helpful reminder, consider $f(x) = x^2$: both inputs $-2$ and $2$ map to the
  same output $4$.
- *Vertical Line Test:* Determines whether a given graph represents a function. Draw vertical
  lines across the graph; if any vertical line intersects the graph more than once, it is
  not a function.
\

== Domain, Codomain and Range
- *Domain:* The set of all possible input values that produces real output values.
- *Codomain:* The set of all possible theoretical output values a function can produce.
- *Range:* The set of actual output values a function produces.
\
== Finding the Domain
- To find the domain we find the restricted input values, these are the input values
  that do not produce any real value.
  #table(
    columns: (7em, 8em, auto),
    [*Pattern*], [*Restrictions*], [*Example*],
    [With fractions],
    [$"Denominator" eq.not 0$],
    [$
      & f(x) = frac(1, x - 3) \
      & => x - 3 eq.not 0 \
      & => x eq.not 3 \
      & therefore "The domain of f(x) is" (-infinity, 3) union (3, infinity)
    $],

    [With even roots $sqrt("")$, $""^2sqrt("")$, $""^4sqrt("")$],
    [$"Radicand" >= 0$],
    [$
      & f(x) = sqrt(x - 3) \
      & => x - 3 >= 0 \
      & => x >= 3 \
      & therefore "The domain of f(x) is" [3, infinity)
    $],

    [With logarithms $log_b ()$, $ln()$],
    [$"Argument" > 0$],
    [$
      & f(x) = ln(x - 5) \
      & => x - 5 > 0 \
      & => x > 5 \
      & therefore "The domain of f(x) is" (5, infinity)
    $],
  )
\
== Function Operations
\
#block([
  #show math.equation.where(block: true): set align(left)
  - $ (f + g)(x) = f(x) + g(x) $
  - $ (f - g)(x) = f(x) - g(x) $
  - $ (f dot g)(x) = f(x) dot g(x) $
  - $ (f"/"g)(x) = frac(f(x), g(x)) $
])
\
== Composite Functions
- $ (f circle.small g)(x) = f(g(x)) $
- Domain of $(f circle.small g)$: All $x$ in the domain of $g$ such that $g(x)$
  is in the domain of $f$.
\
== Piecewise Functions
\
- Functions defined by different rules over different sub-domains.
#ex("")
$
  f(x) = cases(
    x + 2 quad "if" x < 0,
    x^2 quad "if" x >= 0,
  )
$

== One to One (Injective) Function
\
- A function is one to one if every input in the domain produces a unique output.
- A function is one to one if and only if $f(a) = f(b)$ implies that $a = b$.
- *Horizontal Line Test:* Draw horizontal lines across different heights of the functions
  graph. If any horizontal line intersects the graph more than once, it's not a one to one
  function and if every Horizontal line intersects the graph at exactly one point then it is
  a one to one function.
\
== Onto (Surjective) Function
\
- A function is onto if the codomain of the function matches the range of a function (Every
  potential output hit).
\
== Bijective Function
\
- Both One to One and Onto
\
== Inverse Function
\
- An inverse function is a function that "reverses" or "undoes" the operation of the
  corresponding function.
- *Two-Sided Inverse:* A function $f^{-1}$ is a true two-sided inverse of $f$ if it undoes $f$
  regardless of the order of composition:
  $
    (f^(-1) circle.small f)(x) = x quad "for all" x in X \
    (f circle.small f^(-1))(y) = y quad "for all" y in Y
  $
- A function has a two-sided inverse if and only if it is *bijective* (both one-to-one and onto):
  - *Left Inverse only* ($f^(-1) circle.small f = "id"$): Guarantees the function is *injective* (one-to-one).
  - *Right Inverse only* ($f circle.small f^(-1) = "id"$): Guarantees the function is *surjective* (onto).
- A function and its inverse function share the same points, but with swapped coordinates.
  So, $(-2, 1)$ becomes $(1, -2)$.
- The domain of $f(x)$ becomes the range of $f^(-1)(x)$ and the range of $f(x)$ becomes the
  domain of $f^(-1)(x)$.
- The graph of $f^(-1)(x)$ is a reflection of the graph of $f(x)$ across the line $y = x$.
- To find the inverse function algebraically:
  + Replace $f(x)$ with $y$.
  + Swap $x$ and $y$ in the equation.
  + Solve for $y$ in the new equation.
  + Replace $y$ with $f^(-1)(x)$.
\

== Even/Odd
\
- *Even Functions:* Symmetric about the y-axis (Mirror image about the y-axis).
  $ f(-x) = f(x) $
  #graph($cos x$, x => calc.cos(x), lq.linspace(-2 * calc.pi, 2 * calc.pi))
- *Odd Functions:* Symmetric about the origin (Remains same when rotated $180 degree$ across the origin).
  $ f(-x) = -f(x) $
  #graph($sin x$, x => calc.sin(x), lq.linspace(-2 * calc.pi, 2 * calc.pi))
\

= Transformation of functions
\

== Translations
\
#let quad_x = lq.linspace(-5, 5)

- $f(x) = x^2$ -> Parent Function \
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

- $f(x) = sqrt(x)$ -> Parent Function \
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
#let abs_x = lq.linspace(-4, 4)

- $f(x) = abs(x)$ -> Parent Function \
  #graph($abs(x)$, x => calc.abs(x), abs_x)

- $a dot f(x)$ -> $a > 1$, Graph is stretched vertically
  #graph($2 dot abs(x)$, x => 2 * calc.abs(x), abs_x)
- $a dot f(x)$ -> $0 < a < 1$, Graph is shrunk vertically
  #graph($frac(1, 2) dot abs(x)$, x => 1 / 2 * calc.abs(x), abs_x)
- $f(a dot x)$ -> $a > 1$, Graph is shrunk horizontally
  #graph($abs((2 dot x))$, x => calc.abs(2 * x), abs_x)
- $f(a dot x)$ -> $0 < a < 1$, Graph is stretched horizontally
  #graph($abs(frac(1, 2) dot x)$, x => calc.abs(1 / 2 * x), abs_x)
\

= Graphs
\

== Common Graphs
\
#graph($2x$, x => 2 * x, lq.linspace(-5, 5))
#graph($1/x$, x => 1 / x, lq.linspace(-5, 1) + lq.linspace(1, 5), smooth: false)
#graph($x^2$, x => x * x, lq.linspace(-5, 5))
#graph($1/x^2$, x => 1 / calc.pow(x, 2), lq.linspace(-5, 1) + lq.linspace(1, 5), smooth: false)
#graph($sqrt(x)$, x => calc.sqrt(x), lq.linspace(0, 5))
#graph($abs(x)$, x => calc.abs(x), lq.linspace(-5, 5))
#graph($ln(x)$, x => calc.ln(x), lq.linspace(0.01, 5))
#graph($e^x$, x => calc.exp(x), lq.linspace(0, 5))
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

#graph($arcsin(x)$, x => calc.asin(x).rad(), arcsin_x, smooth: false)
#graph($arccos(x)$, x => calc.acos(x).rad(), arcsin_x, smooth: false)
#graph($arctan(x)$, x => calc.atan(x).rad(), arctan_x, smooth: false)
#graph($arccot(x)$, x => calc.pi / 2 - calc.atan(x).rad(), arctan_x, smooth: false)
#graph($arccsc(x)$, x => calc.asin(1 / x).rad(), arcsec_x, smooth: false)
#graph($arcsec(x)$, x => calc.acos(1 / x).rad(), arcsec_x, smooth: false)
\

== Polynomial Functions
\
- Leading Coefficient Test: The leading coefficient test helps us evaluate the end behaviour of a function.
  We look at the leading term in a polynomial, that is the term with the highest exponent and we look at its
  exponent and coefficient. We check if the exponent is even ($x^2, x^4, "etc"$) or odd ($x^3, x^5 "etc"$)
  and if the coefficient is positive or negative.
#table(
  columns: (auto, auto, auto),
  [*Exponent*], [*Coefficient*], [*Behaviour*],
  [Odd],
  [Positive],
  [Drops down on the left, rises on the right \ #graph($x^3$, x => calc.pow(x, 3), lq.linspace(-5, 5))],

  [Odd],
  [Negative],
  [Rises on the left and drops down on the right \ #graph($-x^3$, x => -calc.pow(x, 3), lq.linspace(-5, 5))],

  [Even], [Positive], [Rises on both sides \ #graph($x^2$, x => x * x, lq.linspace(-5, 5))],
  [Even], [Negative], [Drops down on both sides \ #graph($-x^2$, x => -x * x, lq.linspace(-5, 5))],
)
\

- Find the Zeroes: Find the values that makes the function equal to zero.
  This can be understood visually as x-intercepts. To do that we solve the function for x.
  - If a zero is listed odd times then the graph will cross the x-axis at that value. Ex.
    For the polynomial $x^2 + x - 2$ the roots are $(x - 1)(x + 2)$. So, this will pass the x-axis at $x = -2, 1$. \
    #graph($x^2 + x - 2$, x => x * x + x - 2, lq.linspace(-5, 5))
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
      ylim: (-5, 5),
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
\


== Rational Functions
\
- Find the Asymptotes:
  + Vertical Asymptotes: The vertical asymptotes are the values that aren't in the domain.
    To find these we can set the denominator equal to zero and solve for it. Ex.
    $
      & f(x) = frac(x, x^2 - 9) \
      & => x^2 - 9 = 0 \
      & => (x + 3)(x - 3) = 0 \
      & => x = -3, 3 \
      & therefore "The vertical asymptotes are", x = -3 & x = 3
    $
  + Horizontal Asymptotes: To find the horizontal asymptotes we have to take the numerator
    and denominator to their standard polynomial form $(frac(a x^m, b x^n))$.
    + If $n > m$, $y = 0$ is a horizontal asymptote.
    + If $n < m$, no horizontal asymptote. But, there can be a slant asymptote.
    + If $n = m$, $y = a/b$ is a horizontal asymptote.
    $
      & f(x) = frac(x, x^2 - 9) \
      & => m = 1, n = 2 \
      & therefore y = 0 "is a Horizontal asymptote"
    $
  + Slant Asymptotes: If there is no horizontal asymptote ($m > n$), only then there can
    be a possibility of a slant. In the form $frac(a x^m, b x^n)$ when $m > n$, there
    can be a slant if and only if the degree of the numerator exceeds the degree of
    denominator my one ($m - n = 1$). To find the slant we need to do long division. Ex.
    #table(
      stroke: none,
      columns: 2,
      [],
      table.vline(),
      $x + 2$,
      table.hline(),
      $x + 3$, $x^2 + 5x + 6$,
      table.hline(),
      [], $-(x^2 + 3x + 0)$,
      table.hline(),
      [], $0 + 2x + 6$,
      [], $-(0 + 2x + 6)$,
      table.hline(),
      [], $0$,
    )
    $
      therefore y = x + 2 "is a slant asymptote"
    $
  #note(
    [While a function can have multiple vertical asymptotes, it can only have a single horizontal or slant asymptote.],
  )
- Plot Points: Next, we need only to plot a few points to find the behaviour of the
  function as it approches the asymptotes from each side. \
  #graph(
    $frac(x, x^2 - 9)$,
    x => x / (x * x - 9),
    lq.linspace(-5, -3.05) + lq.linspace(-2.95, 2.95) + lq.linspace(3.05, 5),
  )

#note([
  If a factor $(x - c)$ cancels out completely from both the numerator and denominator, there is a hole at
  $x = c$, rather than a vertical asymptote.
  #ex("")
  $
    f(x) & = frac(x^2 - 9, x - 3) \
         & = frac((x + 3)(x - 3), x - 3) \
         & = x + 3 \
         & therefore "There is a hole at" x = 3 "or" (3, 6)
  $
])
\
== Exponential Functions
\
- For the standard exponential form $y = a^x$,
  + If $a > 1$ and $x$ is positive or if $a < 1$ and $x$ is negative, the function will rise upto the right.
  #graph($2^x$, x => calc.pow(2, x), lq.linspace(-5, 5))
  + If $a < 1$ and $x$ is positive or if $a > 1$ and $x$ is negative, the function will dip down to the right.
  #graph($2^(-x)$, x => 1 / calc.pow(2, x), lq.linspace(-5, 5))
  #note([
    In both cases, the domain is all real numbers $(-infinity, infinity)$ and range is all real
    numbers greater than zero $(0, infinity)$
  ])
