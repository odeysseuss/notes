#import "/utils/template.typ": *

#show: conf.with(title: "Notations")

= Greek Alphabets
\
#table(
  columns: (auto, auto, auto),
  [*Uppercase*], [*Lowercase*], [*Name*],
  [$Alpha$], [$alpha$], [Alpha],
  [$Beta$], [$beta$], [Beta],
  [$Gamma$], [$Gamma$], [Gamma],
  [$Delta$], [$Delta$], [Delta],
  [$Epsilon$], [$Epsilon$], [Epsilon],
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
\

= Logical Notation
\
#table(
  columns: (auto, auto, auto, auto),
  [*Symbol*], [*Name*], [*Read As*], [*Example*],
  [$not$], [Negation], [Not], [$not P$(Not P)],
  [$and$], [Conjunction], [And], [$P and Q$(P and Q)],
  [$or$], [Disjuction], [Or], [$P or Q$(P or Q)],
  [$xor$], [Exclusive Or], [Either...or], [$P xor Q$(Either P or Q)],
  [$arrow.r "or" arrow.r.double$], [Implication], [If...then/Implies], [$P arrow.r Q$(If P then Q)],
  [$arrow.l.r "or" arrow.l.r.double$], [Biconditional], [If and only if], [$P arrow.l.r Q$(P if and only if Q)],

  [$forall$], [Universal Quantifier], [For Every], [$forall x P(x)$],
  [$exists$], [Existential Quantifier], [There exists/For some], [$exists x P(x)$],
  [$exists.not$], [Non Existential Quantifier], [There exists/For some], [$exists.not x P(x)$],
  [$exists!$], [Uniqueness Quantifier], [There exists unique], [$exists! x P(x)$],

  [$tack.b$], [Tautology], [Always true], [],
  [$tack.t$], [Contradiction], [Always false], [],
  [$tack$], [Syntactic Turnstile], [Proves/Yields (Provable via inference rules)], [],
  [$tack.not$], [Non provability], [Does not prove], [],
  [$tack.rr$], [Syntactic Double Turnstile], [Entails/Is a model of (True in all models)], [],
  [$tack.rr.not$], [Non entailment], [Does not entail], [],
  [$equiv$], [Logical Equivalence], [Is logically equivalent to], [],

  [$in$], [Element of], [Belongs to], [$x in A$ (x belongs to A)],
  [$in.not$], [Not Element of], [Is not an element of], [$x in.not A$ (x is not an element of A)],
  [$subset.eq$], [Subset], [Is a subset of], [$P subset.eq Q$ (P is a subset of Q)],
  [$subset$], [Strict Subset], [Is a proper subset of], [$P subset Q$ (P is a proper subset of Q)],
  [$subset.not$], [Not a Subset], [Is not a subset of], [$P subset.not Q$ (P is not a subset of Q)],
  [$emptyset$], [Empty Set], [Is an empty set], [$P = emptyset$ (P is an empty set)],
  [$union$], [Union], [union], [],
  [$inter$], [Intersection], [intersection], [],
  [$without$], [Set Difference], [minus], [],
)
