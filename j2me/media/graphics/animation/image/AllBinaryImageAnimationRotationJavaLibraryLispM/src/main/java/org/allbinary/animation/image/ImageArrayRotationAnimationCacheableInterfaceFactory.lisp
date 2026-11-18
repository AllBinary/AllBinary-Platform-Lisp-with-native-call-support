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

(defclass ImageArrayRotationAnimationCacheableInterfaceFactory (JObject)
  ())

(defun ImageArrayRotationAnimationCacheableInterfaceFactory.jnew_0 ()
  (let ((this (make-instance 'ImageArrayRotationAnimationCacheableInterfaceFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this ImageArrayRotationAnimationCacheableInterfaceFactory) _key)
  (declare (ignorable this _key))
  (let ()
    (block jreturn
        (return-from jreturn (ImageArrayRotationAnimationCacheable.jnew_2 _key (AnimationBehavior.jm_getInstance_0))))))



