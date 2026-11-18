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

(defclass IndependentVectorExplosionRotationAnimationFactory (JObject)
  ((f_framePoints :initform nil)
   (f_vectorInfo :initform nil)
   (f_basicColor :initform nil)
   (f_vectorAnimationFactoryInterface :initform nil)
   (f_vectorExplosionGenerator :initform nil)))

    
(defun IndependentVectorExplosionRotationAnimationFactory.jnew_3 (_vectorInfo _basicColor _vectorAnimationFactoryInterface)
  (declare (ignorable _vectorInfo _basicColor _vectorAnimationFactoryInterface))
  (let ((this (make-instance 'IndependentVectorExplosionRotationAnimationFactory)))
    (setf (slot-value this 'f_framePoints) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_INT_ARRAY_ARRAY_ARRAY))
    
    
    
    (setf (slot-value this 'f_vectorExplosionGenerator) (VectorExplosionGenerator.jm_getInstance_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_vectorInfo) _vectorInfo)
        (setf (slot-value this 'f_basicColor) _basicColor)
        (setf (slot-value this 'f_vectorAnimationFactoryInterface) _vectorAnimationFactoryInterface)
        (jm_init_0 this)))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this IndependentVectorExplosionRotationAnimationFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_framePoints) (jm_getInstance_1 (VectorRotationGenerator.jm_getInstance_0) (slot-value this 'f_vectorInfo))))))

    
(unless (fboundp 'jm_getInstanceAnimation_1) (defgeneric jm_getInstanceAnimation_1 (this p1)))
(defmethod jm_getInstanceAnimation_1 ((this IndependentVectorExplosionRotationAnimationFactory) _animationInterface)
  (declare (ignorable this _animationInterface))
  (let (_frame _rotationAnimationInterface _points)
  (declare (ignorable _frame _rotationAnimationInterface _points))
    (block jreturn
        (setf _frame 0)
        (if (not (null _animationInterface))
            (progn
            (setf _rotationAnimationInterface _animationInterface)
            (setf _frame (jm_getFrame_0 _rotationAnimationInterface))))
        (setf _points (jm_getInstance_3 (slot-value this 'f_vectorExplosionGenerator) (aref (slot-value this 'f_framePoints) _frame) 6 (slot-value (slot-value this 'f_vectorExplosionGenerator) 'f_ROTATION)))
        (return-from jreturn (jm_getInstance_2 (slot-value this 'f_vectorAnimationFactoryInterface) _points (slot-value this 'f_basicColor))))))



