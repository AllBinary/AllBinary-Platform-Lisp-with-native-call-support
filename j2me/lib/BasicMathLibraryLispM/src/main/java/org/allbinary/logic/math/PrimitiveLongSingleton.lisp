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
;;;; package org.allbinary.logic.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PrimitiveLongSingleton (JObject)
  ((f_UNK :initform nil)
   (f_NUMBER_ARRAY :initform nil)
   (f_NUMBER_CHAR_ARRAY :initform nil)
   (f_NUMBER_CHAR_ARRAYS :initform nil)
   (f_ZERO :initform nil)))

(defvar PrimitiveLongSingleton.jcell_instance :jnone)
(defun PrimitiveLongSingleton.jstatic_instance ()
  (when (eq PrimitiveLongSingleton.jcell_instance :jnone) (setf PrimitiveLongSingleton.jcell_instance (PrimitiveLongSingleton.jnew_0)))
  PrimitiveLongSingleton.jcell_instance)
(defun (setf PrimitiveLongSingleton.jstatic_instance) (value) (setf PrimitiveLongSingleton.jcell_instance value))

(defun PrimitiveLongSingleton.jnew_0 ()
  (let ((this (make-instance 'PrimitiveLongSingleton)))
    (setf (slot-value this 'f_UNK) (vector (char-code #\U) (char-code #\n) (char-code #\k)))
    (setf (slot-value this 'f_NUMBER_ARRAY) (vector 0 1 2 3 4 5 6 7 8 9))
    (setf (slot-value this 'f_NUMBER_CHAR_ARRAY) (vector (char-code #\0) (char-code #\1) (char-code #\2) (char-code #\3) (char-code #\4) (char-code #\5) (char-code #\6) (char-code #\7) (char-code #\8) (char-code #\9)))
    (setf (slot-value this 'f_NUMBER_CHAR_ARRAYS) (vector (vector (char-code #\0)) (vector (char-code #\1)) (vector (char-code #\2)) (vector (char-code #\3)) (vector (char-code #\4)) (vector (char-code #\5)) (vector (char-code #\6)) (vector (char-code #\7)) (vector (char-code #\8)) (vector (char-code #\9))))
    (setf (slot-value this 'f_ZERO) (vector (aref (slot-value this 'f_NUMBER_CHAR_ARRAY) 0)))
    this))

    
(defun PrimitiveLongSingleton.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PrimitiveLongSingleton.jstatic_instance)))))

    
(unless (fboundp 'jm_getNumberFromChar_1) (defgeneric jm_getNumberFromChar_1 (this p1)))
(defmethod jm_getNumberFromChar_1 ((this PrimitiveLongSingleton) _numberAsChar)
  (declare (ignorable this _numberAsChar))
  (let (_size _index)
  (declare (ignorable _size _index))
    (block jreturn
        (setf _size (length (slot-value this 'f_NUMBER_CHAR_ARRAY)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (if (= (aref (slot-value this 'f_NUMBER_CHAR_ARRAY) _index) _numberAsChar)
                (progn
                (return-from jreturn (aref (slot-value this 'f_NUMBER_ARRAY) _index)))))
                (setf _index (JR.i32 (+ _index 1))))))
        (error (JR.newException "Exception" (jm_toString_0 (jm_appendchar_1 (jm_append_1 (StringMaker.jnew_0) "numberAsChar was not in array: ") _numberAsChar)))))))



