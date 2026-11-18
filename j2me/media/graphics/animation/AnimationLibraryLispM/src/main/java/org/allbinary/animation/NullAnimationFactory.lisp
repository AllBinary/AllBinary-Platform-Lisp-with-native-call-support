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

(defclass NullAnimationFactory (JObject)
  ((f_NULL_ANIMATION :initform nil)
   (f_EMPTY_ARRAY :initform nil)))

(defvar NullAnimationFactory.jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY :jnone)
(defun NullAnimationFactory.jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY ()
  (when (eq NullAnimationFactory.jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY :jnone) (setf NullAnimationFactory.jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY (NullAnimationFactory.jnew_0)))
  NullAnimationFactory.jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY)
(defun (setf NullAnimationFactory.jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY) (value) (setf NullAnimationFactory.jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY value))

(defvar NullAnimationFactory.jcell_NULL_ANIMATION_FACTORY :jnone)
(defun NullAnimationFactory.jstatic_NULL_ANIMATION_FACTORY ()
  (when (eq NullAnimationFactory.jcell_NULL_ANIMATION_FACTORY :jnone) (setf NullAnimationFactory.jcell_NULL_ANIMATION_FACTORY (NullAnimationFactory.jnew_0)))
  NullAnimationFactory.jcell_NULL_ANIMATION_FACTORY)
(defun (setf NullAnimationFactory.jstatic_NULL_ANIMATION_FACTORY) (value) (setf NullAnimationFactory.jcell_NULL_ANIMATION_FACTORY value))

    
(defun NullAnimationFactory.jnew_0 ()
  (let ((this (make-instance 'NullAnimationFactory)))
    (setf (slot-value this 'f_NULL_ANIMATION) (Animation.jnew_0))
    (setf (slot-value this 'f_EMPTY_ARRAY) (JR.newArray nil 0))
  (let ()
    (block jreturn nil))
    this))

    
(defun NullAnimationFactory.jm_getFactoryInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullAnimationFactory.jstatic_NULL_ANIMATION_FACTORY)))))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this NullAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_NULL_ANIMATION)))))

    
(unless (fboundp 'jm_getInstanceAnimation_1) (defgeneric jm_getInstanceAnimation_1 (this p1)))
(defmethod jm_getInstanceAnimation_1 ((this NullAnimationFactory) _animationInterface)
  (declare (ignorable this _animationInterface))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_NULL_ANIMATION)))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this NullAnimationFactory) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let ()
    (block jreturn nil)))



