#lang racket
(require pict)
(require file/convertible)

(let* ([box (λ (t c) (frame (inset (text t) 10) #:color c))]
       [box-wd (box "working directory" "red")]
       [box-staging (box "staging area" "green")]
       [box-history (box "project history" "blue")]
       [drawing
        (panorama
         (pin-arrow-line
          10
          (pin-arrow-line
           10
           (vr-append
            10
            box-history
            box-staging
            box-wd)
           box-wd
           rc-find
           box-staging
           rc-find
           #:label (text "git add")
           #:start-angle 0
           #:end-angle pi
           #:x-adjust-label 50)
          box-staging
          rc-find
          box-history
          rc-find
          #:label (text "git commit")
          #:start-angle 0
          #:end-angle pi
          #:x-adjust-label 60))])
  (call-with-output-file
      "git-stages-basics.svg"
    (λ (o) (display (convert drawing 'svg-bytes) o))
    #:exists 'replace))