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

(defclass NullSpecialAnimationFactory (JObject)
  ())

(defvar NullSpecialAnimationFactory.jcell_NULL_SPECIAL_ANIMATION_FACTORY :jnone)
(defun NullSpecialAnimationFactory.jstatic_NULL_SPECIAL_ANIMATION_FACTORY ()
  (when (eq NullSpecialAnimationFactory.jcell_NULL_SPECIAL_ANIMATION_FACTORY :jnone) (setf NullSpecialAnimationFactory.jcell_NULL_SPECIAL_ANIMATION_FACTORY (NullSpecialAnimationFactory.jnew_0)))
  NullSpecialAnimationFactory.jcell_NULL_SPECIAL_ANIMATION_FACTORY)
(defun (setf NullSpecialAnimationFactory.jstatic_NULL_SPECIAL_ANIMATION_FACTORY) (value) (setf NullSpecialAnimationFactory.jcell_NULL_SPECIAL_ANIMATION_FACTORY value))

    
(defun NullSpecialAnimationFactory.jnew_0 ()
  (let ((this (make-instance 'NullSpecialAnimationFactory)))
  (let ()
    (block jreturn nil))
    this))

    
(defun NullSpecialAnimationFactory.jm_getFactoryInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullSpecialAnimationFactory.jstatic_NULL_SPECIAL_ANIMATION_FACTORY)))))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this NullSpecialAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let ()
    (block jreturn
        (return-from jreturn (SpecialAnimation.jm_getInstance_0)))))

    
(unless (fboundp 'jm_getInstanceAnimation_1) (defgeneric jm_getInstanceAnimation_1 (this p1)))
(defmethod jm_getInstanceAnimation_1 ((this NullSpecialAnimationFactory) _animationInterface)
  (declare (ignorable this _animationInterface))
  (let ()
    (block jreturn
        (return-from jreturn (SpecialAnimation.jm_getInstance_0)))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this NullSpecialAnimationFactory) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let ()
    (block jreturn nil)))



