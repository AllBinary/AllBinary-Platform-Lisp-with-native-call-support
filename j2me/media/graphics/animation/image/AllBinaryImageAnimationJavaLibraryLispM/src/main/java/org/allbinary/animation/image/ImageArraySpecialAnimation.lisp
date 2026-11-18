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
;;;; package org.allbinary.animation.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ImageArraySpecialAnimation (ImageArrayAnimation)
  ((f_timeDelayHelper :initform nil)
   (f_loopCount :initform 0)
   (f_loopCountTotal :initform 0)))

    
(defun ImageArraySpecialAnimation.jnew_2 (_imageArray _animationBehavior)
  (declare (ignorable _imageArray _animationBehavior))
  (let ((this (make-instance 'ImageArraySpecialAnimation)))
    (setf (slot-value this 'f_timeDelayHelper) (TimeDelayHelper.jnew_1 270))
    (setf (slot-value this 'f_loopCount) 0)
    (setf (slot-value this 'f_loopCountTotal) 1)
  (let ()
    (block jreturn
        nil
        (jm_reset_0 this)))
    this))

    
(unless (fboundp 'jm_getLoopCount_0) (defgeneric jm_getLoopCount_0 (this)))
(defmethod jm_getLoopCount_0 ((this ImageArraySpecialAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_loopCount)))))

    
(unless (fboundp 'jm_setLastFrame_0) (defgeneric jm_setLastFrame_0 (this)))
(defmethod jm_setLastFrame_0 ((this ImageArraySpecialAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setIndex_1 (slot-value this 'f_circularIndexUtil) (JR.i32 (- (jm_getSize_0 (slot-value this 'f_circularIndexUtil)) 1))))))

    
(unless (fboundp 'jm_reset_0) (defgeneric jm_reset_0 (this)))
(defmethod jm_reset_0 ((this ImageArraySpecialAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setFrame_1 this (JR.i32 (- (jm_getSize_0 this) 1)))
        (setf (slot-value this 'f_loopCount) 0))))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this ImageArraySpecialAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (> (jm_getFrame_0 this) 0)
            (progn
            (if (jm_isTime_1 (slot-value this 'f_timeDelayHelper) (slot-value (GameTickTimeDelayHelperFactory.jm_getInstance_0) 'f_startTime))
                (progn
                (jm_previousFrame_0 this)
                (if (eq (jm_getFrame_0 this) 0)
                    (progn
                    (setf (slot-value this 'f_loopCount) (JR.i32 (+ (slot-value this 'f_loopCount) 1))))))))))))

    
(unless (fboundp 'jm_isComplete_0) (defgeneric jm_isComplete_0 (this)))
(defmethod jm_isComplete_0 ((this ImageArraySpecialAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (or (< (slot-value this 'f_loopCount) (slot-value this 'f_loopCountTotal)) (not (eq (jm_getFrame_0 this) 0)))
            (progn
            (return-from jreturn nil))
            (progn
            (return-from jreturn t))))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this ImageArraySpecialAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (setf _x (JR.i32 (- (jm_getLastHalfWidth_0 (DisplayInfoSingleton.jm_getInstance_0)) (ash (jm_getWidth_0 (jm_getImage_1 this (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))) (- (logand 1 31))))))
        (setf _y 5)
        (call-next-method this _graphics _x _y))))



