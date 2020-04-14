# Pattern variables binnen syntax templates krijgen
Een pattern variable stelt syntax voor en komt vaak letterlijk terug in een template. Maar kan ook eerst getransformeerd worden, bv. hoe er getters en setters voor structs worden aangemaakt op basis van veldnamen.

In `syntax-case` betekent dit dat de pattern variabele niet gebruikt kan worden binnen berekeningen om nieuwe syntax te produceren die buiten de uiteindelijke template liggen. 

Anti-voorbeeld uit Fear of Macros:

```racket
(define-syntax (hyphen-define/wrong1 stx)
    (syntax-case stx ()
      [(_ a b (args ...) body0 body ...)
       (let ([name (string->symbol (format "~a-~a" a b))])
         #'(define (name args ...)
             body0 body ...))]))
```

Hier worden pattern variables (`a` en `b`) gebruikt in de productie van `name`, dat op zijn beurt voorkomt in de geproduceerde definitie.

Ze mogen wel gebruikt worden in een andere template dan de uiteindelijk gebruikte voor het resultaat. Een juiste hyphen-define:

```racket
(define-syntax (hyphen-define/ok1 stx)
    (syntax-case stx ()
      [(_ a b (args ...) body0 body ...)
       (syntax-case (datum->syntax #'a
                                   (string->symbol (format "~a-~a"
                                                           (syntax->datum #'a)
                                                           (syntax->datum #'b))))
                    ()
         [name #'(define (name args ...)
                   body0 body ...)])]))
```
