;Andy Qu

;1. Define a LISP function MIN-2 with the following properties. MIN-2 takes two arguments, A and B. If the arguments A and B are numbers such that A ≤ B, then MIN-2 returns A. If A and B are numbers such that A > B, then MIN-2 returns B. If A or B is not a number, then MIN-2 returns the symbol ERROR.
;Examples: (MIN-2 21.3 7/2) => 7/2 (MIN-2 17.5 29) => 17.5 (MIN-2 5 'APPLE) => ERROR (MIN-2 '(31) '(54)) => ERROR

;2.Write a LISP function SAFE-AVG that takes 2 arguments and returns the average of those arguments if they are numbers. If one or both of the arguments is not a number, the function should return NIL.
;Examples: (SAFE-AVG 23 47.4) => 35.2 (SAFE-AVG 3 8) => 11/2(SAFE-AVG '(23.1) 47.3) => NIL (SAFE-AVG 'ORANGE 'PLUM) => NIL

;3.Write a LISP predicate ODD-GT-MILLION that takes one argument, and which returns T if its argument is an odd integer greater than a million, but returns NIL otherwise. Hint: Make use of the predicate INTEGERP.Examples:
;(ODD-GT-MILLION 92010231) => T
;(ODD-GT-MILLION 17) => NIL
;(ODD-GT-MILLION 92010232) => NIL
;(ODD-GT-MILLION 21/5) => NIL
;(ODD-GT-MILLION 1718671.24) => NIL
;(ODD-GT-MILLION '(2010231)) => NIL
;(ODD-GT-MILLION 'APPLE) => NIL

;4.Re-read the discussion of MEMBER in sec. 6.6 of Touretzky or on p. 51 of Winston & Horn. Then write a LISP predicate MULTIPLE-MEMBER that takes two arguments and behaves as follows: If the first argument is a symbol or number and the second is a list, then MULTIPLE-MEMBER returns a true value if the first argument occurs at least twice in the second argument, and returns NIL otherwise.
;Examples: (MULTIPLE-MEMBER 'A '(B A B B A C A D)) => (A C A D) (MULTIPLE-MEMBER 'A '(B A B B C C A D)) => (A D) 
;(MULTIPLE-MEMBER 'A '(B A B B C D)) => NIL
;[Notice that the behavior of MULTIPLE-MEMBER is unspecified in cases where the first argument is not a symbol or number, and in cases where the second argument is not a list. In other words, your definition may return any value or produce an evaluation error in such cases.]

;5.Define a LISP function MONTH->INTEGER which takes as argument a symbol that should be the name of a month, and which returns the number of the month. For example:
;(MONTH->INTEGER 'MARCH) => 3 (MONTH->INTEGER 'JUNE) => 6If the argument is not a symbol that is the name of a month, the function should return the symbol ERROR. For example:
;(MONTH->INTEGER 'C) => ERROR (MONTH->INTEGER 7) => ERROR (MONTH->INTEGER 'QUOTE) => ERROR (MONTH->INTEGER '(MAY)) => ERROR

;6.Define a LISP function SCORE->GRADE which takes a single argument, s, and returns a symbol
;according to the following scheme: s ≥ 90 A
;87 ≤ s < 90 A- 83 ≤ s < 87 B+ 80 ≤ s < 83 B 77 ≤ s < 80 B-
;73 ≤ s < 77 C+ 70 ≤ s < 73 C 60 ≤ s < 70 D F
;s < 60If the argument s is not a number then the function should return NIL.
;Examples: (SCORE->GRADE 86.3) => B+
;(SCORE->GRADE 59.9) => F
;(SCORE->GRADE 106) => A
;(SCORE->GRADE -10.1) => F
;(SCORE->GRADE 83) => B+
;(SCORE->GRADE 74) => C+
;(SCORE->GRADE 67) => D
;(SCORE->GRADE '(86.3)) => NIL
;(SCORE->GRADE 'DOG) => NIL

;7.Define a LISP function GT with the following properties. GT takes two arguments. It returns T if the arguments are numbers and the first argument is greater than the second; otherwise it returns NIL.
; Examples: (GT 0 -1)=>T (GT -3 -7)=>T (GT 40 40)=>NIL (GT 'B 'A)=>NIL

;8.Define a LISP function SAME-PARITY with the following properties. SAME-PARITY takes two arguments. It returns T if both arguments are even integers or if both arguments are odd
;integers. In all other cases SAME-PARITY returns NIL.Examples: (SAME-PARITY 0 –1) => NIL (SAME-PARITY –3 –9) => T (SAME-PARITY 30 90) => T
;(SAME-PARITY 'A 'A) => NIL (SAME-PARITY 4.1 3.7) => NIL

;9.Define a LISP function SAFE-DIV with the following properties. SAFE-DIV takes two arguments. If both arguments are numbers and the second does not satisfy ZEROP, then the function returns the result of dividing the first argument by the second. In all other cases it returns NIL.Examples: (SAFE-DIV 6 4) => 3/2 (SAFE-DIV 6.0 4) => 1.5 (SAFE-DIV 6 0) => NIL
;(SAFE-DIV 6 0.0) => NIL (SAFE-DIV '(6) 4) => NIL (SAFE-DIV 6 T) => NIL


;solution to  problem 1
(defun MIN-2 (a b)
(if (and (numberp a) (numberp b)) 
(cond ((<= a b) a) ((> a b) b)) 'ERROR))
;solution to  problem 2
(defun SAFE-AVG (a b)
(and (numberp a)(numberp b) (/ (+ a b) 2)))
;solution to  problem 3
(defun ODD-GT-MILLION (a)
(and (and (and (integerp a)) (oddp a))(> a 1000000)))
;solution to  problem 4
(defun MULTIPLE-MEMBER (x l)
(member x (cdr (member x l))))
;solution to  problem 5
(defun MONTH->INTEGER (x)
(case x
(JANUARY 1)
(FEBRUARY 2)
(MARCH 3)
(APRIL 4)
(MAY 5)
(JUNE 6)
(JULY 7)
(AUGUST 8)
(SEPTEMBER 9)
(OCTOBER 10)
(NOVEMBER 11)
(DECEMBER 12)
(otherwise 'ERROR)))

;solution to  problem 6
(defun SCORE->GRADE(a)
(if (numberp a)
(cond ((>= a 90) 'A)
((>= a 87) 'A-)
((>= a 83) 'B+)
((>= a 80) 'B)
((>= a 77) 'B-)
((>= a 73) 'C+)
((>= a 70) 'C)
((>= a 60) 'D)
((< a 60) 'F)
)))


;solution to  problem 7
(defun GT (a b)
(and (and (numberp a) (numberp b)) (> a b)))
(print (GT 0 -1))
;solution to  problem 8
(defun SAME-PARITY (a b)
(or (and (and (numberp a) (numberp b))
(and (integerp a) (integerp b))
(and (evenp a) (evenp b)) )
(and (and (numberp a) (numberp b))
(and (integerp a) (integerp b))
(and (oddp a) (oddp b)) )))
(print (SAME-PARITY 0 -1))
;solution to  problem 9
(defun SAFE-DIV (a b)
(and (and (and (numberp a)
(numberp b))
(not (zerop b)))
(/ a b)))
