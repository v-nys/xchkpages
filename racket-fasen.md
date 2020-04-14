# Fasen in racket
Typisch wordt er over twee fasen gesproken bij Racket:

- compile time fase
- runtime fase

## Compile time fase
Hier worden syntaxtransformaties toegepast tot er een programma in de core Racket syntax aanwezig is. (? verifieer ?)

## Runtime
Hier wordt het programma in de core Racket syntax geëvalueerd.

Dit staat toe de normale uitvoeringsvolgorde te omzeilen en zo nieuwe syntax te definiëren (in plaats van alleen functies).

## Consequenties
- `require` bindt voor een specifieke fase
  - bij compile time is enkel `racket/base` gebonden, niet alles van `#lang racket`
- om extra zaken te importeren voor gebruik at compile time: `(require (for-syntax ...))` schrijven in plaats van `(require ...)`

## `begin-for-syntax` en `define-for-syntax`
Als we zelf iets willen definiëren om nog te gebruiken **at compile time** (in dezelfde module, anders kunnen we onze `require` aanpassen), zetten we het in `(begin-for-syntax ...)`. We kunnen `define` (als dat al is wat we nodig hebben) ook schrijven als `(define-for-syntax ...)`. Dat levert hetzelfde op.

## TODO
- dependency: require
- dependency: define
- dependency: iets met side effect, bv. `display`
