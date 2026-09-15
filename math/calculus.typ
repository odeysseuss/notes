#import "/utils/template.typ": *
#import "/utils/math.typ": *

#show: conf.with(title: "Calculus")
#show math.equation.where(block: true): set align(left)

= Limits

== Indeterminate Forms

- $
    frac(0, 0), frac(infinity, infinity), 0 times infinity, infinity^0, infinity - infinity, 1^infinity, 0^0
  $

== Properties of Limits

If $u = f(x)$ and $v = g(x)$,
- $ lim_(x->a) [u + v] = lim_(x->a) u + lim_(x->a) v $
- $ lim_(x->a) [u - v] = lim_(x->a) u - lim_(x->a) v $
- $ lim_(x->a) [u dot v] = lim_(x->a) u dot lim_(x->a) v $
- $ lim_(x->a) [u / v] = frac(lim_(x->a) u, lim_(x->a) v) $
- $ lim_(x->a) [v]^n = [lim_(x->a) v]^n $

== Evaluating Limits

- $ lim_(x->a) frac(x^m - a^m, x^n - a^n) = (frac(m, n)) dot a^(m-n) $
- $ lim_(x->a) frac(x^n - a^n, x - a) = n a^(n-1) $
- $ lim_(x->0) frac(sin x, x) = 1 $
- $ lim_(x->0) frac(tan x, x) = 1 $
- $ lim_(x->0) frac(e^x-1, x) = 1 $
- $ lim_(x->0) frac(ln (1+x), x) = 1 $
- $ lim_(x->0) (1 + x)^(frac(1, x)) = e $
- $ lim_(x->infinity) (1 + frac(1, x))^x = e $
- *L'Hôpital's Rule:* If the limit is in $0/0$ or $infinity/infinity$ indeterminate form,
$ lim_(x->a) frac(f(x), g(x)) = lim_(x->a) frac(f prime (x), g prime (x)) $

= Differentiation

== First Principle

- $ ddx(f(x)) = lim_(h->0) frac(f(x+h) - f(x), h) $

== Common Properties

- $ ddx(c) = 0 $
- $ ddx(c dot f(x)) = c dot f prime (x) $
- $ ddx(f(x) plus.minus g(x)) = f prime (x) plus.minus g prime (x) $

== Product and Quotient Rule

If $u = f(x)$ and $v = g(x)$,
- $ ddx(u dot v) = u dot ddx(v) + v dot ddx(u) $
- $
    ddx(frac(u, v)) = frac([v dot ddx(u)] - [u dot ddx(v)], v^2)
  $

== Chain Rule

- $ ddx[f(g(x))] = f prime (g(x)) dot g prime (x) $

== Power Rule

- $ ddx(x^n) = n x^(n-1) $

== Common Derivatives

+ $ ddx(x) = 1 $
+ $ ddx(frac(1, x)) = -frac(1, x^2) $
+ $ ddx(sqrt(x)) = frac(1, 2 sqrt(x)) $
+ $ ddx(a^x) = a^x ln a $
+ $ ddx(e^x) = e^x $
+ $ ddx(e^(m x)) = m e^(m x) $
+ $ ddx(ln abs(x)) = frac(1, x) $
+ $ ddx(log_a x) = frac(1, x ln a) $

== Derivatives of Trig Functions

+ $ ddx(sin x) = cos x $
+ $ ddx(cos x) = -sin x $
+ $ ddx(tan x) = sec^2 x $
+ $ ddx(cot x) = -csc^2 x $
+ $ ddx(sec x) = sec x tan x $
+ $ ddx(csc x) = -csc x cot x $

== Derivatives of Inverse Trig Functions

+ $ ddx(arcsin x) = frac(1, sqrt(1 - x^2)) $
+ $ ddx(arccos x) = frac(-1, sqrt(1 - x^2)) $
+ $ ddx(arctan x) = frac(1, 1 + x^2) $
+ $ ddx(arccot x) = frac(-1, 1 + x^2) $
+ $ ddx(arcsec x) = frac(1, abs(x) sqrt(x^2 - 1)) $
+ $ ddx(arccsc x) = frac(-1, abs(x) sqrt(x^2 - 1)) $

== Derivatives of Hyperbolic Functions

+ $ ddx(sinh x) = cosh x $
+ $ ddx(cosh x) = sinh x $
+ $ ddx(tanh x) = sech^2 x $
+ $ ddx(coth x) = -csch^2 x $
+ $ ddx(sech x) = -sech x tanh x $
+ $ ddx(csch x) = -csch x coth x $

