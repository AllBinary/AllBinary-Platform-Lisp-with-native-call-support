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
;;;; package org.allbinary.game.ag.ai

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicProbabilityAIDataFactory (JObject)
  ())

(defun BasicProbabilityAIDataFactory.jnew_0 ()
  (let ((this (make-instance 'BasicProbabilityAIDataFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_0) (defgeneric jm_getInstance_0 (this)))
(defmethod jm_getInstance_0 ((this BasicProbabilityAIDataFactory))
  (declare (ignorable this))
  (let (_likelyhoodIntegerArray _smallIntegerSingletonFactory _repeatLikelyhoodIntegerArray _inputProbability)
  (declare (ignorable _likelyhoodIntegerArray _smallIntegerSingletonFactory _repeatLikelyhoodIntegerArray _inputProbability))
    (block jreturn
        (setf _likelyhoodIntegerArray (JR.newArray nil (JR.i32 (+ (Canvas.jstatic_KEY_NUM9) 1)) 2))
        (setf _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (setf (aref (aref _likelyhoodIntegerArray (Canvas.jstatic_UP)) 0) (jm_getAt_1 _smallIntegerSingletonFactory 0))
        (setf (aref (aref _likelyhoodIntegerArray (Canvas.jstatic_UP)) 1) (jm_getAt_1 _smallIntegerSingletonFactory 10))
        (setf (aref (aref _likelyhoodIntegerArray (Canvas.jstatic_DOWN)) 0) (jm_getAt_1 _smallIntegerSingletonFactory 10))
        (setf (aref (aref _likelyhoodIntegerArray (Canvas.jstatic_DOWN)) 1) (jm_getAt_1 _smallIntegerSingletonFactory 14))
        (setf (aref (aref _likelyhoodIntegerArray (Canvas.jstatic_LEFT)) 0) (jm_getAt_1 _smallIntegerSingletonFactory 14))
        (setf (aref (aref _likelyhoodIntegerArray (Canvas.jstatic_LEFT)) 1) (jm_getAt_1 _smallIntegerSingletonFactory 18))
        (setf (aref (aref _likelyhoodIntegerArray (Canvas.jstatic_RIGHT)) 0) (jm_getAt_1 _smallIntegerSingletonFactory 18))
        (setf (aref (aref _likelyhoodIntegerArray (Canvas.jstatic_RIGHT)) 1) (jm_getAt_1 _smallIntegerSingletonFactory 22))
        (setf (aref (aref _likelyhoodIntegerArray (Canvas.jstatic_KEY_NUM7)) 0) (jm_getAt_1 _smallIntegerSingletonFactory 22))
        (setf (aref (aref _likelyhoodIntegerArray (Canvas.jstatic_KEY_NUM7)) 1) (jm_getAt_1 _smallIntegerSingletonFactory 26))
        (setf (aref (aref _likelyhoodIntegerArray (Canvas.jstatic_KEY_NUM9)) 0) (jm_getAt_1 _smallIntegerSingletonFactory 26))
        (setf (aref (aref _likelyhoodIntegerArray (Canvas.jstatic_KEY_NUM9)) 1) (jm_getAt_1 _smallIntegerSingletonFactory 30))
        (setf (aref (aref _likelyhoodIntegerArray (Canvas.jstatic_KEY_NUM1)) 0) (jm_getAt_1 _smallIntegerSingletonFactory 30))
        (setf (aref (aref _likelyhoodIntegerArray (Canvas.jstatic_KEY_NUM1)) 1) (jm_getAt_1 _smallIntegerSingletonFactory 40))
        (setf _repeatLikelyhoodIntegerArray (JR.newArray nil (JR.i32 (+ (Canvas.jstatic_KEY_NUM9) 1))))
        (setf (aref _repeatLikelyhoodIntegerArray (Canvas.jstatic_UP)) (jm_getAt_1 _smallIntegerSingletonFactory 0))
        (setf (aref _repeatLikelyhoodIntegerArray (Canvas.jstatic_DOWN)) (jm_getAt_1 _smallIntegerSingletonFactory 0))
        (setf (aref _repeatLikelyhoodIntegerArray (Canvas.jstatic_LEFT)) (jm_getAt_1 _smallIntegerSingletonFactory 0))
        (setf (aref _repeatLikelyhoodIntegerArray (Canvas.jstatic_RIGHT)) (jm_getAt_1 _smallIntegerSingletonFactory 0))
        (setf (aref _repeatLikelyhoodIntegerArray (Canvas.jstatic_KEY_NUM7)) (jm_getAt_1 _smallIntegerSingletonFactory 0))
        (setf (aref _repeatLikelyhoodIntegerArray (Canvas.jstatic_KEY_NUM9)) (jm_getAt_1 _smallIntegerSingletonFactory 0))
        (setf (aref _repeatLikelyhoodIntegerArray (Canvas.jstatic_KEY_NUM1)) (jm_getAt_1 _smallIntegerSingletonFactory 10))
        (setf _inputProbability (InputProbability.jnew_4 _likelyhoodIntegerArray _repeatLikelyhoodIntegerArray 42 (NoTimeDelayHelper.jstatic_SINGLETON)))
        (return-from jreturn (jm_toHashtable_0 _inputProbability)))))



