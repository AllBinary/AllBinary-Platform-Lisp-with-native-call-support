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
;;;; package org.allbinary.animation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RotationAnimation (IndexedAnimation)
  ((f_frameUtil :initform nil)
   (f_directionUtil :initform nil)
   (f_angleInfo :initform nil)
   (f_circularIndexUtil :initform nil)))

    
(defun RotationAnimation.jnew_3 (_angleInfo _circularIndexUtil _animationBehavior)
  (declare (ignorable _angleInfo _circularIndexUtil _animationBehavior))
  (let ((this (make-instance 'RotationAnimation)))
    (setf (slot-value this 'f_frameUtil) (FrameUtil.jm_getInstance_0))
    (setf (slot-value this 'f_directionUtil) (DirectionUtil.jm_getInstance_0))
    
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_angleInfo) _angleInfo)
        (setf (slot-value this 'f_circularIndexUtil) _circularIndexUtil)))
    this))

    
(unless (fboundp 'jm_nextRotationX_0) (defgeneric jm_nextRotationX_0 (this)))
(defmethod jm_nextRotationX_0 ((this RotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_previousRotationX_0) (defgeneric jm_previousRotationX_0 (this)))
(defmethod jm_previousRotationX_0 ((this RotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_nextRotation_0) (defgeneric jm_nextRotation_0 (this)))
(defmethod jm_nextRotation_0 ((this RotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_adjustAngle_1 (slot-value this 'f_angleInfo) (jm_next_0 (slot-value this 'f_circularIndexUtil))))))

    
(unless (fboundp 'jm_previousRotation_0) (defgeneric jm_previousRotation_0 (this)))
(defmethod jm_previousRotation_0 ((this RotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_adjustAngle_1 (slot-value this 'f_angleInfo) (jm_previous_0 (slot-value this 'f_circularIndexUtil))))))

    
(unless (fboundp 'jm_nextRotationZ_0) (defgeneric jm_nextRotationZ_0 (this)))
(defmethod jm_nextRotationZ_0 ((this RotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_previousRotationZ_0) (defgeneric jm_previousRotationZ_0 (this)))
(defmethod jm_previousRotationZ_0 ((this RotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this RotationAnimation) _index)
  (declare (ignorable this _index))
  (let (_newFrame)
  (declare (ignorable _newFrame))
    (block jreturn
        (jm_setIndex_1 (slot-value this 'f_circularIndexUtil) _index)
        (setf _newFrame (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))
        (jm_adjustAngle_1 (slot-value this 'f_angleInfo) _newFrame))))

    
(unless (fboundp 'jm_setFrameByDirection_1) (defgeneric jm_setFrameByDirection_1 (this p1)))
(defmethod jm_setFrameByDirection_1 ((this RotationAnimation) _direction)
  (declare (ignorable this _direction))
  (let (_angle)
  (declare (ignorable _angle))
    (block jreturn
        (setf _angle (jm_getFrameAngle_1 (slot-value this 'f_directionUtil) _direction))
        (jm_adjustFrameToAngle_1 this _angle))))

    
(unless (fboundp 'jm_setFrameToAngle_1) (defgeneric jm_setFrameToAngle_1 (this p1)))
(defmethod jm_setFrameToAngle_1 ((this RotationAnimation) _angle)
  (declare (ignorable this _angle))
  (let ()
    (block jreturn
        (jm_adjustFrameToAngle_1 this _angle))))

    
(unless (fboundp 'jm_adjustFrameToAngle_1) (defgeneric jm_adjustFrameToAngle_1 (this p1)))
(defmethod jm_adjustFrameToAngle_1 ((this RotationAnimation) _angle)
  (declare (ignorable this _angle))
  (let ()
    (block jreturn
        (jm_adjustFrame_1 this (jm_getValue_0 _angle)))))

    
(unless (fboundp 'jm_adjustFrame_1) (defgeneric jm_adjustFrame_1 (this p1)))
(defmethod jm_adjustFrame_1 ((this RotationAnimation) _angle)
  (declare (ignorable this _angle))
  (let ()
    (block jreturn
        (jm_setFrame_1 this (jm_getFrameForAngle_2 (slot-value this 'f_frameUtil) _angle (jm_getAngleIncrement_0 (jm_getAngleIncrementInfo_0 (slot-value this 'f_angleInfo))))))))

    
(unless (fboundp 'jm_getFrame_0) (defgeneric jm_getFrame_0 (this)))
(defmethod jm_getFrame_0 ((this RotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this RotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSize_0 (slot-value this 'f_circularIndexUtil))))))

    
(unless (fboundp 'jm_getAngleInfoP_0) (defgeneric jm_getAngleInfoP_0 (this)))
(defmethod jm_getAngleInfoP_0 ((this RotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_angleInfo)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this RotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (call-next-method this)) "circularIndexUtil: ") (jm_toString_0 (slot-value this 'f_circularIndexUtil))) "angleInfo: ") (jm_toString_0 (slot-value this 'f_angleInfo))))))))



