#import "/utils/template.typ": *
#import "/utils/math.typ": *

#show: conf.with(title: "Calculus Problem Set")

= Limits

== Algebraic & Radical Forms

*_Evaluate the Following Limits:_*

#q([ $ lim_(x->0) frac(sqrt(1 + m x) - sqrt(1 - n x), x) $ ])
#q([ $ lim_(x->2) frac(sqrt(x - 2) + sqrt(x) - sqrt(2), sqrt(x^2 - 4)) $ ])
#q([ $ lim_(x->a) frac(x^(3/2) - a^(3/2), sqrt(x) - sqrt(a)) $ ])
#q([ $ lim_(x->1) frac(x - 1, sqrt(x) - 1) $ ])

== Trigonometric Forms

*_Evaluate the Following Limits:_*

#q([ $ lim_(x->pi/2) (pi/2 - x) tan x $ ])
#q([ $ lim_(x->pi/2) frac(1 - sin x, (pi/2 - x)^2) tan x $ ])
#q([ $ lim_(x->0) frac(cos(sin x) - cos x, x^4) $ ])
#q([ $ lim_(x->pi) frac(1 + cos x, sin x) $ ])
#q([ $ lim_(x->2) frac(cos(pi/2), x - 2) $ ])
#q([ $ lim_(x->pi/2) frac(1 - sin x, cos x) $ ])
#q([ $ lim_(x->0) frac(tan x - sin x, sin^3 x) $ ])
#q([ $ lim_(x->0) frac(arctan x, x) $ ])
#q([ $ lim_(x->0) frac(2, sqrt(2 + sqrt(2 + 2 cos x))) $ ])
#q([ $ lim_(x->0) frac(cos 5 x - cos x, x^2) $ ])
#q([ $ lim_(x->0) frac(sin(x^2), x) $ ])
#q([ $ lim_(x->0) frac(x, sqrt(1 - cos x)) $ ])
#q([ $ lim_(x->0) frac(sin 5 x - sin 3 x, sin 3 x - sin 2 x) $ ])
#q([ $ lim_(x->0) frac(1 - cos 7 x, 3 x^2) $ ])
#q([ $ lim_(x->0) frac(x - sin x, x^3) $ ])
#q([ $ lim_(x->0) frac(x(cos 2 x + cos 3 x), 2 sin x) $ ])
#q([ $ lim_(x->0) frac(tan m x - sin m x, x^3) $ ])

== Exponential & Logarithmic Forms

*_Evaluate the Following Limits:_*

#q([ $ lim_(x->1) (frac(1, ln x) - frac(1, x - 1)) $ ])
#q([ $ lim_(x->0) frac(3^(2 x) - 2^(3 x), x) $ ])
#q([ $ lim_(x->2) frac(x^2 - 2^x, x^x - 4) $ ])
#q([ $ lim_(x->0) frac(e^x - 2 e^(3 x) + e^(5 x), x^2) $ ])
#q([ $ lim_(x->0) frac(e^x - 1, e^(2 x) - 1) $ ])
#q([ $ lim_(x->1) (frac(1, x - 1) - (1, ln x)) $ ])
#q([ $ lim_(x->0) frac(e^x + e^(-x) - 2, x) $ ])
#q([ $ lim_(x->0) frac(e^x - e^(-x) - 2 x, x - sin x) $ ])
#q([ $ lim_(x->0) frac(sin x - ln(e^x cos x), x sin x) $ ])
#q([ $ lim_(x->0) frac(3^x - e^(-x) - 2 x ln 2, x - sin x) $ ])
#q([ $ lim_(x->0) frac(2 - sqrt(x + 4), sin 2 x) $ ])
#q([ $ lim_(x->0) frac(ln(1 - x/4) - (1 - x)^(1/4) + 1, x^2) $ ])
#q([ $ lim_(x->0) frac(e^(x^2) - cos x, x^2) $ ])
#q([ $ lim_(x->0) frac(1 - e^(2 x), ln(1 - x)) $ ])

== Indeterminate Power Forms ($0^0, 1^oo, oo^0$)

*_Evaluate the Following Limits:_*

#q([ $ lim_(x->pi/2) (sin x)^(tan x) $ ])
#q([ $ lim_(x->1) (log_5 5 x^2)^(frac(log_x 5, 2)) $ ])
#q([ $ lim_(x->0) (1 + 5 x)^frac(1 + 5 x, 10 x) $ ])
#q([ $ lim_(x->0) (1 + 5 x)^frac(3 x + 2, x) $ ])
#q([ $ lim_(x->infinity) (frac(x, 1 + x))^x $ ])
#q([ $ lim_(x->infinity) (1 + 1/x)^(x + 3) $ ])

== Limits at Infinity

*_Evaluate the Following Limits:_*

#q([ $ lim_(x->infinity) sqrt(x^2 + 1) - x $ ])
#q([ $ lim_(x->infinity) b^x sin (frac(a, b^x)) $ ])
#q([ $ lim_(n->infinity) frac(e^(x^2), n e^x) $ ])
#q([ $ lim_(x->infinity) frac(x, x^2 + 1) $ ])
#q([ $ lim_(x->infinity) frac(e^(1/x^2) - 1, arctan(x^2) - pi) $ ])
#q([ $ lim_(x->infinity) sqrt(x + sqrt(x)) - sqrt(x) $ ])
#q([ $ lim_(x->infinity) frac(5^(x + 1) + 7^(x + 1), 5^x - 7^x) $ ])
#q([ $ lim_(x->infinity) [2/pi (x + 1) arccos(1/x) - x] $ ])

== Riemann Sums

*_Evaluate the Following Limits:_*

#q([ $ lim_(n->infinity) 1/n^4 sum_(r=1)^n r^3 $ ])

== One Sided Limits

*_Evaluate the Following Limits:_*

#q([ $ lim_(x->0^+) frac(sin x, x(1 + cos x)) $ ])

== Squeeze Theorem

*_Evaluate the Following Limits:_*

#q([ $ lim_(x->infinity) frac(3 x^2 - sin 2 x, x^2 + 5) $ ])

== Finding Unknown Parameters

*_Find the Unknown Terms:_*

#q([ $ lim_(x->0) frac(sqrt(1 + 3 x) - sqrt(1 - c x), c x) = 1 $ ])
#q([ $ lim_(x->0) frac(a e^x - b cos x + e^(-x), sin x) = 2 $ ])
#q([ $ lim_(x->0) frac(a sin x - 3 x, 5 x) = 0 $ ])
#q([ $ lim_(x->0) frac(2 e^x - 2 e^(-4 x) + k x, x^2) = - 15 $ ])
#q([ $ lim_(x->0) frac(2(b - sqrt(b^2 - x^2)), x^2) = L $ ])
#q([ $ lim_(x->0) frac(2 e^x - 2 e^(-5 x) + a x, x^2) = L $ ])
