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
;;;; package org.allbinary.animation.transition.shake

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ShakeAnimationListener (JObject)
  ())

(defun ShakeAnimationListener.jnew_0 ()
  (let ((this (make-instance 'ShakeAnimationListener)))
    this))

    
(unless (fboundp 'jm_onSmallShakeEvent_0) (defgeneric jm_onSmallShakeEvent_0 (this)))
(defmethod jm_onSmallShakeEvent_0 ((this ShakeAnimationListener))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onMediumShakeEvent_0) (defgeneric jm_onMediumShakeEvent_0 (this)))
(defmethod jm_onMediumShakeEvent_0 ((this ShakeAnimationListener))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onLargeShakeEvent_0) (defgeneric jm_onLargeShakeEvent_0 (this)))
(defmethod jm_onLargeShakeEvent_0 ((this ShakeAnimationListener))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onShakeEvent_1) (defgeneric jm_onShakeEvent_1 (this p1)))
(defmethod jm_onShakeEvent_1 ((this ShakeAnimationListener) _shakeEvent)
  (declare (ignorable this _shakeEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this ShakeAnimationListener))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))



