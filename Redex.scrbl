#lang scribble/manual

@title{REDEX}
Some good links for Redex that I used:
@itemize[

@item{http://prl.ccs.neu.edu/blog/2017/09/25/plt-redex-faq/}
@item{https://github.com/wilbowma/experimenting-with-redex}
@item{Obviously the main redex documentation}
@item{(Redex link for trying out things: https://github.com/aartikash/Models/blob/master/Models/neub.rkt)
Thoughts about redex; this is a tool that allows me to
formalise the notion of programming languages in terms of
syntax semantics and rules and check that they work ok.} ]

Main components of a redex model:

- languages (grammar for terms)
- judgements (properties of terms of relations between terms)
- metafunctions (functions on terms)
- reduction relations (defining a rewriting system)


Q:Language
  - consists of the grammar
  - contains non-terminals, patterns and binding forms

Q:pattern
  - we can create multiple patterns and test it
  with the non-terminals of our language to check if the language
  matches the pattern.

Q: named non-terminals


  - these are like x_1 , x_2. So for eg if we want to use the notion
  of nat (n) in our language then n_1 and n_2 can be used to refer to
  different nats in our language.

Q: Patterns usefulness
 - they allows the syntactic representation of our grammar
 - this means that they help us understand the different representations
 that the grammar will support.
 q: why do we need to see such combination of terms?
 A: to check if our program is well represented atleast based
 on the syntactic definition even before looking at the semantics
 q: so in real world what is the usecase?
 A: if we use wrong syntax then it can be used to point out things
 for the user?
 q: patterns do fail?
 A: there are no negations on redex


 judgements
 - form defines relation on terms
 q: what sort of judgements usually exist?
 a: well formed conditions, for eg. if A TERM contains a free variabke
 - type checking rules which basically tell which term is which types
 - type inference rules are also conveyed using This
 - evaluation relations (these are the big step sort of semantics)

The way to define any judgement relation is to use
- language (grammar)
- mode (this tells us the form of the judgements) (I I means that
the the judment consists of two inputs)
q: what is the point of the judgment rule without any output?
a: it can help test the well formedness of the terms maybe?
  - it also can test for type checking rules
  - for type inference rules the mode will perhaps be of the form I I O or O I
  depending on the type we are trying to infer.
q: mode
  - so when we specify the mode where we mention I O and other order
  so the output that we want and it tells us the output at that location
  or position


  @margin-note{Note: I think there are things i still don't understand
  about judgments. Perhaps completely modeling system F in Redex would
  make sense to me.}




  Metafunctions:
 @itemize[
 @item{term-level function on terms}
 @item{langauge, mode, contract and gaurded input output cases}
 ]
 @margin-note{Note: What is meant by gaurded cases?}
@margin-note{There is still a lack of understanding wheater I
should use judgment forms or metafunctions. Apparently judgment
forms are easier to maintain.}
@margin-note{Metafunctions form a sequence not a set? What is that
supposed to mean?}

Contexts:
Before going to reduction relations, some very important concepts
to understand are contexts and evaluation contexts.
@itemize[
@item{There are multiple different types of contexts that can
exist depending on how the programming language is modeled.}
@item{A program context is like a function that exists that
is replaced in the expressions, for example, 'e + e' is defined
as 'C + e' which basically means that the expression is coming
from some function that is not the semantics of the languages.
It is like an input-output thing (function?) that basically
produces the value and it can be an expression also.}
@margin-note{I am starting to think that everything at the end of
the day is the game of contexts and defining the correct contexts.}
@item{Evaluation contexts in any language determine the order of evaluation}
@item{Translation contexts - the contexts that translate the terms so again
can think of them as functions.}
@item{Any other context: so what other types of contexts can there be?
- type contexts ("{\displaystyle e}e has type {\displaystyle \tau }\tau  in context {\displaystyle \Gamma }\Gamma  "), value contexts}
]



Reduction relations:
@itemize[
@item{term -rewriting rules}
@item{contains: language, domain, rules}
@item{Everything is a pattern; input to the reduction relation
is a pattern and so is the output.}
@item{For a standard language we can presume that a language
consists of three non-terminals (expr, values and eval contexts)}
]
@margin-note{Is it term rewriting in the same language
or different language? Term rewriting can also be defined
in another language? can it not?}




Why are reduction relations so interesting?
@itemize[
@item{The reduction relations are actually representative of how
I'd have defined it on paper.}
@item{When specifying a redex relation, the pattern on the left side
describes the redexes and their contexts and the right hand side
determines the result of such a rule on a specific expression.}
@margin-note{Everything is patterns patterns and patterns}
@item{Now there are multiple ways in which a term can be reduced
which means that there are non-deterministic patterns that can exist.}
@item{In a very simple language the patterns are mostly deterministic or
atleast in the eg we have given here.}
@item{So when what sort of an evaluator can be use when defining
the reduction relation? -- so that depends on the evaluation context
that we want to define.
From my current understanding there exist compatible closure and maybe
cbv sort of reductions within the redex model.}
]


Q: What are the different types of reduction relations and when to use
the which relation?
@itemize[
@item{Compatible closure - this implies that }
]

Bindings
@itemize[
@item{The bindings play an important role in the sense that they are
important parts in functional languages }
@margin-note{I'm not sure what role do bindings play in languages with
states?}
]
