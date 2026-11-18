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
;;;; package org.allbinary.animation.compound

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AutoCompoundRotationAnimation (RotationAnimation)
  ((f_animationInterfaceArray :initform nil)))

    
(defun AutoCompoundRotationAnimation.jnew_2 (_animationInterfaceArray _animationBehavior)
  (declare (ignorable _animationInterfaceArray _animationBehavior))
  (let ((this (make-instance 'AutoCompoundRotationAnimation)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_animationInterfaceArray) _animationInterfaceArray)
        (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 (length (slot-value this 'f_animationInterfaceArray))))))
    this))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this AutoCompoundRotationAnimation) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (jm_setFrame_1 (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))) _index))))

    
(unless (fboundp 'jm_getFrame_0) (defgeneric jm_getFrame_0 (this)))
(defmethod jm_getFrame_0 ((this AutoCompoundRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getFrame_0 (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))))))

    
(unless (fboundp 'jm_getAnimationSize_0) (defgeneric jm_getAnimationSize_0 (this)))
(defmethod jm_getAnimationSize_0 ((this AutoCompoundRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getAnimationSize_0 (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this AutoCompoundRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSize_0 (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))))))

    
(unless (fboundp 'jm_previousFrame_0) (defgeneric jm_previousFrame_0 (this)))
(defmethod jm_previousFrame_0 ((this AutoCompoundRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_previous_0 (slot-value this 'f_circularIndexUtil))
        (jm_previousFrame_0 (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))))))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this AutoCompoundRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_next_0 (slot-value this 'f_circularIndexUtil))
        (jm_nextFrame_0 (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))))))

    
(unless (fboundp 'jm_previousRotation_0) (defgeneric jm_previousRotation_0 (this)))
(defmethod jm_previousRotation_0 ((this AutoCompoundRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_previousRotation_0 (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))))))

    
(unless (fboundp 'jm_nextRotation_0) (defgeneric jm_nextRotation_0 (this)))
(defmethod jm_nextRotation_0 ((this AutoCompoundRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_nextRotation_0 (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))))))

    
(unless (fboundp 'jm_setSequence_1) (defgeneric jm_setSequence_1 (this p1)))
(defmethod jm_setSequence_1 ((this AutoCompoundRotationAnimation) _sequence)
  (declare (ignorable this _sequence))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSequence_0) (defgeneric jm_getSequence_0 (this)))
(defmethod jm_getSequence_0 ((this AutoCompoundRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this AutoCompoundRotationAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_paintXY_3 (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))) _graphics _x _y))))

    
(unless (fboundp 'jm_paintThreedXYZ_4) (defgeneric jm_paintThreedXYZ_4 (this p1 p2 p3 p4)))
(defmethod jm_paintThreedXYZ_4 ((this AutoCompoundRotationAnimation) _graphics _x _y _z)
  (declare (ignorable this _graphics _x _y _z))
  (let ()
    (block jreturn
        (jm_paintThreedXYZ_4 (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))) _graphics _x _y _z))))

    
(unless (fboundp 'jm_getCurrentAnimation_0) (defgeneric jm_getCurrentAnimation_0 (this)))
(defmethod jm_getCurrentAnimation_0 ((this AutoCompoundRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))))))

    
(unless (fboundp 'jm_nextAnimation_0) (defgeneric jm_nextAnimation_0 (this)))
(defmethod jm_nextAnimation_0 ((this AutoCompoundRotationAnimation))
  (declare (ignorable this))
  (let (_frame)
  (declare (ignorable _frame))
    (block jreturn
        (setf _frame (jm_getFrame_0 this))
        (jm_next_0 (slot-value this 'f_circularIndexUtil))
        (jm_setFrame_1 this _frame))))

    
(unless (fboundp 'jm_previousAnimation_0) (defgeneric jm_previousAnimation_0 (this)))
(defmethod jm_previousAnimation_0 ((this AutoCompoundRotationAnimation))
  (declare (ignorable this))
  (let (_frame)
  (declare (ignorable _frame))
    (block jreturn
        (setf _frame (jm_getFrame_0 this))
        (jm_previous_0 (slot-value this 'f_circularIndexUtil))
        (jm_setFrame_1 this _frame))))

    
(unless (fboundp 'jm_setAnimation_1) (defgeneric jm_setAnimation_1 (this p1)))
(defmethod jm_setAnimation_1 ((this AutoCompoundRotationAnimation) _index)
  (declare (ignorable this _index))
  (let (_frame)
  (declare (ignorable _frame))
    (block jreturn
        (setf _frame (jm_getFrame_0 this))
        (jm_setIndex_1 (slot-value this 'f_circularIndexUtil) _index)
        (jm_setFrame_1 this _frame))))

    
(unless (fboundp 'jm_setFrameByDirection_1) (defgeneric jm_setFrameByDirection_1 (this p1)))
(defmethod jm_setFrameByDirection_1 ((this AutoCompoundRotationAnimation) _direction)
  (declare (ignorable this _direction))
  (let ()
    (block jreturn
        (jm_setFrameByDirection_1 (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))) _direction))))

    
(unless (fboundp 'jm_setFrameToAngle_1) (defgeneric jm_setFrameToAngle_1 (this p1)))
(defmethod jm_setFrameToAngle_1 ((this AutoCompoundRotationAnimation) _angle)
  (declare (ignorable this _angle))
  (let ()
    (block jreturn
        (jm_setFrameToAngle_1 (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))) _angle))))

    
(unless (fboundp 'jm_adjustFrameToAngle_1) (defgeneric jm_adjustFrameToAngle_1 (this p1)))
(defmethod jm_adjustFrameToAngle_1 ((this AutoCompoundRotationAnimation) _newAngle)
  (declare (ignorable this _newAngle))
  (let ()
    (block jreturn
        (jm_adjustFrame_1 this (jm_getValue_0 _newAngle)))))

    
(unless (fboundp 'jm_adjustFrame_1) (defgeneric jm_adjustFrame_1 (this p1)))
(defmethod jm_adjustFrame_1 ((this AutoCompoundRotationAnimation) _angle)
  (declare (ignorable this _angle))
  (let ()
    (block jreturn
        (jm_adjustFrame_1 (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))) _angle))))

    
(unless (fboundp 'jm_getAngleInfoP_0) (defgeneric jm_getAngleInfoP_0 (this)))
(defmethod jm_getAngleInfoP_0 ((this AutoCompoundRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getAngleInfoP_0 (aref (slot-value this 'f_animationInterfaceArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))))))

    
(unless (fboundp 'jm_getAnimationInterfaceArray_0) (defgeneric jm_getAnimationInterfaceArray_0 (this)))
(defmethod jm_getAnimationInterfaceArray_0 ((this AutoCompoundRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_animationInterfaceArray)))))

    
(unless (fboundp 'jm_setAnimationInterfaceArray_1) (defgeneric jm_setAnimationInterfaceArray_1 (this p1)))
(defmethod jm_setAnimationInterfaceArray_1 ((this AutoCompoundRotationAnimation) _animationInterfaceArray)
  (declare (ignorable this _animationInterfaceArray))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_animationInterfaceArray) _animationInterfaceArray))))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this AutoCompoundRotationAnimation) _gl)
  (declare (ignorable this _gl))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (length (slot-value this 'f_animationInterfaceArray)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (jm_set_1 (aref (slot-value this 'f_animationInterfaceArray) _index) _gl))))))))



