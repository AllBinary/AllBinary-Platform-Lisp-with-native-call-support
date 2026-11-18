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
;;;; package org.allbinary.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AngleInfo (JObject)
  ((f_angleIncrementInfo :initform nil)
   (f_angle :initform 0)
   (f_frameUtil :initform nil)))

(defvar AngleInfo.jcell_ANGLE :jnone)
(defun AngleInfo.jstatic_ANGLE ()
  (when (eq AngleInfo.jcell_ANGLE :jnone) (setf AngleInfo.jcell_ANGLE "Angle: "))
  AngleInfo.jcell_ANGLE)
(defun (setf AngleInfo.jstatic_ANGLE) (value) (setf AngleInfo.jcell_ANGLE value))

    
(defun AngleInfo.jm_getInstance_1 (_angleIncrement)
  (declare (ignorable _angleIncrement))
  (let ()
    (block jreturn
        (return-from jreturn (AngleInfo.jnew_1 (jm_getAt_1 (AngleIncrementInfoFactory.jm_getInstance_0) _angleIncrement))))))

    
(defun AngleInfo.jnew_1 (_angleIncrementInfo)
  (declare (ignorable _angleIncrementInfo))
  (let ((this (make-instance 'AngleInfo)))
    
    (setf (slot-value this 'f_angle) 0)
    (setf (slot-value this 'f_frameUtil) (FrameUtil.jm_getInstance_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_angleIncrementInfo) _angleIncrementInfo)))
    this))

    
(unless (fboundp 'jm_adjustAngle_1) (defgeneric jm_adjustAngle_1 (this p1)))
(defmethod jm_adjustAngle_1 ((this AngleInfo) _frame)
  (declare (ignorable this _frame))
  (let (_newAngle)
  (declare (ignorable _newAngle))
    (block jreturn
        (setf _newAngle (JR.i32 (- (JR.i32 (* (jm_getAngleIncrement_0 (slot-value this 'f_angleIncrementInfo)) _frame)) 90)))
        (jm_setAngle_1 this (JR.i16 (jm_adjustAngleToFrameAngle_1 (slot-value this 'f_frameUtil) _newAngle))))))

    
(unless (fboundp 'jm_getAngle_0) (defgeneric jm_getAngle_0 (this)))
(defmethod jm_getAngle_0 ((this AngleInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_angle)))))

    
(unless (fboundp 'jm_setAngle_1) (defgeneric jm_setAngle_1 (this p1)))
(defmethod jm_setAngle_1 ((this AngleInfo) _angle)
  (declare (ignorable this _angle))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_angle) _angle))))

    
(unless (fboundp 'jm_getAngleIncrementInfo_0) (defgeneric jm_getAngleIncrementInfo_0 (this)))
(defmethod jm_getAngleIncrementInfo_0 ((this AngleInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_angleIncrementInfo)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this AngleInfo))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (AngleInfo.jstatic_ANGLE))
        (jm_appendshort_1 _stringBuffer (slot-value this 'f_angle))
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_append_1 _stringBuffer (jm_toString_1 (StringUtil.jm_getInstance_0) (jm_getAngleIncrementInfo_0 this)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



