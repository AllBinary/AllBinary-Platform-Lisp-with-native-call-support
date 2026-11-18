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
;;;; package org.allbinary.animation.compound

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SimultaneousCompoundIndexedAnimationInterfaceFactory (CompoundAnimationInterfaceFactory)
  ())

    
(defun SimultaneousCompoundIndexedAnimationInterfaceFactory.jnew_2 (_basicAnimationInterfaceFactoryInterfaceArray _animationBehaviorFactory)
  (declare (ignorable _basicAnimationInterfaceFactoryInterfaceArray _animationBehaviorFactory))
  (let ((this (make-instance 'SimultaneousCompoundIndexedAnimationInterfaceFactory)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_createArray_1) (defgeneric jm_createArray_1 (this p1)))
(defmethod jm_createArray_1 ((this SimultaneousCompoundIndexedAnimationInterfaceFactory) _size)
  (declare (ignorable this _size))
  (let ()
    (block jreturn
        (return-from jreturn (JR.newArray nil _size)))))

    
(unless (fboundp 'jm_createAnimation_1) (defgeneric jm_createAnimation_1 (this p1)))
(defmethod jm_createAnimation_1 ((this SimultaneousCompoundIndexedAnimationInterfaceFactory) _animationArray)
  (declare (ignorable this _animationArray))
  (let ()
    (block jreturn
        (return-from jreturn (SimultaneousCompoundIndexedAnimation.jnew_2 _animationArray (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))