== Derivatives of Inverse Hyperbolic Functions

+ $ ddx(arcsinh x) = frac(1, sqrt(x^2 + 1)) $
+ $ ddx(arccosh x) = frac(1, sqrt(x^2 -1)) $
+ $ ddx(arctanh x) = frac(1, 1 - x^2) $
+ $ ddx(arccoth x) = frac(1, 1 - x^2) $
+ $ ddx(arcsech x) = frac(-1, x sqrt(1 - x^2)) $
+ $ ddx(arccsch x) = frac(-1, abs(x) sqrt(1 + x^2)) $

= Integration

== Common Properties

- $ integral c d x = c x + C $
- $ integral c dot f(x) d x = c integral f (x) d x $
- $
    integral (f(x) plus.minus g(x)) d x = integral f(x) d x plus.minus integral g(x) d x
  $

== Power Rule

- $ integral x^n d x = frac(x^(n + 1), n + 1) + C $

== Common Integrals

+ $ integral frac(1, x) d x = ln abs(x) + C $
+ $ integral frac(1, sqrt(x)) d x = 2 sqrt(x) + C $
+ $ integral e^x d x = e^x + C $
+ $ integral e^(m x) d x = frac(1, m) e^(m x) + C $
+ $ integral a^x d x = frac(a^x, ln a) + C $
+ $ integral ln x d x = x ln x - x + C $

== Integrals of Trig Functions

+ $ integral sin x d x = -cos x + C $
+ $ integral cos x d x = sin x + C $
+ $ integral tan x d x = ln abs(sec x) + C $
+ $ integral cot x d x = ln abs(sin x) + C $
+ $ integral sec x d x = ln abs(sec x + tan x) + C $
+ $
    integral csc x d x = ln abs(csc x - cot x) + C = ln abs(tan frac(x, 2)) + C
  $
+ $ integral sec^2 x d x = tan x + C $
+ $ integral csc^2 x d x = -cot x + C $
+ $ integral sec x tan x d x = sec x + C $
+ $ integral csc x cot x d x = -csc x + C $

== Integrals of Inverse Trig Functions

+ $ integral arcsin x d x = x arcsin x + sqrt(1 - x^2) + C $
+ $ integral arccos x d x = x arccos x - sqrt(1 - x^2) + C $
+ $ integral arctan x d x = x arctan x - frac(1, 2) ln abs(1 + x^2) + C $
+ $ integral arccot x d x = x arccot x + frac(1, 2) ln abs(1 + x^2) + C $
+ $ integral arcsec x d x = x arcsec x - ln abs(x + sqrt(x^2 - 1)) + C $
+ $ integral arccsc x d x = x arccsc x + ln abs(x + sqrt(x^2 - 1)) + C $

== Integrals of Hyperbolic Functions

+ $ integral sinh x d x = cosh x + C $
+ $ integral cosh x d x = sinh x + C $
+ $ integral tanh x d x = ln abs(cosh x) + C $
+ $ integral coth x d x = ln abs(sinh x) + C $
+ $ integral sech x d x = arctan(sinh x) + C $
+ $ integral csch x d x = ln abs(tanh frac(x, 2)) + C $

== Integrals of Inverse Hyperbolic Functions

+ $ integral arcsinh x d x = x arcsinh x - sqrt(x^2 + 1) + C $
+ $ integral arccosh x d x = x arccosh x - sqrt(x^2 - 1) + C $
+ $ integral arctanh x d x = x arctanh x + frac(1, 2) ln abs(1 - x^2) + C $
+ $ integral arccoth x d x = x arccoth x + frac(1, 2) ln abs(x^2 - 1) + C $
+ $
    integral arcsech x d x = x arcsech x + 2 arctan sqrt(frac(1 - x, 1 + x)) + C
  $
+ $ integral arccsch x d x = x arccsch x + arcsinh abs(x) + C $

== Advanced Integrals

+ $ integral frac(1, a^2 + x^2) d x = frac(1, a) arctan frac(x, a) + C $
+ $
    integral frac(1, a^2 - x^2) d x = frac(1, 2a) ln abs(frac(a + x, a - x)) + C
  $
+ $
    integral frac(1, x^2 - a^2) d x = frac(1, 2a) ln abs(frac(x - a, x + a)) + C
  $
+ $
    integral frac(1, sqrt(x^2 + a^2)) d x = ln abs(x + sqrt(x^2 + a^2)) + C = arcsinh frac(x, a) + C
  $
