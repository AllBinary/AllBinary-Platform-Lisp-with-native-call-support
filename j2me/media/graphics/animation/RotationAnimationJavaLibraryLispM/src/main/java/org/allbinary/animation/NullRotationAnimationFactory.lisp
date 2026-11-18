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

(defclass NullRotationAnimationFactory (JObject)
  ((f_NULL_ROTATION_ANIMATION_ARRAY :initform nil)
   (f_NULL_ANIMATION :initform nil)))

(defvar NullRotationAnimationFactory.jcell_NULL_ROTATION_ANIMATION_FACTORY :jnone)
(defun NullRotationAnimationFactory.jstatic_NULL_ROTATION_ANIMATION_FACTORY ()
  (when (eq NullRotationAnimationFactory.jcell_NULL_ROTATION_ANIMATION_FACTORY :jnone) (setf NullRotationAnimationFactory.jcell_NULL_ROTATION_ANIMATION_FACTORY (NullRotationAnimationFactory.jnew_0)))
  NullRotationAnimationFactory.jcell_NULL_ROTATION_ANIMATION_FACTORY)
(defun (setf NullRotationAnimationFactory.jstatic_NULL_ROTATION_ANIMATION_FACTORY) (value) (setf NullRotationAnimationFactory.jcell_NULL_ROTATION_ANIMATION_FACTORY value))

    
(defun NullRotationAnimationFactory.jnew_0 ()
  (let ((this (make-instance 'NullRotationAnimationFactory)))
    (setf (slot-value this 'f_NULL_ROTATION_ANIMATION_ARRAY) (JR.newArray nil 0))
    (setf (slot-value this 'f_NULL_ANIMATION) (NullRotationAnimation2.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(defun NullRotationAnimationFactory.jm_getFactoryInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullRotationAnimationFactory.jstatic_NULL_ROTATION_ANIMATION_FACTORY)))))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this NullRotationAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_NULL_ANIMATION)))))

    
(unless (fboundp 'jm_getInstanceAnimation_1) (defgeneric jm_getInstanceAnimation_1 (this p1)))
(defmethod jm_getInstanceAnimation_1 ((this NullRotationAnimationFactory) _animationInterface)
  (declare (ignorable this _animationInterface))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_NULL_ANIMATION)))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this NullRotationAnimationFactory) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let ()
    (block jreturn nil)))



