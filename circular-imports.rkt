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
       
       [base-drawing
        (pin-arrow-line
         10
         (pin-arrow-line
         10
         (vc-append 100 A B)
         A
         rc-find
         B
         rc-find
         #:label (rotate (text "import") (/ pi -2))
         #:start-angle 0
         #:end-angle pi
         #:x-adjust-label 40)
         B
         lc-find
         A
         lc-find
         #:label (rotate (text "import") (/ pi 2))
         #:start-angle pi
         #:end-angle 0
         #:x-adjust-label -40)]
       [drawing (panorama (lt-superimpose base-drawing (ghost base-drawing)))])
  (call-with-output-file
      "circular-import.png"
    (λ (o) (display (convert drawing 'png-bytes) o))
    #:exists 'replace))