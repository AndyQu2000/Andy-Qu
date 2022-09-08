;Andy Qu

;solution to problem 1
;A. INDEX is a function that is already defined on euclid and venus. If N is any positive integer and L is any list, then (INDEX N L) returns the Nth element of L if N does not exceed the length of L; if N exceeds the length of the list L, then (INDEX N L) returns the symbol ERROR. For example, 
;(INDEX3'(AS(AS)(A)D))=>(AS) 
;(INDEX6'(AS(AS)(A)D))=>ERROR 
(defun INDEX (N L)
(if (endp L)
'error
(if (equal N 1) (car L)
(let ((X (index (- N 1)(cdr L))))
X))))
;solution to problem 2
;B. MIN-FIRST is a function that is already defined on euclid and venus; if L is any nonempty list of real numbers then (MIN-FIRST L) is a list whose CAR is the minimum of the numbers in L and whose CDR is the list obtained when the first occurrence of that value is removed from L. (Thus (MIN-FIRST L) is "L with the first occurrence of its minimum value moved to the front".) 
;For example, 
;(MIN-FIRST '(0 3 1 1 0 3 5)) => (0 3 1 1 0 3 5)
;(MIN-FIRST '(4 3 1 1 0 3 5 0 3 0 2)) => (0 4 3 1 1 3 5 0 3 0 2).
(defun min-first (L)
(cond ( (endp (cdr L)) L)
(T (let ((X (min-first (cdr L))))
(if (> (car L) (car X))
(cons (car X) (cons (car L) (cdr X)))
L)))))
;solution to problem 3
;C. SSORT is a function that is already defined on euclid and venus; if L is any list of real numbers then (SSORT L) is a list of those numbers in ascending order. Complete the following definition of a function MY-SSORT without making further calls of SSORT and without calling MY-SSORT recursively, in such a way that if L is any nonempty list of real numbers then (MY-SSORT L) is equal to (SSORT L).
(defun ssort (l)
(cond ((endp l) nil)
(T (let ((l1 (min-first l)))
(cons (car l1) (ssort (cdr l1)))))))
;solution to problem 4
;complete the following definition of a recursive function QSORT such that if L is a list of real numbers then (QSORT L) is a list of those numbers in ascending order.
(defun QSORT (L) 
(if (endp L)
nil
(let ((PL (PARTITION (cdr L) (car L))))
(append (qsort (car PL))
(cons (car L) (qsort (cadr PL)))))))
;solution to problem 5
;Define a Lisp function MERGE-LISTS such that if each of L1 and L2 is a list of real numbers in ascending order then (MERGE-LISTS L1 L2) returns the list of numbers in ascending order that is
;obtained by merging L1 and L2. Your definition must not call any sorting function. 
(DEFUN MERGE-LISTS (L1 L2)
(COND ((ENDP L1) L2)
((ENDP L2) L1)
((> (CAR L1) (CAR L2))
(LET ((X (MERGE-LISTS L1 (CDR L2))))
(CONS (CAR L2) X)))
(T (LET ((X (MERGE-LISTS (CDR L1) L2)))
(CONS (CAR L1) X)))))
;solution to problem 6
;6. Use the function SPLIT-LIST from Lisp Assignment 4 and MERGE-LISTS to define a recursive Lisp function MSORT such that if L is a list of real numbers then (MSORT L) is a list consisting of the elements of L in ascending order. In the definition of MSORT you may call SPLIT-LIST,
;MSORT itself, MERGE-LISTS, CAR, CDR, CADR and ENDP, but you should not call any other function. Be sure to use LET or LET*, so that MSORT only calls SPLIT-LIST once. Hint: Does a list of length 1 satisfy condition BC-3 (see page 2) for one of your function's recursive calls?
(DEFUN MSORT (L)
(IF (ENDP (CDR L))
L
(LET ((X (SPLIT-LIST L)))
(LET ((Y (MSORT (CAR X)))
(Z (MSORT (CADR X))))
(MERGE-LISTS Y Z)))))
;solution to problem 7
;7. Do exercise 10.4(a) on page 418 of Sethi, but use Common Lisp instead of Scheme. Name your function REMOVE-ADJ-DUPL.
;(a b a a a c c) => (a b a c)
(DEFUN REMOVE-ADJ-DUPL (L)
(IF (ENDP L)
NIL
(LET ((X (REMOVE-ADJ-DUPL (CDR L))))
(IF (EQUAL (CAR L) (CAR X))
X
(CONS (CAR L) X)))))
;solution to problem 8
;8. Do exercise 10.4(b) on the same page in Common Lisp. Name your function UNREPEATED-ELTS.
;(a b a a a c c) => (a b)
(defun unrepeated-elts (l)
(cond ((endp l) nil)
((or (endp (cdr l))
(not (equal (car l) (cadr l))))
(cons (car l) (unrepeated-elts (cdr l))))
((or (endp (cddr l))
(not (equal (car l) (caddr l))))
(unrepeated-elts (cddr l)))
(t (unrepeated-elts (cdr l)))))
;solution to problem 9
;Do exercise 10.4(c) on the same page in Common Lisp. Name your function REPEATED-ELTS.
;(a b a a a c c) => (a c)
(defun repeated-elts(l)
(cond ((endp l) nil)
((or (endp (cdr l))
(not (equal (car l) (cadr l))))
(repeated-elts (cdr l)))
((or (endp (cddr l))
(not (equal (car l) (caddr l))))
(cons (car l) (repeated-elts (cddr l))))
(t (repeated-elts (cdr l)))))
;solution to problem 10
; Do exercise 10.4(d) on the same page in Common Lisp. Name your function COUNT-REPETITIONS.
;(a b a a a c c) => ((1 a) (1 b) (3 a) (2 c))
(DEFUN COUNT-REPETITIONS (L)
(IF (ENDP L)
NIL
(LET ((X (COUNT-REPETITIONS (CDR L))))
(IF (EQUAL (CAR L) (CADR L))
(APPEND (LIST (LIST (+ 1 (CAAR X)) (CADAR X)))
(CDR X))
(APPEND (LIST (LIST 1 (CAR L))) X)))))
