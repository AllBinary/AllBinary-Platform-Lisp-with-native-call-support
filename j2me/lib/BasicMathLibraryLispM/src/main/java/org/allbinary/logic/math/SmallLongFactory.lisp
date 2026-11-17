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

(defclass SmallLongFactory (JObject)
  ((f_NEGATIVE_MAX :initform 0)
   (f_POSITIVE_MAX :initform 0)
   (f_INTEGER_ARRAY :initform nil)
   (f_STRING_ARRAY :initform nil)
   (f_MIN :initform 0)
   (f_lastMin :initform 0)
   (f_lastNegativeMin :initform 0)))

(defvar SmallLongFactory.jcell_instance :jnone)
(defun SmallLongFactory.jstatic_instance ()
  (when (eq SmallLongFactory.jcell_instance :jnone) (setf SmallLongFactory.jcell_instance (SmallLongFactory.jnew_0)))
  SmallLongFactory.jcell_instance)

    
(defun SmallLongFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SmallLongFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_initWithRange_2) (defgeneric jm_initWithRange_2 (this p1 p2)))
(defmethod jm_initWithRange_2 ((this SmallLongFactory) _value _negativeValue)
  (declare (ignorable this _value _negativeValue))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (JR.i32 (- _value 1)))
            (block jbreak (loop while (>= _index (slot-value this 'f_lastMin)) do
                (block jcontinue
            (setf (aref (slot-value this 'f_INTEGER_ARRAY) (JR.i32 (+ _index (slot-value this 'f_NEGATIVE_MAX)))) _index))
                (setf _index (JR.i32 (- _index 1))))))
        (progn
            (setf _index (JR.i32 (- _negativeValue 1)))
            (block jbreak (loop while (>= _index (slot-value this 'f_lastNegativeMin)) do
                (block jcontinue
            (setf (aref (slot-value this 'f_INTEGER_ARRAY) _index) (JR.i32 (- _index))))
                (setf _index (JR.i32 (- _index 1))))))
        (if (< (slot-value this 'f_lastMin) _value)
            (progn
            (setf (slot-value this 'f_lastMin) _value)
            (setf (slot-value this 'f_MIN) _value)))
        (if (< (slot-value this 'f_lastNegativeMin) _negativeValue)
            (progn
            (setf (slot-value this 'f_lastNegativeMin) _negativeValue))))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this SmallLongFactory))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (if (null (aref (slot-value this 'f_INTEGER_ARRAY) 0))
            (progn
            (if (or (< (slot-value this 'f_lastMin) (slot-value this 'f_POSITIVE_MAX)) (< (slot-value this 'f_lastNegativeMin) (slot-value this 'f_NEGATIVE_MAX)))
                (progn
                (progn
                    (setf _index (JR.i32 (- (slot-value this 'f_POSITIVE_MAX) 1)))
                    (block jbreak (loop while (>= _index (slot-value this 'f_lastMin)) do
                        (block jcontinue
                    (setf (aref (slot-value this 'f_INTEGER_ARRAY) (JR.i32 (+ _index (slot-value this 'f_NEGATIVE_MAX)))) _index))
                        (setf _index (JR.i32 (- _index 1))))))
                (progn
                    (setf _index (JR.i32 (- (slot-value this 'f_NEGATIVE_MAX) 1)))
                    (block jbreak (loop while (>= _index (slot-value this 'f_lastNegativeMin)) do
                        (block jcontinue
                    (setf (aref (slot-value this 'f_INTEGER_ARRAY) _index) (JR.i32 (- _index))))
                        (setf _index (JR.i32 (- _index 1))))))
                (setf (slot-value this 'f_lastMin) (slot-value this 'f_POSITIVE_MAX))
                (setf (slot-value this 'f_lastNegativeMin) (slot-value this 'f_NEGATIVE_MAX)))))))))

    
(defun SmallLongFactory.jnew_0 ()
  (let ((this (make-instance 'SmallLongFactory)))
    (setf (slot-value this 'f_NEGATIVE_MAX) 500)
    (setf (slot-value this 'f_POSITIVE_MAX) #x2D1)
    (setf (slot-value this 'f_INTEGER_ARRAY) (JR.newArray nil (JR.i32 (+ (slot-value this 'f_NEGATIVE_MAX) (slot-value this 'f_POSITIVE_MAX)))))
    (setf (slot-value this 'f_STRING_ARRAY) (JR.newArray nil (JR.i32 (+ (slot-value this 'f_NEGATIVE_MAX) (slot-value this 'f_POSITIVE_MAX)))))
    (setf (slot-value this 'f_MIN) 0)
    (setf (slot-value this 'f_lastMin) 0)
    (setf (slot-value this 'f_lastNegativeMin) 0)
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getInstanceNoThrow_1) (defgeneric jm_getInstanceNoThrow_1 (this p1)))
(defmethod jm_getInstanceNoThrow_1 ((this SmallLongFactory) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (if (> (JR.i64 (+ _index (slot-value this 'f_NEGATIVE_MAX))) (JR.i32 (- (length (slot-value this 'f_INTEGER_ARRAY)) 1)))
            (progn
            (return-from jreturn (aref (slot-value this 'f_INTEGER_ARRAY) (JR.i32 (+ (JR.i32 (- 1)) (slot-value this 'f_NEGATIVE_MAX)))))))
        (return-from jreturn (aref (slot-value this 'f_INTEGER_ARRAY) (JR.i32 (+ (JR.i32 _index) (slot-value this 'f_NEGATIVE_MAX))))))))

    
(unless (fboundp 'jm_getString_1) (defgeneric jm_getString_1 (this p1)))
(defmethod jm_getString_1 ((this SmallLongFactory) _index)
  (declare (ignorable this _index))
  (let (_i)
  (declare (ignorable _i))
    (block jreturn
        (setf _i (JR.i32 (+ _index (slot-value this 'f_NEGATIVE_MAX))))
        (if (null (aref (slot-value this 'f_STRING_ARRAY) _i))
            (progn
            (setf (aref (slot-value this 'f_STRING_ARRAY) _i) (JR.toString (aref (slot-value this 'f_INTEGER_ARRAY) _i)))))
        (return-from jreturn (aref (slot-value this 'f_STRING_ARRAY) _i)))))



