```racket
; oké
(define (helloworld) (display "hello, world!"))
(helloworld)
```

```racket
; niet oké
(helloworld)
(define (helloworld) (display "hello, world!"))
```

```racket
; oké
(define (a) (begin (display "a") (b)))
(define (b) (begin (display "b") (a)))
```
