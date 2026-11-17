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

(defclass BasicDecimal (JObject)
  ((f_units :initform 0)
   (f_scaled :initform 0)
   (f_factor :initform 0)
   (f_factorValue :initform 0)))

(defvar BasicDecimal.jcell_ZERO_BIGDECIMAL :jnone)
(defun BasicDecimal.jstatic_ZERO_BIGDECIMAL ()
  (when (eq BasicDecimal.jcell_ZERO_BIGDECIMAL :jnone) (setf BasicDecimal.jcell_ZERO_BIGDECIMAL (BasicDecimal.jnew_1 0)))
  BasicDecimal.jcell_ZERO_BIGDECIMAL)

    
(defun BasicDecimal.jm_createBigDecimal_1 (_bigDecimal)
  (declare (ignorable _bigDecimal))
  (let ()
    (block jreturn
        (return-from jreturn (BasicDecimal.jnew_1 (jm_getUnscaled_0 _bigDecimal))))))

    
(defun BasicDecimal.jnew_1 (_units)
  (declare (ignorable _units))
  (let ((this (make-instance 'BasicDecimal)))
    
    
    (setf (slot-value this 'f_factor) (slot-value (ScaleFactorFactory.jm_getInstance_0) 'f_DEFAULT_SCALE_FACTOR))
    (setf (slot-value this 'f_factorValue) (slot-value (ScaleFactorFactory.jm_getInstance_0) 'f_DEFAULT_SCALE_VALUE))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) _units)
        (jm_updateScaled_0 this)))
    this))

    
(unless (fboundp 'jm_setint_1) (defgeneric jm_setint_1 (this p1)))
(defmethod jm_setint_1 ((this BasicDecimal) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) _value)
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_setlong_1) (defgeneric jm_setlong_1 (this p1)))
(defmethod jm_setlong_1 ((this BasicDecimal) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) _value)
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this BasicDecimal) _bigDecimal)
  (declare (ignorable this _bigDecimal))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) (jm_getUnscaled_0 _bigDecimal))
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_addint_1) (defgeneric jm_addint_1 (this p1)))
(defmethod jm_addint_1 ((this BasicDecimal) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) (JR.i64 (+ (slot-value this 'f_units) _value)))
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_addlong_1) (defgeneric jm_addlong_1 (this p1)))
(defmethod jm_addlong_1 ((this BasicDecimal) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) (JR.i64 (+ (slot-value this 'f_units) _value)))
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this BasicDecimal) _bigDecimal)
  (declare (ignorable this _bigDecimal))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) (JR.i64 (+ (slot-value this 'f_units) (jm_getUnscaled_0 _bigDecimal))))
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_subtractint_1) (defgeneric jm_subtractint_1 (this p1)))
(defmethod jm_subtractint_1 ((this BasicDecimal) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) (JR.i64 (- (slot-value this 'f_units) _value)))
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_subtractlong_1) (defgeneric jm_subtractlong_1 (this p1)))
(defmethod jm_subtractlong_1 ((this BasicDecimal) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) (JR.i64 (- (slot-value this 'f_units) _value)))
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_subtract_1) (defgeneric jm_subtract_1 (this p1)))
(defmethod jm_subtract_1 ((this BasicDecimal) _bigDecimal)
  (declare (ignorable this _bigDecimal))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) (JR.i64 (- (slot-value this 'f_units) (jm_getUnscaled_0 _bigDecimal))))
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_multiplyint_1) (defgeneric jm_multiplyint_1 (this p1)))
(defmethod jm_multiplyint_1 ((this BasicDecimal) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) (JR.i64 (* (slot-value this 'f_units) _value)))
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_multiplylong_1) (defgeneric jm_multiplylong_1 (this p1)))
(defmethod jm_multiplylong_1 ((this BasicDecimal) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) (JR.i64 (* (slot-value this 'f_units) _value)))
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_multiply_1) (defgeneric jm_multiply_1 (this p1)))
(defmethod jm_multiply_1 ((this BasicDecimal) _bigDecimal)
  (declare (ignorable this _bigDecimal))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) (JR.i64 (* (slot-value this 'f_units) (jm_getUnscaled_0 _bigDecimal))))
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_divideint_1) (defgeneric jm_divideint_1 (this p1)))
(defmethod jm_divideint_1 ((this BasicDecimal) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) (JR.ldiv (slot-value this 'f_units) _value))
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_dividelong_1) (defgeneric jm_dividelong_1 (this p1)))
(defmethod jm_dividelong_1 ((this BasicDecimal) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) (JR.ldiv (slot-value this 'f_units) _value))
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_divide_1) (defgeneric jm_divide_1 (this p1)))
(defmethod jm_divide_1 ((this BasicDecimal) _bigDecimal)
  (declare (ignorable this _bigDecimal))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_units) (JR.ldiv (slot-value this 'f_units) (jm_getUnscaled_0 _bigDecimal)))
        (jm_updateScaled_0 this))))

    
(unless (fboundp 'jm_getUnscaled_0) (defgeneric jm_getUnscaled_0 (this)))
(defmethod jm_getUnscaled_0 ((this BasicDecimal))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_units)))))

    
(unless (fboundp 'jm_updateScaled_0) (defgeneric jm_updateScaled_0 (this)))
(defmethod jm_updateScaled_0 ((this BasicDecimal))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_scaled) (JR.i32 (JR.ldiv (slot-value this 'f_units) (slot-value this 'f_factorValue)))))))

    
(unless (fboundp 'jm_getScaled_0) (defgeneric jm_getScaled_0 (this)))
(defmethod jm_getScaled_0 ((this BasicDecimal))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_scaled)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this BasicDecimal))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.str (slot-value this 'f_units))))))

    
(unless (fboundp 'jm_getScaledFactor_0) (defgeneric jm_getScaledFactor_0 (this)))
(defmethod jm_getScaledFactor_0 ((this BasicDecimal))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_factor)))))

    
(unless (fboundp 'jm_getScaledFactorValue_0) (defgeneric jm_getScaledFactorValue_0 (this)))
(defmethod jm_getScaledFactorValue_0 ((this BasicDecimal))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_factorValue)))))