+ $
    integral frac(1, sqrt(x^2 - a^2)) d x = ln abs(x + sqrt(x^2 - a^2)) + C = arccosh frac(x, a) + C, (x > a)
  $
+ $ integral frac(1, sqrt(a^2 - x^2)) d x = arcsin frac(x, a) + C $
+ $
    integral sqrt(x^2 + a^2) d x & = frac(x sqrt(x^2 + a^2), 2) + frac(a^2, 2) ln abs(x + sqrt(x^2 + a^2)) + C \
                                 & = frac(x sqrt(x^2 + a^2), 2) + frac(a^2, 2) arcsinh frac(x, a) + C
  $
+ $
    integral sqrt(x^2 - a^2) d x & = frac(x sqrt(x^2 - a^2), 2) + frac(a^2, 2) ln abs(x + sqrt(x^2 - a^2)) + C \
                                 & = frac(x sqrt(x^2 - a^2), 2) - frac(a^2, 2) arccosh frac(x, a) + C
  $
+ $
    integral sqrt(a^2 - x^2) d x = frac(x sqrt(a^2 - x^2), 2) + frac(a^2, 2) arcsin frac(x, a) + C
  $
== Definite Integrals

- $ integral_a^b f(x) d x = [F(x)]_a^b = F(b) - F(a) $
- $ integral_a^b f(x) d x = - integral_b^a f(x) d x $
- $ integral_a^b f(x) d x = integral_a^b f(z) d z $
- $ integral_a^b f(x) d x = integral_a^b f(a + b - x) d x $
- $ integral_a^b f(x) d x = integral_(a - c)^(b - c) f(x + c) d x $
- $ integral_a^b f(x) d x = integral_(a + c)^(b + c) f(x - c) d x $
- $ integral_a^infinity f(x) d x = lim_(b->infinity) integral_a^b f(x) d x $

= Solving Integrals

== $u$-Substitution

- *Formula:*
  $ integral f(g(x)) dot g'(x) d x = integral f(u) dot d u quad "where " u = g(x), d u = g'(x) d x $
- *Definite Integrals:*
  $ integral_a^b f(g(x)) dot g'(x) d x = integral_(g(a))^(g(b)) f(u) dot d u $

== Integration by Parts

- *Standard Form:* $ integral u d v = u v - integral v d u $
- *Expanded Form:*
  $ integral u dot v d x = u integral v d x - integral [d/(d x)(u) integral v d x ] d x $
- *LIATE Priority Rule for $u$:*
  - #strong[L]ogarithmic ($ln x$)
  - #strong[I]nverse Trig ($arctan x$)
  - #strong[A]lgebraic ($x^2, 3x$)
  - #strong[T]rigonometric ($sin x$)
  - #strong[E]xponential ($e^x$)

== Trigonometric Substitution

- $ sqrt(a^2 - x^2) => x = a sin theta $
- $ sqrt(a^2 + x^2) => x = a tan theta $
- $ sqrt(x^2 - a^2) => x = a sec theta $

== Weierstrass Substitution (Tangent Half-Angle)

Used for rational functions of $sin x$ and $cos x$. Let $t = tan(x/2)$:
- $ d x = frac(2 d t, 1 + t^2) $
- $ sin x = frac(2 t, 1 + t^2) $
- $ cos x = frac(1 - t^2, 1 + t^2) $
- $ tan x = frac(2 t, 1 - t^2) $

== Shortcuts & Special Integrals

- $ integral frac(f prime (x), f(x)) d x = ln abs(f(x)) + C $
- $ integral frac(f prime (x), sqrt(f(x))) d x = 2 sqrt(f(x)) + C $
- $ integral e^(m x) [m f(x) + f prime (x)] d x = e^(m x) f(x) + C $
- $ integral e^(a x) sin(b x) d x = frac(e^(a x), a^2 + b^2) (a sin(b x) - b cos(b x)) + C $
- $ integral e^(a x) cos(b x) d x = frac(e^(a x), a^2 + b^2) (a cos(b x) + b sin(b x)) + C $

== Reduction Formulas

- $ integral sin^n x d x = -frac(sin^(n-1) x cos x, n) + frac(n-1, n) integral sin^(n-2) x d x $
- $ integral cos^n x d x = frac(cos^(n-1) x sin x, n) + frac(n-1, n) integral cos^(n-2) x d x $
- $ integral sec^n x d x = frac(sec^(n-2) x tan x, n-1) + frac(n-2, n-1) integral sec^(n-2) x d x $

