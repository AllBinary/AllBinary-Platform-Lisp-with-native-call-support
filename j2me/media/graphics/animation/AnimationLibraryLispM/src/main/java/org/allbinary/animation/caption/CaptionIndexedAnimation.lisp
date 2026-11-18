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
;;;; package org.allbinary.animation.caption

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CaptionIndexedAnimation (IndexedAnimation)
  ((f_animationInterface :initform nil)
   (f_movieIndexedAnimationInterface :initform nil)
   (f_captionDx :initform 0)
   (f_captionDy :initform 0)
   (f_dx :initform 0)
   (f_dy :initform 0)
   (f_time :initform 0)
   (f_END_EVENT :initform nil)
   (f_timeDelayHelper :initform nil)
   (f_player :initform nil)))

    
(defun CaptionIndexedAnimation.jnew_9 (_animationInterface _movieIndexedAnimationInterface _player _captionDx _captionDy _dx _dy _time _animationBehavior)
  (declare (ignorable _animationInterface _movieIndexedAnimationInterface _player _captionDx _captionDy _dx _dy _time _animationBehavior))
  (let ((this (make-instance 'CaptionIndexedAnimation)))
    
    
    
    
    
    
    
    
    
    
  (let (_timePerFrame)
  (declare (ignorable _timePerFrame))
    (block jreturn
        nil
        (setf (slot-value this 'f_animationInterface) _animationInterface)
        (setf (slot-value this 'f_movieIndexedAnimationInterface) _movieIndexedAnimationInterface)
        (setf (slot-value this 'f_captionDx) _captionDx)
        (setf (slot-value this 'f_captionDy) _captionDy)
        (setf (slot-value this 'f_dx) _dx)
        (setf (slot-value this 'f_dy) _dy)
        (setf (slot-value this 'f_time) _time)
        (setf (slot-value this 'f_END_EVENT) (AllBinaryEventObject.jnew_1 this))
        (setf _timePerFrame (JR.idiv (slot-value this 'f_time) (jm_getSize_0 this)))
        (setf (slot-value this 'f_timeDelayHelper) (TimeDelayHelper.jnew_1 _timePerFrame))
        (setf (slot-value this 'f_player) _player)
        (jm_start_0 (slot-value this 'f_player))))
    this))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this CaptionIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (jm_isTime_1 (slot-value this 'f_timeDelayHelper) (slot-value (GameTickTimeDelayHelperFactory.jm_getInstance_0) 'f_startTime))
            (progn
            (jm_nextFrame_0 (slot-value this 'f_movieIndexedAnimationInterface))))
        (if (jm_isLastFrame_0 this)
            (progn
            (jm_fireEvent_1 (AnimationEventHandler.jm_getInstance_0) (slot-value this 'f_END_EVENT)))))))

    
(unless (fboundp 'jm_isLastFrame_0) (defgeneric jm_isLastFrame_0 (this)))
(defmethod jm_isLastFrame_0 ((this CaptionIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (eq (jm_getFrame_0 (slot-value this 'f_movieIndexedAnimationInterface)) (JR.i32 (- (jm_getSize_0 this) 1)))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_previousFrame_0) (defgeneric jm_previousFrame_0 (this)))
(defmethod jm_previousFrame_0 ((this CaptionIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_previousFrame_0 (slot-value this 'f_movieIndexedAnimationInterface)))))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this CaptionIndexedAnimation) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (jm_setFrame_1 (slot-value this 'f_movieIndexedAnimationInterface) _index))))

    
(unless (fboundp 'jm_getFrame_0) (defgeneric jm_getFrame_0 (this)))
(defmethod jm_getFrame_0 ((this CaptionIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getFrame_0 (slot-value this 'f_movieIndexedAnimationInterface))))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this CaptionIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSize_0 (slot-value this 'f_movieIndexedAnimationInterface))))))

    
(unless (fboundp 'jm_setSequence_1) (defgeneric jm_setSequence_1 (this p1)))
(defmethod jm_setSequence_1 ((this CaptionIndexedAnimation) _sequence)
  (declare (ignorable this _sequence))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSequence_0) (defgeneric jm_getSequence_0 (this)))
(defmethod jm_getSequence_0 ((this CaptionIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this CaptionIndexedAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_paintXY_3 (slot-value this 'f_animationInterface) _graphics (JR.i32 (+ _x (slot-value this 'f_captionDx))) (JR.i32 (+ _y (slot-value this 'f_captionDy))))
        (jm_paintXY_3 (slot-value this 'f_movieIndexedAnimationInterface) _graphics (JR.i32 (+ (JR.i32 (+ _x (slot-value this 'f_captionDx))) (slot-value this 'f_dx))) (JR.i32 (+ (JR.i32 (+ _y (slot-value this 'f_captionDy))) (slot-value this 'f_dy)))))))

    
(unless (fboundp 'jm_paintThreedXYZ_4) (defgeneric jm_paintThreedXYZ_4 (this p1 p2 p3 p4)))
(defmethod jm_paintThreedXYZ_4 ((this CaptionIndexedAnimation) _graphics _x _y _z)
  (declare (ignorable this _graphics _x _y _z))
  (let ()
    (block jreturn
        (jm_paintThreedXYZ_4 (slot-value this 'f_animationInterface) _graphics (JR.i32 (+ _x (slot-value this 'f_captionDx))) (JR.i32 (+ _y (slot-value this 'f_captionDy))) _z)
        (jm_paintThreedXYZ_4 (slot-value this 'f_movieIndexedAnimationInterface) _graphics (JR.i32 (+ (JR.i32 (+ _x (slot-value this 'f_captionDx))) (slot-value this 'f_dx))) (JR.i32 (+ (JR.i32 (+ _y (slot-value this 'f_captionDy))) (slot-value this 'f_dy))) _z))))



