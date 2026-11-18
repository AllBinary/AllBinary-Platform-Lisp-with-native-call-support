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

(defclass VectorExplosionAnimationFactory (JObject)
  ((f_vectorExplosionGenerator :initform nil)
   (f_basicColor :initform nil)
   (f_animationBehaviorFactory :initform nil)))

    
(defun VectorExplosionAnimationFactory.jnew_2 (_basicColor _animationBehaviorFactory)
  (declare (ignorable _basicColor _animationBehaviorFactory))
  (let ((this (make-instance 'VectorExplosionAnimationFactory)))
    (setf (slot-value this 'f_vectorExplosionGenerator) (VectorExplosionGenerator.jm_getInstance_0))
    (setf (slot-value this 'f_basicColor) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_animationBehaviorFactory) _animationBehaviorFactory)
        (jm_setBasicColorP_1 this _basicColor)))
    this))

    
(unless (fboundp 'jm_getInstanceAnimation_1) (defgeneric jm_getInstanceAnimation_1 (this p1)))
(defmethod jm_getInstanceAnimation_1 ((this VectorExplosionAnimationFactory) _animationInterface)
  (declare (ignorable this _animationInterface))
  (let (_vectorRotationAnimationInterface _frame _framePoints _points)
  (declare (ignorable _vectorRotationAnimationInterface _frame _framePoints _points))
    (block jreturn
        (setf _vectorRotationAnimationInterface _animationInterface)
        (setf _frame (jm_getFrame_0 _vectorRotationAnimationInterface))
        (setf _framePoints (jm_getPoints_1 _vectorRotationAnimationInterface _frame))
        (setf _points (jm_getInstance_3 (slot-value this 'f_vectorExplosionGenerator) _framePoints 6 (slot-value (slot-value this 'f_vectorExplosionGenerator) 'f_ROTATION)))
        (return-from jreturn (VectorRotationAnimation.jnew_3 _points (jm_getBasicColorP_0 this) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this VectorExplosionAnimationFactory) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicColor) _basicColor))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this VectorExplosionAnimationFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicColor)))))



