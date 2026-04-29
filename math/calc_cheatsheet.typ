#import "/utils/math.typ": *

#set page(numbering: "1")
#set par(leading: 1.2em)
#set text(font: "Maple Mono NF")
#show math.equation: set text(font: "Fira Math")
#show math.equation: set align(left)

#align(center)[#underline(text(
    weight: "bold",
    size: 22pt,
    fill: blue,
  )[Calculus])
]
\

#align(center)[#underline(text(
    weight: "bold",
    size: 18pt,
  )[Differentiation])
]
\

== Indeterminate forms:
- $ frac(0, 0), frac(infinity, infinity), 0 times infinity, infinity^0, infinity - infinity, 1^infinity, 0^0 $
\

== Limits:
- $ lim_(x->0) frac(sin x, x) = 1 $
- $ lim_(x->0) frac(tan x, x) = 1 $
- $ lim_(x->a) frac(x^n - a^n, x - a) = n a^(n-1) quad (a > 0) $
- $ lim_(x->0) frac(1 - cos x, x) = 0 $
- $ lim_(x->0) frac(1 - cos x, x^2) = frac(1, 2) $
- $ lim_(n->infinity) (1 + frac(1, n))^n = e $
\

== Common Properties:
- $ ddx(c) = 0 $
- $ ddx(c dot f(x)) = c dot f acute (x) $
- $ ddx(f(x) plus.minus g(x)) = f acute (x) plus.minus g acute (x) $
\

== Product and Quotient Rule:
- $ ddx(f(x) dot g(x)) = f acute (x) dot g(x) + f(x) dot g acute (x) $
- $ ddx(frac(f(x), g(x))) = frac([f acute (x) dot g(x)] - [f(x) dot g acute (x)], [g(x)]^2) $
\

== Chain Rule:
- $ ddx[f(g(x))] = f acute (g(x)) dot g acute (x) $
\

== Power Rule:
- $ ddx(x^n) = n x^(n-1) $
\

== Common Derivatives:
+ $ ddx(x) = 1 $
+ $ ddx(frac(1, x)) = -frac(1, x^2) $
+ $ ddx(sqrt(x)) = frac(1, 2 sqrt(x)) $
+ $ ddx(c^x) = c^x ln c quad (c > 0) $
+ $ ddx(e^x) = e^x $
+ $ ddx(e^(m x)) = m e^(m x) $
+ $ ddx(ln abs(x)) = frac(1, x) $
+ $ ddx(log_a x) = frac(1, x ln a) quad (a > 0, a eq.not 1) $
\

== Derivatives of trig functions:
+ $ ddx(sin x) = cos x $
+ $ ddx(cos x) = -sin x $
+ $ ddx(tan x) = sec^2 x $
+ $ ddx(cot x) = -csc^2 x $
+ $ ddx(sec x) = sec x tan x $
+ $ ddx(csc x) = -csc x cot x $
\

== Derivatives of inverse trig functions:
+ $ ddx(arcsin x) = frac(1, sqrt(1 - x^2)) $
+ $ ddx(arccos x) = frac(-1, sqrt(1 - x^2)) $
+ $ ddx(arctan x) = frac(1, 1 + x^2) $
+ $ ddx(arccot x) = frac(-1, 1 + x^2) $
+ $ ddx(arcsec x) = frac(1, abs(x) sqrt(x^2 - 1)) $
+ $ ddx(arccsc x) = frac(-1, abs(x) sqrt(x^2 - 1)) $
\

== Derivative of hyperbolic functions:
+ $ ddx(sinh x) = cosh x $
+ $ ddx(cosh x) = sinh x $
+ $ ddx(tanh x) = sech^2 x $
+ $ ddx(coth x) = -csch^2 x, (x eq.not 0) $
+ $ ddx(sech x) = -sech x tanh x $
+ $ ddx(csch x) = -csch x coth x $
\

== Derivative of inverse hyperbolic functions:
+ $ ddx(arcsinh x) = frac(1, sqrt(x^2 + 1)) $
+ $ ddx(arccosh x) = frac(1, sqrt(x^2 -1)) quad (x > 1) $
+ $ ddx(arctanh x) = frac(1, 1 - x^2 quad abs(x) < 1) $
+ $ ddx(arccoth x) = frac(1, 1 - x^2), quad (abs(x) > 1) $
+ $ ddx(arcsech x) = frac(-1, x sqrt(1 - x^2)) quad (0 < x eq.lt 1) $
+ $ ddx(arccsch x) = frac(-1, abs(x) sqrt(1 + x^2)) quad (x eq.not 0) $
\

== Series:
\
- *Taylor Series:*
  - $ f(x) = sum_(n=0)^infinity frac(f^((n)) (a), n!) (x - a)^n $
- *Maclaurin Series:*
  - $ f(x) = sum_(n=0)^infinity frac(f^((n)) (0), n!) x^n $
\

