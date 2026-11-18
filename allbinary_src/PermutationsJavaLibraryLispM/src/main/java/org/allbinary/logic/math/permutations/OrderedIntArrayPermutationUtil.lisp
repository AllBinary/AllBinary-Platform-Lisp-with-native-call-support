;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2011 AllBinary 
;;;;  
;;;; By agreeing to this license you and any business entity you represent are 
;;;; legally bound to the AllBinary Open License Version 1 legal agreement. 
;;;;  
;;;; You may obtain the AllBinary Open License Version 1 legal agreement from 
;;;; AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
;;;;  
;;;; Created By: Travis Berthelot 
;;;;   
;;;; Generated Code Do Not Modify
;;;; package org.allbinary.logic.math.permutations

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OrderedIntArrayPermutationUtil (JObject)
  ((f_TOTAL_ITERATIONS_TABLE :initform nil)
   (f_FINISHED :initform nil)))

(defvar OrderedIntArrayPermutationUtil.jcell_instance :jnone)
(defun OrderedIntArrayPermutationUtil.jstatic_instance ()
  (when (eq OrderedIntArrayPermutationUtil.jcell_instance :jnone) (setf OrderedIntArrayPermutationUtil.jcell_instance (OrderedIntArrayPermutationUtil.jnew_0)))
  OrderedIntArrayPermutationUtil.jcell_instance)
(defun (setf OrderedIntArrayPermutationUtil.jstatic_instance) (value) (setf OrderedIntArrayPermutationUtil.jcell_instance value))

    
(defun OrderedIntArrayPermutationUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OrderedIntArrayPermutationUtil.jstatic_instance)))))

    
(defun OrderedIntArrayPermutationUtil.jnew_0 ()
  (let ((this (make-instance 'OrderedIntArrayPermutationUtil)))
    (setf (slot-value this 'f_TOTAL_ITERATIONS_TABLE) "Total Iterations: ")
    (setf (slot-value this 'f_FINISHED) (JR.unescape "\\nFINISHED"))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getNext_1) (defgeneric jm_getNext_1 (this p1)))
(defmethod jm_getNext_1 ((this OrderedIntArrayPermutationUtil) _data)
  (declare (ignorable this _data))
  (let (_length _i _j)
  (declare (ignorable _length _i _j))
    (block jreturn
        (setf _length (length _data))
        (setf _i (JR.i32 (- _length 1)))
        (block jbreak (loop while (>= (aref _data (JR.i32 (- _i 1))) (aref _data _i)) do
                (block jcontinue
            (setf _i (JR.i32 (- _i 1))))))
        (setf _j _length)
        (block jbreak (loop while (<= (aref _data (JR.i32 (- _j 1))) (aref _data (JR.i32 (- _i 1)))) do
                (block jcontinue
            (setf _j (JR.i32 (- _j 1))))))
        (jm_swap_3 this _data (JR.i32 (- _i 1)) (JR.i32 (- _j 1)))
        (setf _i (JR.i32 (+ _i 1)))
        (setf _j _length)
        (block jbreak (loop while (< _i _j) do
                (block jcontinue
            (jm_swap_3 this _data (JR.i32 (- _i 1)) (JR.i32 (- _j 1)))
            (setf _i (JR.i32 (+ _i 1)))
            (setf _j (JR.i32 (- _j 1)))))))))

    
(unless (fboundp 'jm_swap_3) (defgeneric jm_swap_3 (this p1 p2 p3)))
(defmethod jm_swap_3 ((this OrderedIntArrayPermutationUtil) _data _a _b)
  (declare (ignorable this _data _a _b))
  (let (_temp)
  (declare (ignorable _temp))
    (block jreturn
        (setf _temp (aref _data _a))
        (setf (aref _data _a) (aref _data _b))
        (setf (aref _data _b) _temp))))

    
(unless (fboundp 'jm_factorial_1) (defgeneric jm_factorial_1 (this p1)))
(defmethod jm_factorial_1 ((this OrderedIntArrayPermutationUtil) _dataLength)
  (declare (ignorable this _dataLength))
  (let (_temp _i)
  (declare (ignorable _temp _i))
    (block jreturn
        (setf _temp 1)
        (if (> _dataLength 1)
            (progn
            (progn
                (setf _i 1)
                (block jbreak (loop while (<= _i _dataLength) do
                    (block jcontinue
                (setf _temp (JR.i64 (* _temp _i))))
                    (setf _i (JR.i32 (+ _i 1))))))))
        (return-from jreturn _temp))))

    
(unless (fboundp 'jm_generate_2) (defgeneric jm_generate_2 (this p1 p2)))
(defmethod jm_generate_2 ((this OrderedIntArrayPermutationUtil) _data _visitor)
  (declare (ignorable this _data _visitor))
  (let (_iterations _count)
  (declare (ignorable _iterations _count))
    (block jreturn
        (setf _iterations (jm_factorial_1 this (length _data)))
        (JR.print (slot-value this 'f_TOTAL_ITERATIONS_TABLE))
        (JR.println (JR.str _iterations))
        (progn
            (setf _count 0)
            (block jbreak (loop while (< _count (JR.i64 (- _iterations 1))) do
                (block jcontinue
            (jm_getNext_1 this _data)
            (jm_visit_1 _visitor this))
                (setf _count (JR.i64 (+ _count 1))))))
        (JR.println (slot-value this 'f_FINISHED)))))

    
(defun OrderedIntArrayPermutationUtil.jm_main_1 (_args)
  (declare (ignorable _args))
  (let (_TOTAL _data _i _permutationVisitor _ORIGINAL_DATA_LABEL)
  (declare (ignorable _TOTAL _data _i _permutationVisitor _ORIGINAL_DATA_LABEL))
    (block jreturn
        (setf _TOTAL 3)
        (setf _data (JR.newArray 0 _TOTAL))
        (progn
            (setf _i 0)
            (block jbreak (loop while (< _i _TOTAL) do
                (block jcontinue
            (setf (aref _data _i) _i))
                (setf _i (JR.i32 (+ _i 1))))))
        (setf _permutationVisitor (IntPermutationVisitor.jnew_1 _data))
        (setf _ORIGINAL_DATA_LABEL "Original Data: ")
        (JR.print _ORIGINAL_DATA_LABEL)
        (jm_print_2 _permutationVisitor _data (StringMaker.jnew_0))
        (jm_generate_2 (OrderedIntArrayPermutationUtil.jm_getInstance_0) _data _permutationVisitor))))



