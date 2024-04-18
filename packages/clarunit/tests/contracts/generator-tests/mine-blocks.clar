;; test block-height at launch
;; One block is need to advance to epoch 2.5
(define-public (test-block-height-at-launch)
    (begin
        (asserts! (is-eq u1 block-height) (err (concat "expected block height 1, found " (int-to-ascii block-height))))
        (ok true)))

;; @mine-blocks-before 10
(define-public (test-mine-blocks-before)
    (begin
        (asserts! (is-eq u11 block-height) (err (concat "expected block height 10, found " (int-to-ascii block-height))))
        (ok true)))