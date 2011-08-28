This gem is a compilation of several implementations of the ambiguous function/operator pattern, useful for constraint programming. Each implementation comes with its own copyright notice and authors, so be sure to check the CREDITS file!

Ever wanted to:

* write straightforward parsers?
* solve crosswords and sudokus or the n-queens problem?
* design an equation-solver or a modelizer?
* understand how logic programming languages (Prolog…) work?

Them amb may be of interest to you. *Oh and btw it's Ruby, so it's slow ;)*

## Synopsis

*You may want to jump straight to the Examples section if formal stuff annoys you.*

Ambiguous functions were [defined in John McCarty's 1963 paper](http://www-formal.stanford.edu/jmc/basis1/node7.html) *A basis for a mathematical theory of computation*. It allows for writing nondeterministic programs which contain various alternatives for the program flow. The programmer specifies a limited number of alternatives, so that the program must later choose between them at runtime. The evaluation may result in the discovery of a dead end, in which case evaluation must backtrack to a previous choice point and start over with a different alternative.

To discover which alternatives sets are valid solutions to the main constraints, a check/discard strategy is enforced by the ambiguous operator, `amb()`. The most basic version of `amb` is `amb(x,y)`, which returns, in an unpredictible way, either x or y when both are defined; otherwise, it returns whichever is defined. If none is defined, it will terminate the program. Using the recursivity pattern, `amb()` may be used to define arbitrary, complex ambiguous functions.

The most common strategy used for implementing `amb()`'s logic (check/discard) is backtracking, which is "a general algorithm for finding all (or some) solutions to some computational problem, that incrementally builds candidates to the solutions, and abandons each partial candidate *c* ("backtracks") as soon as it determines that *c* cannot possibly be completed to a valid solution". It almost always relies on some sort of continuations. It may be turned into backjumping for more efficiency, depending on the problem at stake. Another strategy is reinforcement learning or constraint learning, as used in some AI systems. This library implements simple backtracking only.

More details on all of this in the doc/ folder.

## Examples

TODO

## Installation

    gem install amb

## Usage

## TODO

## See also

* the doc/ and example/ folders!
* Continuations and fibers concepts
