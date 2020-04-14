# Wat zijn syntax transformers?
- Technisch gesproken: functies die syntax consumeren én produceren
- Via `define-syntax` gedefinieerd
  - Dit creëert geen gewone binding (zoals `define`) maar een **transformer binding**
- Afgebakend door parens, dus bij een transformer binding voor `foo` en gebruik `(foo hier-nog-vanalles-maakt-niet-uit-wat)` wordt `hier-nog-vanalles-maakt-niet-uit-wat` als één syntax object aan de syntax transformer gegeven
- Zelfde shorthand als `define`: kan `(define-syntax foo (lambda (stx) ...))` schrijven of `(define-syntax (foo stx) ...)` schrijven
- De geproduceerde syntax neemt de plaats in van de oproep van de syntax transformer
- De geproduceerde syntax omvat ook de identifier van de syntax transformer!
  - Als je hem zou omzetten naar een lijst, is het eerste element dus de identifier.

## TODO
- paar oefeningen? niet zo evident...
