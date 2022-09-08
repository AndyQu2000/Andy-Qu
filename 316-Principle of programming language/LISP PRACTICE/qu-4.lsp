;Andy Qu
;solution to 1
;1. Define a recursive function SUM with the properties stated in problem A. Note that whereas NIL is not a valid argument of MY-SUM, NIL is a valid argument of SUM.
(defun SUM(L)
(if (endp L)
0
(let ((x (SUM (cdr L))))
(+ (car L) x))))

;solution to 2
;2. Define a recursive function NEG-NUMS with the properties stated in problem B. Note that NIL is a valid argument of NEG-NUMS.
(defun neg-nums (L)
(if (endp L)
NIL
(let ((X (neg-nums (cdr L))))
(if (minusp (car L))
(cons (car L) X)
X))))

;solution to 3
;3. Define a recursive function INC-LIST-2 with the properties stated in problem C. Note that the first argument of INC-LIST-2 may be NIL.
;INC-LIST-2 ( ) 5) => NIL
;(INC-LIST-2 '(3 2.1 1 7.9) 5) => (8 7.1 6 12.9)
(defun inc-list-2 (L N)
(if (endp L)
NIL
(let ((X (inc-list-2 (cdr L) N)))
(cons (+ (car L) N) X))))

;solution to 4
;4. Define a recursive function INSERT with the properties stated in problem D. Note that the second argument of INSERT may be NIL.
;(INSERT 8 ( )) => (8)
;(INSERT 4 '(0 0 1 2 4)) => (0 0 1 2 4 4)
;(INSERT 4 '(0 0 1 3 3 7 8 8)) => (0 0 1 3 3 4 7 8 8)
(defun insert (N L)
(if (endp L)
(list N)
(let ((X (insert N (cdr L))))
(if (> (car L) N) (cons N L)
(cons (car L) X)))))

;solution to 5
;5. Define a recursive function ISORT with the properties stated in problem E. Hint: In your definition of ISORT you should not have to call any function other than ISORT itself, INSERT, CAR, CDR, and ENDP or NULL. (An IF or COND form is not considered to be a function call, and will be needed.)
(defun ISORT (L)
(if (endp L)
nil
(let ((X (ISORT (cdr L))))
(insert (car L) X))))

;solution to 6
;6. Define a recursive function SPLIT-LIST with the properties stated in problem F.
;(SPLIT-LIST())=>(NILNIL)
;(SPLIT-LIST'(ABCD12345)) =>((AC135)(BD24))
;(SPLIT-LIST '(B C D 1 2 3 4 5)) => ((B D 2 4) (C 1 3 5))
;(SPLIT-LIST '(A)) => ((A) NIL)
(defun SPLIT-LIST (L)
(if (endp L)
(list () ())
(let ((X (SPLIT-LIST (cdr L))))
(list (cons (car L) (cadr X))
(car X) ))))

;solution to 7
;7. Define a recursive function PARTITION with the properties stated in problem G.
;(PARTITION '(7 5 3 2 1 5) 1) => (NIL (7 5 3 2 1 5))
;(PARTITION '(4 0 5 3 1 2 4 1 4) 4) => ((0 3 1 2 1) (4 5 4 4))
;(PARTITION ( ) 9) => (NIL NIL)
(defun PARTITION (L N)
(if (endp L)
(list nil nil)
(let ((X (PARTITION (cdr L) N)))
(cond ((< (car L) N) 
(list (cons (car L) (car X)) (cadr X)))
(t (list (car X) (cons (car L) (cadr X))))))))

;solution to 8
;8. Without using MEMBER, complete the following definition of a recursive function POS such
;that if L is a list and E is an element of L then (POS E L) returns the position of the first
;occurrence of E in L, but if L is a list and E is not an element of L then (POS E L) returns 0. 
(defun POS (E L)
(cond ((endp L) 0)
((equal E (car L)) 1)
(T (let ((X (POS E (cdr L))))
(if (equal X 0)
0
(+ X 1))))))

;solution to 9
;9. Define a recursive function SPLIT-NUMS such that if N is a non-negative integer then (SPLIT-NUMS N) returns a list of two lists: The first of the two lists consists of the even integers between 0 and N in descending order, and the other list consists of the odd integers between 0 and N in descending order. Examples: 
;(SPLIT-NUMS 0) => ((0) NIL) 
;(SPLIT-NUMS 7) => ((6 4 2 0) (7 5 3 1)) 
;(SPLIT-NUMS 8) => ((8 6 4 2 0) (7 5 3 1))
(defun SPLIT-NUMS (E)
(cond ((minusp E) NIL)
((zerop E) (list (list E) NIL))
(T (let ((X (SPLIT-NUMS (- E 1))))
(if (evenp E)
(list (cons E (car X)) (cadr X))
(list (car X) (cons E (cadr X))))))))

;solution to 10
;0. Define a recursive function SET-UNION such that if s1 and s2 are sets then (SET-UNION s1 s2) is a set that contains the elements of s1 and the elements of s2, but no other elements. Thus (SET-UNION '(A B C D) '(C E F)) should return a list consisting of the atoms A, B, C, D, E, and F (in any order) in which no atom occurs more than once.
(defun SET-UNION (s1 s2)
(cond ((endp s1) s2)
((endp s2) s1)
(T (let ((X (SET-UNION (cdr s1) s2)))
(if (member (car s1) X)
X
(cons (car s1) X))))))

;solution to 11
;11. Define a recursive function SET-REMOVE such that if s is a set and x is an atom in s then (SET-REMOVE x s) is a set that consists of all the elements of s except x, but if s is a set and x is an atom which is not in s then (SET-REMOVE x s) returns a set that is equal to s.
(defun SET-REMOVE( X S)
(cond ((endp S) (list ()))
((equal X (car S)) (cdr S))
(T (cons (car S) (SET-REMOVE X (cdr S))))))

;solution to 12
;12. Define a recursive function SET-EXCL-UNION such that if s1 and s2 are sets then (SET-EXCL-UNION s1 s2) is a set that contains all those atoms that are elements of exactly one of s1 and s2, but no other atoms. (SET-EXCL-UNION s1 s2) does not contain any atoms that are neither in s1 nor in s2, and also does not contain the atoms that are in both of s1 and s2. For example, (SET-EXCL-UNION '(A B C D) '(E C F G A)) should return a list consisting of the atoms B, D, E, F, and G (in any order) in which no atom occurs more than once.
(defun SET-EXCL-UNION (s1 s2)
(cond ((endp s1) s2)
((endp s2) s1)
(T (let ((X (SET-EXCL-UNION (cdr s1) s2)))
(if (member (car s1) X) 
(SET-REMOVE (car s1) X)
(cons (car s1) X))))))

;solution to 13
;13. Define a recursive function SINGLETONS such that if e is any list of numbers and/or symbols then (SINGLETONS e) is a set that consists of all the atoms that occur just once in
(defun singletons (e)
(cond ((endp e) nil)
((member (car e) (cdr e))
(set-remove (car e) (singletons (cdr e))))
(t (cons (car e) (singletons (cdr e))))))