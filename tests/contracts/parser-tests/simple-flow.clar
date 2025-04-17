;;@name simple flow test
(define-public (test-simple-flow)
    (begin
        ;; @caller wallet_1
        (try! (my-test-function))
        ;; @caller wallet_2
        (try! (my-test-function2))
        (ok true)))

(define-public (my-test-function)
    (ok true))

(define-public (my-test-function2)
    (ok true))