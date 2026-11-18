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
;;;; package org.allbinary.logic.math.vector

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AxisMathVectorUtil (JObject)
  ((f_noDecimalTrigTable :initform nil)))

(defvar AxisMathVectorUtil.jcell_instance :jnone)
(defun AxisMathVectorUtil.jstatic_instance ()
  (when (eq AxisMathVectorUtil.jcell_instance :jnone) (setf AxisMathVectorUtil.jcell_instance (AxisMathVectorUtil.jnew_0)))
  AxisMathVectorUtil.jcell_instance)
(defun (setf AxisMathVectorUtil.jstatic_instance) (value) (setf AxisMathVectorUtil.jcell_instance value))

(defun AxisMathVectorUtil.jnew_0 ()
  (let ((this (make-instance 'AxisMathVectorUtil)))
    (setf (slot-value this 'f_noDecimalTrigTable) (NoDecimalTrigTable.jm_getInstance_0))
    this))

    
(defun AxisMathVectorUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AxisMathVectorUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_calculateX_2) (defgeneric jm_calculateX_2 (this p1 p2)))
(defmethod jm_calculateX_2 ((this AxisMathVectorUtil) _magnitude _angle)
  (declare (ignorable this _magnitude _angle))
  (let ()
    (block jreturn
        (return-from jreturn (JR.idiv (JR.i64 (* _magnitude (jm_cos_1 (slot-value this 'f_noDecimalTrigTable) _angle))) 10)))))

    
(unless (fboundp 'jm_calculateY_2) (defgeneric jm_calculateY_2 (this p1 p2)))
(defmethod jm_calculateY_2 ((this AxisMathVectorUtil) _magnitude _angle)
  (declare (ignorable this _magnitude _angle))
  (let ()
    (block jreturn
        (return-from jreturn (JR.idiv (JR.i64 (* _magnitude (jm_sin_1 (slot-value this 'f_noDecimalTrigTable) _angle))) 10)))))

    
(unless (fboundp 'jm_calculateZ_2) (defgeneric jm_calculateZ_2 (this p1 p2)))
(defmethod jm_calculateZ_2 ((this AxisMathVectorUtil) _magnitude _otherAngle)
  (declare (ignorable this _magnitude _otherAngle))
  (let ()
    (block jreturn
        (return-from jreturn (JR.idiv (JR.i64 (* _magnitude (jm_sin_1 (slot-value this 'f_noDecimalTrigTable) _otherAngle))) 10)))))



