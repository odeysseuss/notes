#import "/utils/template.typ": *

#show: conf.with(title: "Notations")

= Greek Alphabet

#table(
  columns: (auto, auto, auto),
  align: (center, center, left),
  table.header([*Uppercase*], [*Lowercase*], [*Name*]),
  [$Alpha$], [$alpha$], [Alpha],
  [$Beta$], [$beta$], [Beta],
  [$Gamma$], [$gamma$], [Gamma],
  [$Delta$], [$delta$], [Delta],
  [$Epsilon$], [$epsilon$], [Epsilon],
  [$Zeta$], [$zeta$], [Zeta],
  [$Eta$], [$eta$], [Eta],
  [$Theta$], [$theta$], [Theta],
  [$Iota$], [$iota$], [Iota],
  [$Kappa$], [$kappa$], [Kappa],
  [$Lambda$], [$lambda$], [Lambda],
  [$Mu$], [$mu$], [Mu],
  [$Nu$], [$nu$], [Nu],
  [$Xi$], [$xi$], [Xi],
  [$Omicron$], [$omicron$], [Omicron],
  [$Pi$], [$pi$], [Pi],
  [$Rho$], [$rho$], [Rho],
  [$Sigma$], [$sigma$], [Sigma],
  [$Tau$], [$tau$], [Tau],
  [$Upsilon$], [$upsilon$], [Upsilon],
  [$Phi$], [$phi$], [Phi],
  [$Chi$], [$chi$], [Chi],
  [$Psi$], [$psi$], [Psi],
  [$Omega$], [$omega$], [Omega],
)

= Logical & Set Notation

#table(
  columns: (auto, auto, auto, auto),
  align: (center, left, left, left),
  table.header([*Symbol*], [*Name*], [*Read As*], [*Example*]),

  // Propositional Logic
  [$not$], [Negation], [Not], [$not P$ (Not $P$)],
  [$and$], [Conjunction], [And], [$P and Q$ ($P$ and $Q$)],
  [$or$], [Disjunction], [Or], [$P or Q$ ($P$ or $Q$)],
  [$xor$], [Exclusive Or], [Either... or], [$P xor Q$ (Either $P$ or $Q$, but not both)],
  [$arrow.r$], [Implication], [If... then / Implies], [$P arrow.r Q$ (If $P$, then $Q$)],
  [$arrow.l.r$], [Biconditional], [If and only if], [$P arrow.l.r Q$ ($P$ if and only if $Q$)],

  // Quantifiers
  [$forall$], [Universal Quantifier], [For all / For every], [$forall x P(x)$ (For all $x$, $P(x)$ holds)],
  [$exists$],
  [Existential Quantifier],
  [There exists / For some],
  [$exists x P(x)$ (There exists an $x$ such that $P(x)$)],

  [$exists.not$], [Non-existential Quantifier], [There does not exist], [$exists.not x P(x)$ (No $x$ satisfies $P(x)$)],
  [$exists!$],
  [Uniqueness Quantifier],
  [There exists a unique],
  [$exists! x P(x)$ (There is exactly one $x$ where $P(x)$ holds)],

  // Metalogic & Provability
  [$tack.b$], [Tautology], [Top / Always true], [$P or not P equiv tack.b$],
  [$tack.t$], [Contradiction], [Bottom / Always false], [$P and not P equiv tack.t$],
  [$tack$], [Syntactic Turnstile], [Proves / Yields], [$Gamma tack P$ ($Gamma$ proves $P$)],
  [$tack.not$], [Non-provability], [Does not prove], [$Gamma tack.not P$ ($Gamma$ cannot prove $P$)],
  [$tack.rr$], [Semantic Turnstile], [Entails / Satisfies], [$Gamma tack.rr P$ ($Gamma$ semantically entails $P$)],
  [$tack.rr.not$], [Non-entailment], [Does not entail], [$Gamma tack.rr.not P$ ($Gamma$ does not entail $P$)],
  [$equiv$], [Logical Equivalence], [Is logically equivalent to], [$P arrow.r Q equiv not P or Q$],

  // Set Theory
  [$in$], [Element of], [Belongs to], [$x in A$ ($x$ belongs to set $A$)],
  [$in.not$], [Not Element of], [Does not belong to], [$x in.not A$ ($x$ is not in set $A$)],
  [$subset.eq$], [Subset], [Is a subset of], [$A subset.eq B$ ($A$ is contained in or equal to $B$)],
  [$subset$], [Strict Subset], [Is a proper subset of], [$A subset B$ ($A$ is strictly contained in $B$)],
  [$subset.not$], [Not a Subset], [Is not a subset of], [$A subset.not B$ ($A$ is not a subset of $B$)],
  [$emptyset$], [Empty Set], [Empty set / Null set], [$A = emptyset$ (Set $A$ has no elements)],
  [$union$], [Union], [Union of], [$A union B$ (Elements in $A$ or $B$ or both)],
  [$inter$], [Intersection], [Intersection of], [$A inter B$ (Elements in both $A$ and $B$)],
  [$without$], [Set Difference], [Minus / Relative complement], [$A without B$ (Elements in $A$ but not in $B$)],
)

#ex(
  $ forall x (x in A union B arrow.r (x in A or x in B)) and exists.not y (y in emptyset and y in.not (A without B)) $,
)
Read as: "For all x, x being an element of A union B implies that x is in A or x is in B; and there exists no y such that y is in the empty set and y is not in A minus B."

#ex(
  $ (Gamma models P xor Q) equiv (Gamma tack P or Q) and (Gamma tack.not P and Q) and (P and not P equiv tack.t) $,
)
Read as: "Gamma semantically entails P exclusive-or Q is logically equivalent to saying: Gamma proves P or Q, Gamma does not prove P and Q, and P and not P is a contradiction."

#ex(
  $ (forall alpha in A, exists! beta in B : f(alpha) = beta) arrow.r (A subset.eq B and A subset.not emptyset) $,
)
Read as: "If for every alpha in A there exists a unique beta in B such that f of alpha equals beta, then A is a subset of B and A is not a subset of the empty set."
