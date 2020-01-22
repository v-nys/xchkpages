#lang racket
(require pict)
(require file/convertible)

(let* ([named-repo (λ (n) (cc-superimpose (cloud 100 75) (scale (text n) 2)))]
       [A (named-repo "A")]
       [B (named-repo "B")]
       [C (named-repo "C")]
       [drawing
        (panorama
         (pin-arrow-line
          10
          (pin-arrow-line
           10
           (vc-append
            30
            A
            (hc-append 40 B C))
           B
           ct-find
           A
           lc-find
           #:label (text "spreekt over \"origin\"")
           #:x-adjust-label -30
           #:y-adjust-label 10)
          C
          ct-find
          A
          rc-find
          #:label (text "spreekt over \"MasterCopy\"")
          #:x-adjust-label 30
          #:y-adjust-label 10))])
  (call-with-output-file
      "remotes-example.png"
    (λ (o) (display (convert drawing 'png-bytes) o))
    #:exists 'replace))