#lang sicp

;;; 心智的活动，除了尽力产生各种简单的认识之外，主要表现如下三方面：
;;; 1 将若干简单认识组合为一个复合认知，由此产生出各种复杂的认识。
;;; 2 将两个认识放在一起对照，不管它们如何简单或者复杂，在这样做时并不将他们合而为一。由此得到有关他们的相互关系的认识。
;;; 3 将有关认识与那些在实际中它们同在所有其他认识隔离开，这就是抽象，所有具有普遍的认识都是这样得到的。


;;; define size is 2
(define size 2)

;;; define pi is 3.14159
(define pi 3.14159)

;;; define radius is 10
(define radius 10)

;;; (* pi (* radius radius))

;;; (define circumference (* 2 pi radius))


;;; define square
;;; (define (<name>  <formal parameters>) <body>)
(define (square x) (* x x))

;;; define sum-of-squares
(define (sum-of-squares x y)
  (+ (square x) (square y)))

;;; define f

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

;;; cond
;;; define abs
;;; (cond (<p1> <e1>)
;;;       (<p2> <e2>)
;;;       .....
;;;       (<pn> <en>)

;;;(define (abs x)
;;;  ( cond ((> x 0) x)
;;;         ((= x 0) 0)
;;;         ((< x 0) (- x))))

;;;(define (abs x)
;;;  (cond ((< x 0) (- x))
;;;        (else x)))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

;;; define scope 5 < x < 10
(define (scope x)
  (and (> x 5) (< x 10)))

;;; define >=
;;;(define (>= x y)
;;;  (or (> x y) (= x y)))

;;; define >=
(define (>= x y)
  (not (< x y)))

;;; excise 1.1

10 ;10

(+ 5 4 3) ; 12

(- 9 1) ; 8

(/ 6 2) ; 3

(+ (* 2 4) (- 4 6)) ; (+ 8 -2) -> 6

(define a 3) ; define a is 3

(define b (+ a 1)) ; define b is (a + 1)

(+ a b (* a b)) ; (+ a (+ a 1) (* a (+ a 1))) -> (+ 3 4 (* 3 4)) -> (+ 3 4 12) -> 19

(= a b) ; 3 == 4 -> false

(if (and (> b a) (< b (* a b))) ; a < b && b < (a * b) -> 3 < 4 && 4 < 12
    b ; 4
    a); 3

(cond ((= a 4) 6) ; a == 4 -> 6
      ((= b 4) (+ 6 7 a)); b == 4 -> 6 + 7 + a
      (else 25)) ; -> 25

(+ 2 (if (> b a) b a)) ; (+ 2 4) -> 6

(* (cond ((> a b) a) ; (* 4 4) —> 16
         ((< a b) b)
         (else -1))
   (+ a 1))

;;; excise 1.2

(/ (+ 5
      4
      (- 2
         (- 3
            (+ 6
               (/ 4 5)))))
   (* 3
      (- 6 2)
      (- 2 7)))

;;; excise 1.3

(define (max-two-sum x y z)
  
  )




