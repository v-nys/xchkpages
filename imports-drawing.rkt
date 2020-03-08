#lang racket
(require pict)
(require file/convertible)

(let* ([named-file
        (λ (n)
          (cc-superimpose
           (scale (rectangle 21 29) 3)
           (scale (text n) 2)))]
       [A (named-file "a.py")]
       [B (named-file "b.py")]
       [C (named-file "c.py")]
       [base-drawing
        (pin-arrow-line
         10
         (pin-arrow-line
         10
         (pin-arrow-line
          10
          (vc-append 100 A B C)
          A
          cb-find
          B
          ct-find
          #:label (rotate (text "import") (/ pi -2)))
         A
         rc-find
         C
         rc-find
         #:label (rotate (text "import") (/ pi -2))
         #:start-angle 0
         #:end-angle pi
         #:x-adjust-label 80)
         B
         cb-find
         C
         ct-find
         #:label (rotate (text "import") (/ pi -2)))]
       [drawing (panorama (lt-superimpose base-drawing (ghost base-drawing)))])
  (call-with-output-file
      "imports-singleton-scope.png"
    (λ (o) (display (convert drawing 'png-bytes) o))
    #:exists 'replace))