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
;;;; package org.allbinary.animation.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ImageArrayRotationAnimationCacheable (AdjustedImageArrayRotationAnimation)
  ())

    
(defun ImageArrayRotationAnimationCacheable.jnew_2 (_anyType _animationBehavior)
  (declare (ignorable _anyType _animationBehavior))
  (let ((this (make-instance 'ImageArrayRotationAnimationCacheable)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getKey_0) (defgeneric jm_getKey_0 (this)))
(defmethod jm_getKey_0 ((this ImageArrayRotationAnimationCacheable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this ImageArrayRotationAnimationCacheable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))



