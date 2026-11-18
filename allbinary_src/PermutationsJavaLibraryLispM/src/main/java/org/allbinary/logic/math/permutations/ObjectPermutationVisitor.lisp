;;;; Generated Code Do Not Modify
;;;; package org.allbinary.logic.math.permutations

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ObjectPermutationVisitor (Visitor)
  ((f_data :initform nil)
   (f_stringBuilder :initform nil)))

    
(defun ObjectPermutationVisitor.jnew_1 (_data)
  (declare (ignorable _data))
  (let ((this (make-instance 'ObjectPermutationVisitor)))
    
    (setf (slot-value this 'f_stringBuilder) (StringMaker.jnew_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_data) _data)))
    this))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this ObjectPermutationVisitor) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (jm_delete_2 (slot-value this 'f_stringBuilder) 0 (jm_length_0 (slot-value this 'f_stringBuilder)))
        (jm_print_2 this (slot-value this 'f_data) (slot-value this 'f_stringBuilder))
        (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))))

    
(unless (fboundp 'jm_print_1) (defgeneric jm_print_1 (this p1)))
(defmethod jm_print_1 ((this ObjectPermutationVisitor) _data)
  (declare (ignorable this _data))
  (let (_stringBuilder)
  (declare (ignorable _stringBuilder))
    (block jreturn
        (setf _stringBuilder (StringMaker.jnew_0))
        (jm_print_2 this _data _stringBuilder))))

    
(unless (fboundp 'jm_print_2) (defgeneric jm_print_2 (this p1 p2)))
(defmethod jm_print_2 ((this ObjectPermutationVisitor) _data _stringBuilder)
  (declare (ignorable this _data _stringBuilder))
  (let (_tsUtil _size _i)
  (declare (ignorable _tsUtil _size _i))
    (block jreturn
        (setf _tsUtil (TsUtil.jm_getInstance_0))
        (setf _size (length _data))
        (progn
            (setf _i 0)
            (block jbreak (loop while (< _i _size) do
                (block jcontinue
            (jm_appendint_1 _stringBuilder (jm_hashCode_1 _tsUtil (aref _data _i)))
            (jm_append_1 _stringBuilder (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE)))
                (setf _i (JR.i32 (+ _i 1))))))
        (JR.println (jm_toString_0 _stringBuilder)))))