+ $ e^x = 1 + frac(x, 1!) + frac(x^2, 2!) + frac(x^3, 3!) + ... $
+ $ e^(-x) = 1 - frac(x, 1!) + frac(x^2, 2!) - frac(x^3, 3!) + ... $
+ $ a^x = 1 + frac(x ln a, 1!) + frac((x ln a)^2, 2!) + frac((x ln a)^3, 3!) + ... $
+ $ ln (1 + x) = x - frac(x^2, 2) + frac(x^3, 3) - frac(x^4, 4) + ... , (-1 < x eq.lt 1) $
+ $ ln (1 - x) = -x - frac(x^2, 2) - frac(x^3, 3) - frac(x^4, 4) + ... , (-1 eq.lt x < 1) $
+ $ sin x = x - frac(x^3, 3!) + frac(x^5, 5!) - frac(x^7, 7!) + ... $
+ $ cos x = 1 - frac(x^2, 2!) + frac(x^4, 4!) - frac(x^6, 6!) + ... $
\

#pagebreak()

#align(center)[#underline(text(
    weight: "bold",
    size: 18pt,
  )[Integration])
]
\

== Common Properties:
- $ integral c d x = c x + C $
- $ integral c dot f(x) d x = c integral f (x) d x $
- $ integral (f(x) plus.minus g(x)) d x = integral f(x) d x plus.minus integral g(x) d x $
\

== Power Rule:
- $ integral x^n d x = frac(x^(n + 1), n + 1) + C, (n eq.not -1) $
\

== Common Integrals:
+ $ integral frac(1, x) d x = ln abs(x) + C $
+ $ integral frac(1, sqrt(x)) d x = 2 sqrt(x) + C, (x > 0) $
+ $ integral e^x d x = e^x + C $
+ $ integral e^(m x) d x = frac(1, m) e^(m x) + C $
+ $ integral a^x d x = frac(a^x, ln a) + C, (a > 0, a eq.not 1) $
+ $ integral ln x d x = x ln x - x + C, (x > 0) $
\

== Integral of trig functions:
+ $ integral sin x d x = -cos x + C $
+ $ integral cos x d x = sin x + C $
+ $ integral tan x d x = ln abs(sec x) + C $
+ $ integral cot x d x = ln abs(sin x) + C $
+ $ integral sec x d x = ln abs(sec x + tan x) + C $
+ $ integral csc x d x = ln abs(csc x - cot x) + C = ln abs(tan frac(x, 2)) + C $
\

== Integral of inverse trig functions:
+ $ integral arcsin x d x = x arcsin x + sqrt(1 - x^2) + C $
+ $ integral arccos x d x = x arccos x - sqrt(1 - x^2) + C $
+ $ integral arctan x d x = x arctan x - frac(1, 2) ln (1 + x^2) + C $
+ $ integral arccot x d x = x arccot x + frac(1, 2) ln (1 + x^2) + C $
+ $ integral arcsec x d x = x arcsec x - ln abs(x + sqrt(x^2 - 1)) + C $
+ $ integral arccsc x d x = x arccsc x + ln abs(x + sqrt(x^2 - 1)) + C $
\

== Integral of hyperbolic functions:
+ $ integral sinh x d x = cosh x + C $
+ $ integral cosh x d x = sinh x + C $
+ $ integral tanh x d x = ln (cosh x) + C $
+ $ integral coth x d x = ln abs(sinh x) + C $
+ $ integral sech x d x = arctan(sinh x) + C $
+ $ integral csch x d x = ln abs(tanh frac(x, 2)) + C $
\

== Integral of inverse hyperbolic functions:
+ $ integral arcsinh x d x = x arcsinh x - sqrt(x^2 + 1) + C $
+ $ integral arccosh x d x = x arccosh x - sqrt(x^2 - 1) + C $
+ $ integral arctanh x d x = x arctanh x + frac(1, 2) ln abs(1 - x^2) + C $
+ $ integral arccoth x d x = x arccoth x + frac(1, 2) ln abs(x^2 - 1) + C $
+ $ integral arcsech x d x = x arcsech x + 2 arctan sqrt(frac(1 - x, 1 + x)) + C $
+ $ integral arccsch x d x = x arccsch x + arcsinh abs(x) + C $
\

== Advanced Integrals:
+ $ integral frac(1, a^2 + x^2) d x = frac(1, a) arctan frac(x, a) + C $
+ $ integral frac(1, a^2 - x^2) d x = frac(1, 2a) ln abs(frac(a + x, a - x)) + C $
+ $ integral frac(1, x^2 - a^2) d x = frac(1, 2a) ln abs(frac(x - a, x + a)) + C $
+ $ integral frac(1, sqrt(a^2 - x^2)) d x = arcsin frac(x, a) + C $
+ $ integral frac(1, sqrt(x^2 - a^2)) d x = ln abs(x + sqrt(x^2 - a^2)) + C = arccosh frac(x, a) + C, (x > a) $
+ $ integral frac(1, sqrt(x^2 + a^2)) d x = ln abs(x + sqrt(x^2 + a^2)) + C = arcsinh frac(x, a) + C $
+ $ integral sqrt(x^2 + a^2) d x = frac(x sqrt(x^2 + a^2), 2) + frac(a^2, 2) arcsinh frac(x, a) + C $
+ $ integral sqrt(x^2 - a^2) d x = frac(x sqrt(x^2 - a^2), 2) - frac(a^2, 2) arccosh frac(x, a) + C, (x > a) $
+ $ integral sqrt(a^2 - x^2) d x = frac(x sqrt(a^2 - x^2), 2) + frac(a^2, 2) arcsin frac(x, a) + C $
\

== Integration by Parts:
- $ integral u d v = u v - integral v d u $
- $
    integral u dot v d x = u integral v d x - integral [ddx(u) integral v d x ] d x
  $
