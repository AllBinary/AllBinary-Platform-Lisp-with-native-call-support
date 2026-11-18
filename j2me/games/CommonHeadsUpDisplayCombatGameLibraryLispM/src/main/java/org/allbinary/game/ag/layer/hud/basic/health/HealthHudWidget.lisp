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
;;;; package org.allbinary.game.ag.layer.hud.basic.health

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HealthHudWidget (BasicHud)
  ((f_healthScale :initform 0)
   (f_animationInterface :initform nil)
   (f_healthInterface :initform nil)
   (f_max :initform 0)
   (f_xArray :initform nil)
   (f_gameTickTimeDelayHelper :initform nil)
   (f_timeDelayHelper :initform nil)
   (f_slowBeatTimeDelayHelper :initform nil)
   (f_mediumBeatTimeDelayHelper :initform nil)
   (f_fastBeatTimeDelayHelper :initform nil)))

    
(defun HealthHudWidget.jnew_4 (_animationInterface _healthInterface _location _direction)
  (declare (ignorable _animationInterface _healthInterface _location _direction))
  (let ((this (make-instance 'HealthHudWidget)))
    
    
    
    
    
    (setf (slot-value this 'f_gameTickTimeDelayHelper) (GameTickTimeDelayHelperFactory.jm_getInstance_0))
    (setf (slot-value this 'f_timeDelayHelper) (NoTimeDelayHelper.jstatic_SINGLETON))
    (setf (slot-value this 'f_slowBeatTimeDelayHelper) (TimeDelayHelper.jnew_1 1280))
    (setf (slot-value this 'f_mediumBeatTimeDelayHelper) (TimeDelayHelper.jnew_1 640))
    (setf (slot-value this 'f_fastBeatTimeDelayHelper) (TimeDelayHelper.jnew_1 320))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_animationInterface) _animationInterface)
        (setf (slot-value this 'f_healthInterface) _healthInterface)
        (jm_addListener_1 (slot-value this 'f_healthInterface) this)
        (setf (slot-value this 'f_healthScale) (JR.i32 (+ (JR.idiv (jm_getMaxHealth_0 (slot-value this 'f_healthInterface)) 6) 1)))
        (jm_onHealthChange_0 this)
        (setf (slot-value this 'f_updateMaxWidth) (JR.i32 (* (jm_getMaxHealth_0 _healthInterface) 16)))
        (setf (slot-value this 'f_updateMaxHeight) 16)
        (setf (slot-value this 'f_xArray) (JR.newArray 0 30))
        (jm_update_0 this)))
    this))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this HealthHudWidget))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (if (not (null (slot-value this 'f_xArray)))
            (progn
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index (length (slot-value this 'f_xArray))) do
                    (block jcontinue
                (setf (aref (slot-value this 'f_xArray) _index) (JR.i32 (+ (jm_getX_0 this) (JR.i32 (* _index 16))))))
                    (setf _index (JR.i32 (+ _index 1)))))))))))

    
(unless (fboundp 'jm_setX_1) (defgeneric jm_setX_1 (this p1)))
(defmethod jm_setX_1 ((this HealthHudWidget) _x)
  (declare (ignorable this _x))
  (let ()
    (block jreturn
        (call-next-method this _x)
        (jm_update_0 this))))

    
(unless (fboundp 'jm_onHealthChange_0) (defgeneric jm_onHealthChange_0 (this)))
(defmethod jm_onHealthChange_0 ((this HealthHudWidget))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_max) (JR.idiv (jm_getHealth_0 (slot-value this 'f_healthInterface)) (slot-value this 'f_healthScale)))
        (setf (slot-value this 'f_timeDelayHelper) (NoTimeDelayHelper.jstatic_SINGLETON))
        (if (and (<= (slot-value this 'f_max) 1) (jm_isAlive_0 (slot-value this 'f_healthInterface)))
            (progn
            (setf (slot-value this 'f_max) 1)
            (if (> (JR.i32 (- (slot-value this 'f_healthScale) (jm_getHealth_0 (slot-value this 'f_healthInterface)))) (JR.idiv (JR.i32 (* (slot-value this 'f_healthScale) 2)) 3))
                (progn
                (setf (slot-value this 'f_timeDelayHelper) (slot-value this 'f_slowBeatTimeDelayHelper)))
                (if (> (JR.i32 (- (slot-value this 'f_healthScale) (jm_getHealth_0 (slot-value this 'f_healthInterface)))) (JR.idiv (slot-value this 'f_healthScale) 3))
                (progn
                (setf (slot-value this 'f_timeDelayHelper) (slot-value this 'f_mediumBeatTimeDelayHelper)))
                (progn
                (setf (slot-value this 'f_timeDelayHelper) (slot-value this 'f_fastBeatTimeDelayHelper))))))))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this HealthHudWidget) _graphics)
  (declare (ignorable this _graphics))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (slot-value this 'f_max)) do
                (block jcontinue
            (if (jm_isTime_1 (slot-value this 'f_timeDelayHelper) (slot-value (slot-value this 'f_gameTickTimeDelayHelper) 'f_startTime))
                (progn
                (jm_paintXY_3 (slot-value this 'f_animationInterface) _graphics (aref (slot-value this 'f_xArray) _index) (jm_getY_0 this)))))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this HealthHudWidget) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))



