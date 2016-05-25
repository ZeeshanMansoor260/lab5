(define aCompletelyUselessFunctionCreatedOnlyToMakeYourLifeMiserable
  (lambda (m n)
    (IFTHENELSE (OR (iszero m) (LT m n)) (SUM n z) (ADD m n))
  )
)


(define z 0)


(define IFTHENELSE 
	(lambda (p a b)
		(p a b)
	)
)


(define SUM
  (lambda (n a)
    (define (loop n a z)
      (if (zero? n)
        a
        (loop (pred 1 n) (ADD a z) (+ z 1))
      )
    )
    (loop n a z)
  )
)


(define LT
  (lambda (a b)
    (lambda(m n)(isZero(SUB m n)))
  )
)


(define OR
  (lambda (M N a b)
    (N a (M a b))
  )
)


(define AND
  (lambda (M N a b)
    (N (M a b) b)
  )
)


(define NOT
  (lambda (M b a)
    (M a b)
  )
)


(define ADD
  (lambda (a b)
    (M a (N b z))
  )
)


(define SUB
  (lambda (a b)
    (pred b  a )
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


(define pred
  (lambda (a b)
    (if (< (- b a) z)
       z
      (- b a)
    )
  )
)