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

(defclass VectorRotationAnimation (VectorBaseRotationAnimation)
  ())

    
(defun VectorRotationAnimation.jnew_3 (_currentPoints _basicColor _animationBehavior)
  (declare (ignorable _currentPoints _basicColor _animationBehavior))
  (let ((this (make-instance 'VectorRotationAnimation)))
  (let ()
    (block jreturn
        nil
        (jm_adjustAngle_1 (slot-value this 'f_angleInfo) (jm_getFrame_0 this))))
    this))

    
(unless (fboundp 'jm_setFrameByDirection_1) (defgeneric jm_setFrameByDirection_1 (this p1)))
(defmethod jm_setFrameByDirection_1 ((this VectorRotationAnimation) _direction)
  (declare (ignorable this _direction))
  (let (_angle)
  (declare (ignorable _angle))
    (block jreturn
        (setf _angle (jm_getFrameAngle_1 (slot-value this 'f_directionUtil) _direction))
        (jm_adjustFrameToAngle_1 this _angle))))

    
(unless (fboundp 'jm_setFrameToAngle_1) (defgeneric jm_setFrameToAngle_1 (this p1)))
(defmethod jm_setFrameToAngle_1 ((this VectorRotationAnimation) _angle)
  (declare (ignorable this _angle))
  (let ()
    (block jreturn
        (jm_adjustFrameToAngle_1 this _angle))))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this VectorRotationAnimation) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (call-next-method this _index)
        (jm_adjustAngle_1 (slot-value this 'f_angleInfo) (jm_getFrame_0 this)))))

    
(unless (fboundp 'jm_adjustFrame_1) (defgeneric jm_adjustFrame_1 (this p1)))
(defmethod jm_adjustFrame_1 ((this VectorRotationAnimation) _newAngle)
  (declare (ignorable this _newAngle))
  (let ()
    (block jreturn
        (jm_setFrame_1 this (jm_getFrameForAngle_2 (slot-value this 'f_frameUtil) _newAngle (jm_getAngleIncrement_0 (jm_getAngleIncrementInfo_0 (slot-value this 'f_angleInfo))))))))

    
(unless (fboundp 'jm_adjustFrameToAngle_1) (defgeneric jm_adjustFrameToAngle_1 (this p1)))
(defmethod jm_adjustFrameToAngle_1 ((this VectorRotationAnimation) _newAngle)
  (declare (ignorable this _newAngle))
  (let ()
    (block jreturn
        (jm_adjustFrame_1 this (jm_getValue_0 _newAngle)))))



