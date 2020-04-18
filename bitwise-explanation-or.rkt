#lang racket
(require pict)
(require file/convertible)

(define address "11000000101010000000000000000001")
(define netmask "11111111111111111111111100000000")
(define first-one (text "1"))
(define second-one (text "1"))
(define first-zero (text "0"))
(define third-one (text "1"))
(define result
  (hbl-append
   first-one
   (text "1")
   second-one
   (text "000001010100000000000")
   first-zero
   (text "000000")
   third-one))

(define explanation-1-1-firstchar (text "1"))
(define explanation-1-1 (hbl-append explanation-1-1-firstchar (text " boven 1: zoals True OR True → 1 (True)")))
(define explanation-0-1-firstchar (text "0"))
(define explanation-0-1 (hbl-append explanation-0-1-firstchar (text " boven 1: zoals False OR True → 1 (True)")))
(define explanation-0-0-firstchar (text "0"))
(define explanation-0-0 (hbl-append explanation-0-0-firstchar (text " boven 0: zoals False OR False → 0 (False)")))
(define explanation-1-0-firstchar (text "1"))
(define explanation-1-0 (hbl-append explanation-1-0-firstchar (text " boven 0: zoals True OR False → 1 (True)")))

(define base-drawing
  (vl-append
   (text address)
   (text netmask)
   (hc-append
    2
    (hline (pict-width (text netmask)) 1)
    (text "|"))
   result
   (ghost result)
   (hbl-append (ghost (text (build-string 31 (λ (_) #\0)))) explanation-1-0)
   (hbl-append (ghost (text (build-string 24 (λ (_) #\0)))) explanation-0-0)
   (hbl-append (ghost (text (build-string 2 (λ (_) #\0)))) explanation-0-1)
   explanation-1-1))

(define drawing
  (pin-arrow-line
   10
   (pin-arrow-line
    10
    (pin-arrow-line
     10
     (pin-arrow-line
      10
      base-drawing
      third-one
      cb-find
      explanation-1-0-firstchar
      ct-find)
     first-zero
     cb-find
     explanation-0-0-firstchar
     ct-find)
    second-one
    cb-find
    explanation-0-1-firstchar
    ct-find)
   first-one
   cb-find
   explanation-1-1-firstchar
   ct-find))

(call-with-output-file
    "bitwise-or.png"
  (λ (o) (display (convert (scale drawing 2) 'png-bytes) o))
  #:exists 'replace)