#block([
  #show math.equation.where(block: true): set align(center)

  = Sequences & Series

  == Notations

  - *Sequence Notation:* $ {a_i}_(i=k)^n $
    - $i$: Index variable
    - $k$: Lower limit (default: $1$)
    - $n$: Upper limit (default: $infinity$)
    - $i, k, n in bb(Z)^+$

  - *Series Notation:* $ sum_(i=k)^n a_i $
    - $i$: Index variable
    - $k$: Lower limit (default: $1$)
    - $n$: Upper limit (default: $infinity$)
    - $i, k, n in ZZ^+$

  == Common Series

  - *Geometric Series:*
    $ sum_(i=1)^infinity a r^(i-1) = a + a r + a r^2 + ... $
    - *Converges:* $abs(r) < 1 \ (-1 < r < 1)$ with sum $S = a / (1 - r)$
    - *Diverges:* $abs(r) >= 1$

  - *P-Series:*
    $ sum_(n=1)^infinity 1/n^p = 1 + 1/2^p + 1/3^p + ... $
    - *Converges:* $p > 1$
    - *Diverges:* $p <= 1$
    - $f(x) = 1/x^p$ is positive, continuous, and decreasing on $[1, infinity)$

  - *Harmonic Series:*
    $ sum_(n=1)^infinity 1/n = 1 + 1/2 + 1/3 + ... $
    - Special P-Series where $p = 1$ (Always Diverges)

  - *Alternating Series:*
    $ sum_(n=1)^infinity (-1)^(n-1) a_n = a_1 - a_2 + a_3 - a_4 + ... $
    - *Converges if:*
      - $a_(n+1) <= a_n$ for all $n$ (Decreasing)
      - $lim_(n->infinity) a_n = 0$

  - *Alternating Harmonic Series:*
    $ sum_(n=1)^infinity (-1)^(n-1)/n = 1 - 1/2 + 1/3 - 1/4 + ... $
    - Special Alternating Series where $a_n = 1/n$ (Always Converges)

  - *Telescoping Series:*
    $ sum_(n=k)^infinity (a_n - a_(n+1)) = a_k - lim_(n->infinity) a_(n+1) $

  - *Power Series:*
    $ sum_(n=0)^infinity a_n (x - c)^n = a_0 + a_1 (x - c) + a_2 (x - c)^2 + ... $
    - Centered at origin ($c = 0$): $sum_(n=0)^infinity a_n x^n$
    - Defines a function $f(x) = sum_(n=0)^infinity a_n (x - c)^n$ on its domain of convergence.
    - Radius and Interval of Convergence:
      - Converges only at $x = c$ $(R = 0)$
      - Converges for all x $(R = infinity)$
      - Converges for $abs(x - c) < R$ and diverges $abs(x - c) > R$
      #note([
        Endpoints $x = c - R$ and $x = c + R$ must be tested individually using
        other convergence tests.
      ])
    - *Calculus of Power Series*:
      + Differentiation:
      $
        f(x) = sum_(n=0)^(infinity) a_n (x - c)^n \
        f prime (x) = sum_(n=1)^(infinity) n a_n (x - c)^(n - 1)
      $
      + Integration:
      $
        f(x) = sum_(n=0)^(infinity) a_n (x - c)^n
        integral f(x) d x = sum_(n=0)^(infinity) frac(a_n, n + 1) (x - c)^(n + 1)
      $
      + Key Radius Rule: Differentiation and integration do not change the radius of convergence $(R)$,
        but they can change the convergence at the endpoints $(x = c plus.minus R)$.

  == Convergence Tests

  - *Divergence Test:*
    $
      & lim_(n->infinity) a_n eq.not 0 "or DNE" => "Diverges" \
      & lim_(n->infinity) a_n = 0 => "Inconclusive"
    $

  - *Direct Comparison Test:* For positive terms ($a_n, b_n > 0$):
    - If $a_n <= b_n$ and $sum b_n$ converges, then $sum a_n$ converges.
    - If $a_n >= b_n$ and $sum b_n$ diverges, then $sum a_n$ diverges.

  - *Limit Comparison Test:* For positive terms ($a_n, b_n > 0$):
    $
      lim_(n->infinity) a_n / b_n = L
    $
    - If $0 < L < infinity$, both series share convergence status.
    - If $L = 0$ and $sum b_n$ converges, $sum a_n$ converges.
    - If $L = infinity$ and $sum b_n$ diverges, $sum a_n$ diverges.

  - *Absolute Convergence Test:* If $sum abs(a_n)$ converges, $sum a_n$ converges
    (Absolute convergence implies convergence).

  - *Ratio Test:*
  $
    & lim_(n->infinity) abs(a_(n+1) / a_n) < 1 => "Absolute Convergence" \
    & lim_(n->infinity) abs(a_(n+1) / a_n) > 1 => "Divergence" \
    & lim_(n->infinity) abs(a_(n+1) / a_n) = 1 => "Inconclusive"
  $

  - *Root Test:*
  $
    & lim_(n->infinity) root(n, abs(a_n)) < 1 => "Absolute Convergence" \
    & lim_(n->infinity) root(n, abs(a_n)) > 1 => "Divergence" \
    & lim_(n->infinity) root(n, abs(a_n)) = 1 => "Inconclusive"
  $

  - *Integral Test:* For $f(n) = a_n$ continuous, positive, and decreasing on $[k, infinity)$:
    $ sum_(n=k)^infinity a_n " and " integral_k^infinity f(x) d x " share convergence status." $

  == Absolute vs Conditional Convergence

  - *Absolute Convergence:* $sum a_n$ and $sum abs(a_n)$ both converges.
  - *Conditional Convergence:* $sum a_n$ converges but $sum abs(a_n)$ diverges (e.g. Alternating Harmonic Series).

  == Taylor & Maclaurin Series

  - *Taylor Series:*
    $ f(x) = sum_(n=0)^infinity frac(f^((n))(a), n!) (x - a)^n $

  - *Maclaurin Series:*
    $ f(x) = sum_(n=0)^infinity frac(f^((n))(0), n!) x^n $
])

