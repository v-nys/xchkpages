# `with-syntax` en `with-syntax*`
- soort tegenhanger van `let` om **syntax** te produceren en **pattern** variables te binden
  - `let` bindt gewone variables

Zoals hoe `let` eigenlijk rewrite is van lambda, zijn onderstaande twee regels equivalent:

```
(syntax-case <syntax> () [<pattern> <body>])
(with-syntax ([<pattern> <syntax>]) <body>)
```

# `with-syntax*`
- staat toe bindingen te baseren op voorafgaande bindingen (zoals `let*`)

.. warning::

   `with-syntax*` behoort niet tot `racket/base`, dus geen `require` (voor syntax) leidt tot (**een totaal onduidelijke!**) foutboodschap: "...: ellipses not allowed as an expression in: ...."

## TODO
- opnemen in lijst risico's? / FMM's / ...?
- dit is optioneel - biedt niets dat `syntax-case` niet kan!
