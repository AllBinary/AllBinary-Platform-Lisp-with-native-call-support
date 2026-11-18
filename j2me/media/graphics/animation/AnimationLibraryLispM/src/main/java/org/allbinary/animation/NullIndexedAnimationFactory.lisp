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

(defclass NullIndexedAnimationFactory (JObject)
  ((f_NULL_ANIMATION :initform nil)))

(defvar NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_ARRAY :jnone)
(defun NullIndexedAnimationFactory.jstatic_NULL_INDEXED_ANIMATION_ARRAY ()
  (when (eq NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_ARRAY :jnone) (setf NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_ARRAY (JR.newArray nil 0)))
  NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_ARRAY)
(defun (setf NullIndexedAnimationFactory.jstatic_NULL_INDEXED_ANIMATION_ARRAY) (value) (setf NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_ARRAY value))

(defvar NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_FACTORY :jnone)
(defun NullIndexedAnimationFactory.jstatic_NULL_INDEXED_ANIMATION_FACTORY ()
  (when (eq NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_FACTORY :jnone) (setf NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_FACTORY (NullIndexedAnimationFactory.jnew_0)))
  NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_FACTORY)
(defun (setf NullIndexedAnimationFactory.jstatic_NULL_INDEXED_ANIMATION_FACTORY) (value) (setf NullIndexedAnimationFactory.jcell_NULL_INDEXED_ANIMATION_FACTORY value))

    
(defun NullIndexedAnimationFactory.jnew_0 ()
  (let ((this (make-instance 'NullIndexedAnimationFactory)))
    (setf (slot-value this 'f_NULL_ANIMATION) (NullIndexedAnimationInner.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(defun NullIndexedAnimationFactory.jm_getFactoryInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullIndexedAnimationFactory.jstatic_NULL_INDEXED_ANIMATION_FACTORY)))))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this NullIndexedAnimationFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_NULL_ANIMATION)))))

    
(unless (fboundp 'jm_getInstanceAnimation_1) (defgeneric jm_getInstanceAnimation_1 (this p1)))
(defmethod jm_getInstanceAnimation_1 ((this NullIndexedAnimationFactory) _animationInterface)
  (declare (ignorable this _animationInterface))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_NULL_ANIMATION)))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this NullIndexedAnimationFactory) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let ()
    (block jreturn nil)))



