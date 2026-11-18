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

(defclass SimultaneousCompoundIndexAnimationInterfaceFactory (JObject)
  ((f_basicAnimationInterfaceFactoryInterfaceArray :initform nil)
   (f_animationBehaviorFactory :initform nil)))

    
(defun SimultaneousCompoundIndexAnimationInterfaceFactory.jnew_2 (_basicAnimationInterfaceFactoryInterfaceArray _animationBehaviorFactory)
  (declare (ignorable _basicAnimationInterfaceFactoryInterfaceArray _animationBehaviorFactory))
  (let ((this (make-instance 'SimultaneousCompoundIndexAnimationInterfaceFactory)))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicAnimationInterfaceFactoryInterfaceArray) _basicAnimationInterfaceFactoryInterfaceArray)
        (setf (slot-value this 'f_animationBehaviorFactory) _animationBehaviorFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this SimultaneousCompoundIndexAnimationInterfaceFactory) _instanceId)
  (declare (ignorable this _instanceId))
  (let (_size _animationInterfaceArray _index)
  (declare (ignorable _size _animationInterfaceArray _index))
    (block jreturn
        (setf _size (length (slot-value this 'f_basicAnimationInterfaceFactoryInterfaceArray)))
        (setf _animationInterfaceArray (JR.newArray nil _size))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf (aref _animationInterfaceArray _index) (jm_getInstance_1 (aref (slot-value this 'f_basicAnimationInterfaceFactoryInterfaceArray) _index) _instanceId)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_getOrCreate_1 this _animationInterfaceArray)))))

    
(unless (fboundp 'jm_getOrCreate_1) (defgeneric jm_getOrCreate_1 (this p1)))
(defmethod jm_getOrCreate_1 ((this SimultaneousCompoundIndexAnimationInterfaceFactory) _animationInterfaceArray)
  (declare (ignorable this _animationInterfaceArray))
  (let ()
    (block jreturn
        (return-from jreturn (SimultaneousCompoundIndexAnimation.jnew_2 _animationInterfaceArray (jm_getOrCreateInstance_0 (slot-value this 'f_animationBehaviorFactory)))))))

    
(unless (fboundp 'jm_getBasicAnimationInterfaceFactoryInterfaceArray_0) (defgeneric jm_getBasicAnimationInterfaceFactoryInterfaceArray_0 (this)))
(defmethod jm_getBasicAnimationInterfaceFactoryInterfaceArray_0 ((this SimultaneousCompoundIndexAnimationInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicAnimationInterfaceFactoryInterfaceArray)))))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this SimultaneousCompoundIndexAnimationInterfaceFactory) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (let ()
    (block jreturn nil)))



