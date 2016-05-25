(define aCompletelyUselessFunctionCreatedOnlyToMakeYourLifeMiserable
  (lambda (m n)
  	(define SUM1
  (lambda (n a)
    (define (loop1 n a z)
      (if (zero? n)
        a
        (loop1 (pred 1 n) (ADD a z) (succ z 1))
      )
    )
    (loop1 n a z)
  )
)
    (ifelse (OR (iszero m) (LT m n)) (SUM1 n z) (ADD m n))
  )
)





(define z 0)


(define ifelse 
	(lambda (p a b)
		(p a b)
	)
)


(define SUM
  (lambda (n a)
    (define (loop n a z)
      (if (zero? n)
        a
        (loop (pred 1 n) (ADD a z) (succ z 1))
      )
    )
    (loop n a z)
  )
)


(define LT
  (lambda (a b)
    ( AND (iszero (SUB a b)) (NOT ( iszero (SUB b a) )) )
  )
)


(define OR
  (lambda (M N)
    (N true (M true false))
  )
)


(define AND
  (lambda (M N)
    (N (M true false) false)
  )
)


(define NOT
  (lambda (M)
    (M false true)
  )
)


(define ADD
  (lambda (a b)
    (succ a (succ b z))
  )
)


(define SUB
  (lambda (a b)
    (pred (succ b z) (succ a z) )
  )
)


(define true
  (lambda (a b)
    a
  )
)


(define false
  (lambda (a b)
    b
  )
)



(define iszero
  (lambda (a)
    (if(= a z)
    	true
    	false
    )
  )
)

; successor function
(define succ
  (lambda (a b)
    (+ a b)
  )
)


(define pred
  (lambda (a b)
    (if (< (- b a) z)
       z
      (- b a)
    )
  )
)

