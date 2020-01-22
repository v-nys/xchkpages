#lang racket
(require pict)
(require file/convertible)

;; FIXME: gepinde pijl wordt nog steeds geknipt, niet zeker waarom
(let* ([named-repo (λ (n) (cc-superimpose (cloud 100 75) (scale (text n) 2)))]
       [A (named-repo "A")]
       [B (named-repo "B")]
       [C (named-repo "C")]
       [base-drawing
        (pin-arrow-line
         10
         (pin-arrow-line
          10
          (pin-arrow-line
           10
           (pin-arrow-line
            10
            (vc-append
             120
             A
             (hc-append 160 B C))
            B
            ct-find
            A
            lc-find
            #:label (rotate (text "spreekt over \"origin\"") 1.1)
            #:x-adjust-label 30
            #:y-adjust-label 30)
           C
           ct-find
           A
           rc-find
           #:label (rotate (text "spreekt over \"origin\"") -1.1)
           #:x-adjust-label -30
           #:y-adjust-label 30)
          B
          rc-find
          C
          lc-find
          #:label (text "spreekt over \"colleague\""))
         A
         ct-find
         C
         rc-find
         #:label (rotate (text "spreekt over \"downstream\"") -0.9)
         #:start-angle (/ pi 2)
         #:end-angle pi
         #:y-adjust-label 10)]
       [drawing (panorama (cc-superimpose base-drawing (ghost base-drawing)))])
  (call-with-output-file
      "remotes-quiz.png"
    (λ (o) (display (convert drawing 'png-bytes) o))
    #:exists 'replace))