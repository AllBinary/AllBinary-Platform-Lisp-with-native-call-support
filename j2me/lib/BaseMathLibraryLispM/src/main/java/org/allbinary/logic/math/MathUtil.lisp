;;;; Generated Code Do Not Modify
;;;; package org.allbinary.logic.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MathUtil (JObject)
  ((f_ACCURACY :initform 0)))

(defvar MathUtil.jcell_instance :jnone)
(defun MathUtil.jstatic_instance ()
  (when (eq MathUtil.jcell_instance :jnone) (setf MathUtil.jcell_instance (MathUtil.jnew_0)))
  MathUtil.jcell_instance)
(defun (setf MathUtil.jstatic_instance) (value) (setf MathUtil.jcell_instance value))

(defun MathUtil.jnew_0 ()
  (let ((this (make-instance 'MathUtil)))
    (setf (slot-value this 'f_ACCURACY) 100)
    this))

    
(defun MathUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MathUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getTotalDigits_1) (defgeneric jm_getTotalDigits_1 (this p1)))
(defmethod jm_getTotalDigits_1 ((this MathUtil) _digits)
  (declare (ignorable this _digits))
  (let (_total)
  (declare (ignorable _total))
    (block jreturn
        (setf _total 0)
        (block jbreak (loop while (> _digits 0) do
                (block jcontinue
            (setf _digits (JR.idiv _digits 10))
            (setf _total (JR.i32 (+ _total 1))))))
        (return-from jreturn _total))))

    
(unless (fboundp 'jm_sqrt_1) (defgeneric jm_sqrt_1 (this p1)))
(defmethod jm_sqrt_1 ((this MathUtil) _value)
  (declare (ignorable this _value))
  (let (_accumulated _result)
  (declare (ignorable _accumulated _result))
    (block jreturn
        (if (<= _value 1)
            (progn
            (return-from jreturn _value)))
        (setf _accumulated (ash _value (- (logand 1 31))))
        (setf _result (ash (JR.i32 (+ _accumulated (JR.idiv _value _accumulated))) (- (logand 1 31))))
        (block jbreak (loop
                (block jcontinue
            (setf _accumulated _result)
            (setf _result (ash (JR.i32 (+ _accumulated (JR.idiv _value _accumulated))) (- (logand 1 31)))))
                (unless (> _accumulated _result) (return-from jbreak))))
        (return-from jreturn _accumulated))))

    
(unless (fboundp 'jm_sqrtd_1) (defgeneric jm_sqrtd_1 (this p1)))
(defmethod jm_sqrtd_1 ((this MathUtil) _x)
  (declare (ignorable this _x))
  (let (_result _index)
  (declare (ignorable _result _index))
    (block jreturn
        (if (= _x 0)
            (progn
            (return-from jreturn (coerce 0.0f0 'double-float))))
        (if (< _x 0)
            (progn
            (return-from jreturn (coerce (- 1.0f0) 'double-float))))
        (setf _result (coerce _x 'double-float))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (slot-value this 'f_ACCURACY)) do
                (block jcontinue
            (setf _result (/ (+ _result (/ (coerce _x 'double-float) _result)) 2.0d0)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _result))))

    
(unless (fboundp 'jm_abs_1) (defgeneric jm_abs_1 (this p1)))
(defmethod jm_abs_1 ((this MathUtil) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (return-from jreturn (if (< _value 0) (JR.i32 (- _value)) _value)))))

    
(unless (fboundp 'jm_abslong_1) (defgeneric jm_abslong_1 (this p1)))
(defmethod jm_abslong_1 ((this MathUtil) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (return-from jreturn (if (< _value 0) (JR.i64 (- _value)) _value)))))

    
(unless (fboundp 'jm_min_2) (defgeneric jm_min_2 (this p1 p2)))
(defmethod jm_min_2 ((this MathUtil) _value _value2)
  (declare (ignorable this _value _value2))
  (let ()
    (block jreturn
        (return-from jreturn (if (<= _value _value2) _value _value2)))))

    
(unless (fboundp 'jm_max_2) (defgeneric jm_max_2 (this p1 p2)))
(defmethod jm_max_2 ((this MathUtil) _value _value2)
  (declare (ignorable this _value _value2))
  (let ()
    (block jreturn
        (return-from jreturn (if (>= _value _value2) _value _value2)))))



