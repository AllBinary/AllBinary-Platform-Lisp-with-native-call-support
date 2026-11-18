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

(defclass AngleIncrementInfo (JObject)
  ((f_angleIncrement :initform 0)
   (f_DOWN_FRAME :initform nil)
   (f_UP_FRAME :initform nil)
   (f_LEFT_FRAME :initform nil)
   (f_RIGHT_FRAME :initform nil)
   (f_frameUtil :initform nil)))

(defvar AngleIncrementInfo.jcell_INCREMENT :jnone)
(defun AngleIncrementInfo.jstatic_INCREMENT ()
  (when (eq AngleIncrementInfo.jcell_INCREMENT :jnone) (setf AngleIncrementInfo.jcell_INCREMENT "Inc: "))
  AngleIncrementInfo.jcell_INCREMENT)
(defun (setf AngleIncrementInfo.jstatic_INCREMENT) (value) (setf AngleIncrementInfo.jcell_INCREMENT value))

    
(defun AngleIncrementInfo.jnew_1 (_angleIncrement)
  (declare (ignorable _angleIncrement))
  (let ((this (make-instance 'AngleIncrementInfo)))
    
    
    
    
    
    (setf (slot-value this 'f_frameUtil) (FrameUtil.jm_getInstance_0))
  (let (_angleFactory _smallIntegerSingletonFactory)
  (declare (ignorable _angleFactory _smallIntegerSingletonFactory))
    (block jreturn
        (setf (slot-value this 'f_angleIncrement) _angleIncrement)
        (setf _angleFactory (AngleFactory.jm_getInstance_0))
        (setf _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (setf (slot-value this 'f_DOWN_FRAME) (jm_getAt_1 _smallIntegerSingletonFactory (JR.idiv (jm_getValue_0 (slot-value _angleFactory 'f_DOWN)) (slot-value this 'f_angleIncrement))))
        (setf (slot-value this 'f_UP_FRAME) (jm_getAt_1 _smallIntegerSingletonFactory (jm_getValue_0 (slot-value _angleFactory 'f_UP))))
        (setf (slot-value this 'f_LEFT_FRAME) (jm_getAt_1 _smallIntegerSingletonFactory (JR.idiv (jm_getValue_0 (slot-value _angleFactory 'f_LEFT)) (slot-value this 'f_angleIncrement))))
        (setf (slot-value this 'f_RIGHT_FRAME) (jm_getAt_1 _smallIntegerSingletonFactory (JR.idiv (jm_getValue_0 (slot-value _angleFactory 'f_RIGHT)) (slot-value this 'f_angleIncrement))))))
    this))

    
(unless (fboundp 'jm_getFrameAngle_1) (defgeneric jm_getFrameAngle_1 (this p1)))
(defmethod jm_getFrameAngle_1 ((this AngleIncrementInfo) _frame)
  (declare (ignorable this _frame))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getFrameAngle_2 (slot-value this 'f_frameUtil) _frame (slot-value this 'f_angleIncrement))))))

    
(unless (fboundp 'jm_getAngleIncrement_0) (defgeneric jm_getAngleIncrement_0 (this)))
(defmethod jm_getAngleIncrement_0 ((this AngleIncrementInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_angleIncrement)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this AngleIncrementInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (jm_appendshort_1 (jm_append_1 (StringMaker.jnew_0) (AngleIncrementInfo.jstatic_INCREMENT)) (slot-value this 'f_angleIncrement)))))))

    
(unless (fboundp 'jm_getClosestGeneralDirection_1) (defgeneric jm_getClosestGeneralDirection_1 (this p1)))
(defmethod jm_getClosestGeneralDirection_1 ((this AngleIncrementInfo) _angle)
  (declare (ignorable this _angle))
  (let (_closestDirection)
  (declare (ignorable _closestDirection))
    (block jreturn
        (setf _closestDirection (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 360))
        (if (< (JR.i32 (- (jm_intValue_0 (slot-value this 'f_UP_FRAME)) _angle)) (JR.i32 (- (jm_intValue_0 _closestDirection) _angle)))
            (progn
            (setf _closestDirection (slot-value this 'f_UP_FRAME))))
        (if (< (JR.i32 (- (jm_intValue_0 (slot-value this 'f_DOWN_FRAME)) _angle)) (JR.i32 (- (jm_intValue_0 _closestDirection) _angle)))
            (progn
            (setf _closestDirection (slot-value this 'f_DOWN_FRAME))))
        (if (< (JR.i32 (- (jm_intValue_0 (slot-value this 'f_LEFT_FRAME)) _angle)) (JR.i32 (- (jm_intValue_0 _closestDirection) _angle)))
            (progn
            (setf _closestDirection (slot-value this 'f_LEFT_FRAME))))
        (if (< (JR.i32 (- (jm_intValue_0 (slot-value this 'f_RIGHT_FRAME)) _angle)) (JR.i32 (- (jm_intValue_0 _closestDirection) _angle)))
            (progn
            (setf _closestDirection (slot-value this 'f_RIGHT_FRAME))))
        (return-from jreturn (jm_intValue_0 _closestDirection)))))



