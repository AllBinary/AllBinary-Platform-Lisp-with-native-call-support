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
;;;; package org.allbinary.animation.special

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SpecialAnimation (IndexedAnimation)
  ())

(defvar SpecialAnimation.jcell_NULL_SPECIAL_ANIMATION :jnone)
(defun SpecialAnimation.jstatic_NULL_SPECIAL_ANIMATION ()
  (when (eq SpecialAnimation.jcell_NULL_SPECIAL_ANIMATION :jnone) (setf SpecialAnimation.jcell_NULL_SPECIAL_ANIMATION (SpecialAnimation.jnew_1 (IndexedAnimationBehavior.jnew_2 1 250))))
  SpecialAnimation.jcell_NULL_SPECIAL_ANIMATION)
(defun (setf SpecialAnimation.jstatic_NULL_SPECIAL_ANIMATION) (value) (setf SpecialAnimation.jcell_NULL_SPECIAL_ANIMATION value))

    
(defun SpecialAnimation.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SpecialAnimation.jstatic_NULL_SPECIAL_ANIMATION)))))

    
(defun SpecialAnimation.jnew_1 (_animationBehavior)
  (declare (ignorable _animationBehavior))
  (let ((this (make-instance 'SpecialAnimation)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this SpecialAnimation))
  (declare (ignorable this))
  (let (_indexedAnimationBehavior)
  (declare (ignorable _indexedAnimationBehavior))
    (block jreturn
        (setf _indexedAnimationBehavior (slot-value this 'f_animationBehaviorP))
        (setf (slot-value _indexedAnimationBehavior 'f_loopIndex) (JR.i32 (+ (slot-value _indexedAnimationBehavior 'f_loopIndex) 1))))))

    
(unless (fboundp 'jm_setLastFrame_0) (defgeneric jm_setLastFrame_0 (this)))
(defmethod jm_setLastFrame_0 ((this SpecialAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isComplete_0) (defgeneric jm_isComplete_0 (this)))
(defmethod jm_isComplete_0 ((this SpecialAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_open_0) (defgeneric jm_open_0 (this)))
(defmethod jm_open_0 ((this SpecialAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this SpecialAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this SpecialAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



