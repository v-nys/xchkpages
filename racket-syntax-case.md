# `syntax-case`

...

Vergelijk:

```racket
    (require (for-syntax racket/match))
    (define-syntax (our-if-using-match-v2 stx)
      (match (syntax->list stx)
        [(list _ condition true-expr false-expr)
         (datum->syntax stx `(cond [,condition ,true-expr]
                                   [else ,false-expr]))]))
```

```racket
(define-syntax (our-if-using-syntax-case stx)
    (syntax-case stx ()
      [(_ condition true-expr false-expr)
       #'(cond [condition true-expr]
               [else false-expr])]))
```

Belangrijke verschillen:

- in `syntax-case` parens na `stx` -> TODO verklaar
  - zie volgende bullet en sub bullets voor verklaring
- na patroongedeelte schrijven we een **syntax template** (TODO: aparte bespreking waard?)
  - ziet er uit als een syntax object, maar mag pattern variabelen gebruiken
  - de parens bevatten "literal ID's"; dit zijn gebonden identifiers die **niet** worden geïnterpreteerd als pattern variabelen

.. warning::

   Pattern variables moeten gebruikt worden binnen templates. Ze kunnen er niet buiten gebruikt worden! Hier zijn oplossingen voor, zie later.

# `define-syntax-rule`
- shorthand voor `syntax-case`, waarbij we eerst het te matchen patroon schrijven
  - daarna komt ook een template, maar we hoeven niet uitdrukkelijk te zeggen dat het resultaat syntax is (met `syntax` of `#'`)
    - schrijf alsof dat er al rond stond
- kan niet overweg met meerdere patronen voor zelfde identifier

## TODO
dependencies: eerdere stuff over syntaxtransformaties (welke precies); `match`
