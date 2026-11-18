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

(defclass CaptionAnimationHelper (CaptionAnimationHelperBase)
  ((f_timeHelper :initform nil)
   (f_textAnimation :initform nil)
   (f_captionAnimation :initform nil)
   (f_animation :initform nil)))

    
(defun CaptionAnimationHelper.jnew_5 (_captionAnimation _captionDx _captionDy _dx _dy)
  (declare (ignorable _captionAnimation _captionDx _captionDy _dx _dy))
  (let ((this (make-instance 'CaptionAnimationHelper)))
    (setf (slot-value this 'f_timeHelper) (TimeDelayHelper.jnew_1 620))
    (setf (slot-value this 'f_textAnimation) (TextAnimation.jnew_2 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (AnimationBehavior.jm_getInstance_0)))
    
    (setf (slot-value this 'f_animation) (jm_getInstance_1 (NullAnimationFactory.jm_getFactoryInstance_0) 0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_captionAnimation) (CaptionAnimation.jnew_6 _captionAnimation (slot-value this 'f_textAnimation) _captionDx _captionDy _dx _dy))))
    this))

    
(unless (fboundp 'jm_isShowing_0) (defgeneric jm_isShowing_0 (this)))
(defmethod jm_isShowing_0 ((this CaptionAnimationHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (eq (slot-value this 'f_animation) (slot-value this 'f_captionAnimation))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_tick_0) (defgeneric jm_tick_0 (this)))
(defmethod jm_tick_0 ((this CaptionAnimationHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (jm_isTime_1 (slot-value this 'f_timeHelper) (slot-value (GameTickTimeDelayHelperFactory.jm_getInstance_0) 'f_startTime))
            (progn
            (setf (slot-value this 'f_animation) (jm_getInstance_1 (NullAnimationFactory.jm_getFactoryInstance_0) 0)))))))

    
(unless (fboundp 'jm_update_2) (defgeneric jm_update_2 (this p1 p2)))
(defmethod jm_update_2 ((this CaptionAnimationHelper) _message _basicColor)
  (declare (ignorable this _message _basicColor))
  (let ()
    (block jreturn
        (jm_setBasicColorP_1 (slot-value this 'f_textAnimation) _basicColor)
        (jm_setText_1 (slot-value this 'f_textAnimation) _message)
        (setf (slot-value this 'f_animation) (slot-value this 'f_captionAnimation))
        (jm_setStartTimeTNT_0 (slot-value this 'f_timeHelper)))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this CaptionAnimationHelper) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_paintXY_3 (slot-value this 'f_animation) _graphics _x _y))))



