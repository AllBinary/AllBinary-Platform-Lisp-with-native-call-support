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
;;;; package org.allbinary.game.ag.life

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HealthIncludingLifeBar (Paintable)
  ((f_animationInterface :initform nil)
   (f_life :initform nil)
   (f_healthInterface :initform nil)
   (f_allbinaryLayer :initform nil)))

    
(defun HealthIncludingLifeBar.jm_createHealthIncludingLifeBar_5 (_layerInterface _life _healthInterface _location _direction)
  (declare (ignorable _layerInterface _life _healthInterface _location _direction))
  (let ()
    (block jreturn
        (return-from jreturn (HealthIncludingLifeBar.jnew_5 _layerInterface _life _healthInterface (HealthBarTwodAnimation.jnew_2 _layerInterface _location) _direction)))))

    
(defun HealthIncludingLifeBar.jnew_5 (_layerInterface _life _healthInterface _animationInterface _direction)
  (declare (ignorable _layerInterface _life _healthInterface _animationInterface _direction))
  (let ((this (make-instance 'HealthIncludingLifeBar)))
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_allbinaryLayer) _layerInterface)
        (setf (slot-value this 'f_animationInterface) _animationInterface)
        (setf (slot-value this 'f_life) _life)
        (setf (slot-value this 'f_healthInterface) _healthInterface)
        (jm_addListener_1 (slot-value this 'f_healthInterface) this)
        (jm_onHealthChange_0 this)))
    this))

    
(unless (fboundp 'jm_onHealthChange_0) (defgeneric jm_onHealthChange_0 (this)))
(defmethod jm_onHealthChange_0 ((this HealthIncludingLifeBar))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_onHealthChange_1 (slot-value this 'f_animationInterface) (JR.idiv (JR.i32 (* (JR.i32 (+ (jm_getHealth_0 (slot-value this 'f_healthInterface)) (JR.i32 (* (jm_getMaxHealth_0 (slot-value this 'f_healthInterface)) (jm_get_0 (slot-value this 'f_life)))))) (jm_getWidth_0 (slot-value this 'f_allbinaryLayer)))) (JR.i32 (+ (jm_getMaxHealth_0 (slot-value this 'f_healthInterface)) (JR.i32 (* (jm_getMaxHealth_0 (slot-value this 'f_healthInterface)) (jm_getStartLives_0 (slot-value this 'f_life)))))))))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this HealthIncludingLifeBar) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paintXY_3 (slot-value this 'f_animationInterface) _graphics 0 0))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this HealthIncludingLifeBar) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paintThreedXYZ_4 (slot-value this 'f_animationInterface) _graphics 0 0 0))))