== Evaluated Taylor Series

+ $ e^x = 1 + x/1! + x^2/2! + x^3, 3! + ... $
+ $ e^(-x) = 1 - x/ 1! + x^2/ 2! - x^3/ 3! + ... $
+ $ a^x = 1 + (x ln a)/ 1! + (x ln a^2)/ 2! + (x ln a^3)/3! + ... $
+ $ ln(1 + x) = x - x^2/ 2 + x^3/ 3 - x^4/ 4 + ... quad (-1 < x <= 1) $
+ $ ln(1 - x) = -x - x^2/ 2 - x^3/ 3 - x^4/ 4 - ... quad (-1 <= x < 1) $
+ $ sin x = x - x^3/ 3! + x^5/ 5! - x^7/ 7! + ... $
+ $ cos x = 1 - x^2/ 2! + x^4/ 4! - x^6/ 6! + ... $
+ $ arctan x = x - x^3/3 + x^5/5 - x^7/7 + ... quad (-1 <= x <= 1) $
+ $ (1 + x)^k = 1 + k x + (k(k - 1))/2! x^2 + ... quad (-1 < x < 1) $

#block([
  #show math.equation.where(block: true): set align(center)

  == Remainder & Error Estimation

  - *Definition of Remainder ($R_n$):*
    If $S = sum_(k=1)^infinity a_k$ converges with partial sum $S_n = sum_(k=1)^n a_k$, the error (remainder) is:
    $ R_n = S - S_n = sum_(k=n+1)^infinity a_k quad "where" quad lim_(n->infinity) R_n = 0 $

  - *Alternating Series Estimation Theorem:*
    For a convergent alternating series, the error is bounded by the first omitted term:
    $ abs(R_n) = abs(S - S_n) <= a_(n+1) $

    - *Finding $n$ for a desired accuracy $epsilon$:*
      Set the error bound strictly less than $epsilon$ and solve for $n$:
      $ a_(n+1) < epsilon $

  - *Integral Test Error Bound:*
    If $f(x) = a_n$ is continuous, positive, and decreasing for $x >= n$:
    $ integral_(n+1)^infinity f(x) d x <= R_n <= integral_n^infinity f(x) d x $

    - *Finding $n$ for a desired accuracy $epsilon$:*
      Use the upper bound to ensure the error stays below $epsilon$:
      $ integral_n^infinity f(x) d x < epsilon $

  - *Taylor Series Remainder (Lagrange Error Bound):*
    If $f(x)$ is approximated by its $n$-th degree Taylor polynomial $T_n(x)$ centered at $a$:
    $ R_n(x) = f(x) - T_n(x) = (f^((n+1))(c)) / ((n + 1)!) (x - a)^(n+1) $
    where $c$ lies between $a$ and $x$.

    - *Finding $n$ for a desired accuracy $epsilon$:*
      Find $M = abs(f^((n+1))(c))$ on the interval between $a$ and $x$, then solve:
      $ abs(R_n(x)) <= M / ((n + 1)!) abs(x - a)^(n+1) < epsilon $
])
