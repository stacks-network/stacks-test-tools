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

;; @caller wallet_1
(define-public (test-caller)
    (begin
        (asserts! (is-eq tx-sender 'ST1SJ3DTE5DN7X54YDH5D64R3BCB6A2AG2ZQ8YPD5) (err tx-sender))
        (asserts! (is-eq contract-caller 'ST1SJ3DTE5DN7X54YDH5D64R3BCB6A2AG2ZQ8YPD5) (err contract-caller))
        (ok true)))

;; @caller 'SP3FBR2AGK5H9QBDH3EEN6DF8EK8JY7RX8QJ5SVTE
(define-public (test-caller-2)
    (begin
        (asserts! (is-eq tx-sender 'SP3FBR2AGK5H9QBDH3EEN6DF8EK8JY7RX8QJ5SVTE) (err tx-sender))
        (asserts! (is-eq contract-caller 'SP3FBR2AGK5H9QBDH3EEN6DF8EK8JY7RX8QJ5SVTE) (err contract-caller))
        (ok true)))