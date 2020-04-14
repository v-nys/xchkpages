# Syntax parameters
Uitleg in Fear of Macros is wat "uneven". Referenties naar Racket Reference, worden snel... tricky.
https://docs.racket-lang.org/reference/syntax-model.html, maar nog niet helemaal bereikbaar.

Wel belangrijk: macro's respecteren normaal lexical scope. Dus we kunnen buiten de definitie van een macro niet (meestal per ongeluk) verwijzen naar identifiers in de definitie van die macro, zoals dat ook bij gebruik van functies zo is.

Zie ook http://www.greghendershott.com/fear-of-macros/Syntax_parameters.html en paper waarnaar verwezen wordt: http://www.schemeworkshop.org/2011/papers/Barzilay2011.pdf

# Dependencies
- TODO: parameters
- rename transformer
