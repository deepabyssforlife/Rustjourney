#lang scribble/manual

@title{30thJuly}
Points to discuss:
@itemize[
@item{The architecture layer and what all it contains - reg and mem}
@item{The micro architecture layer and what all it contains - reg + mem ( reorder buffers + caches + branch predictors + schedulers)}
@item{but there is no one way to arrange all these things.}
@item{So the observation set or the traces for the architecture  layer  is going to be (reg + mem) which has
to be somehow related to the traces in the microarchitecture layer.}
@item{Every thing caches, branch predictors have more complexity within it but in the language that we describe
these are modeled as functions -- like you give it an input and an output is returned such tat within it the
state does not have to be tracked.
}
]
 
----
- reorder  buffer - we  can model the things in the same language
		 - this is quite common optimization in the languages
		 - e1 and e2 have independent effects
		- we can reorder buffer
- asm (under all contexts) in the architecture layer
- reorder buffer that we show as a metateoretic property
- how is it true in case of  reorder  buffer? - this   can be shown in the case
of this specific thingy. fair,
- we cant
- cache -  we need the abstract notion of caches and so long we have that.
	- we need some behaviour to observe timing
	- computers have a clock and computers have
	- we add an instruction
	- do we have some countermeasure that somethign is in the cache.

---
Observations that the target makes - thats the attacker can model, that includes timing.
--If we change the semantics in the taget languages.
-- clearing the cache is not what we want to do.
-- restrict linking, we have a chunck of code sensitive to timing, we have to make
sure that the entire code that runs does not observe timing
-- it doesnt require dynamic linking, when we link nobody is using too accurate of the clock.

-- if the architecture is caching,
-- we should start with the architecture layer and it will give a lot of practice modeling
low level details.
-- we have complete model of the architecture
-- modeling the architecture layer.



---
What is happening in the internship?
- have to model just the cache semantics
- there is countermeasure which is the undo countermeasure
- how spectre really happens and how to model the countermeasure


---
Compiler correctness realm
- Amal's thesis to understand a bit more about mutable references and logical relations
- Also type soundness proofs which is sort of based on logical relations
- Also, don't yet see the difference between syntactic and semantic proof approaches.
- Also have realised that there is difference between contexts and evaluation contexts; i think
these are two different things. Context is like filling the hole sort of thing and whereas evaluation
context is more like decides the order of the evaluation stuff.


-- type rules and the type rule is;

-- we have to show the proofs from set theory and then reuse the proofs as we want.
-- intutively  it might feel that  this might be the case and if we dont show then we might not know.

come context it runs stlc with bools cbv and cbn  and show that they evaluate to different VALUES WITHHOUT USING EVAL CONTEXT
;

--- ÏULL ABSTRACTION
- IRIS framework to prove a FA proof, iris abstract noton of logical relation in coq, semantic type soundness;
- managed to use it for soem other proof.
- modeling iris. try doing it in iris.
- beluga: simplifies the binding problem it might be useful.

system F style beluga; iris; agda
