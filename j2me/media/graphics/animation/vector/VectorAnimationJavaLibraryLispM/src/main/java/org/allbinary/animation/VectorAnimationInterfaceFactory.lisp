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

(defclass VectorAnimationInterfaceFactory (JObject)
  ((f_currentPoints :initform nil)
   (f_basicColor :initform nil)
   (f_animationBehaviorFactory :initform nil)))

    
(defun VectorAnimationInterfaceFactory.jnew_3 (_currentPoints _basicColor _animationBehaviorFactory)
  (declare (ignorable _currentPoints _basicColor _animationBehaviorFactory))
  (let ((this (make-instance 'VectorAnimationInterfaceFactory)))
    
    (setf (slot-value this 'f_basicColor) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_currentPoints) _currentPoints)
        (jm_setBasicColorP_1 this _basicColor)
        (setf (slot-value this 'f_animationBehaviorFactory) _animationBehaviorFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this VectorAnimationInterfaceFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let ()
    (block jreturn
        (return-from jreturn (VectorAnimation.jnew_3 (slot-value this 'f_currentPoints) (jm_getBasicColorP_0 this) (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this VectorAnimationInterfaceFactory) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicColor) _basicColor))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this VectorAnimationInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicColor)))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this VectorAnimationInterfaceFactory) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let ()
    (block jreturn nil)))



