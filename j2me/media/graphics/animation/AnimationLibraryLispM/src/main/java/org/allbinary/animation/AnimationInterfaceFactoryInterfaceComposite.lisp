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

(defclass AnimationInterfaceFactoryInterfaceComposite (JObject)
  ((f_animationInterfaceFactoryInterfaceArray :initform nil)))

    
(defun AnimationInterfaceFactoryInterfaceComposite.jnew_1 (_basicAnimationInterfaceFactoryInterfaceArray)
  (declare (ignorable _basicAnimationInterfaceFactoryInterfaceArray))
  (let ((this (make-instance 'AnimationInterfaceFactoryInterfaceComposite)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_animationInterfaceFactoryInterfaceArray) _basicAnimationInterfaceFactoryInterfaceArray)))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this AnimationInterfaceFactoryInterfaceComposite) _instanceId)
  (declare (ignorable this _instanceId))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getInstance_1 (NullAnimationFactory.jm_getFactoryInstance_0) 0)))))

    
(unless (fboundp 'jm_getAnimationInterfaceFactoryInterfaceArray_0) (defgeneric jm_getAnimationInterfaceFactoryInterfaceArray_0 (this)))
(defmethod jm_getAnimationInterfaceFactoryInterfaceArray_0 ((this AnimationInterfaceFactoryInterfaceComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_animationInterfaceFactoryInterfaceArray)))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this AnimationInterfaceFactoryInterfaceComposite) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let ()
    (block jreturn nil)))



