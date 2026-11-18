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

(defclass AnimationInterfaceFactoryInterface (JObject)
  ())

(defun AnimationInterfaceFactoryInterface.jnew_0 ()
  (let ((this (make-instance 'AnimationInterfaceFactoryInterface)))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this AnimationInterfaceFactoryInterface) _instanceId)
  (declare (ignorable this _instanceId))
  (error (JR.newException "AbstractMethodError" "getInstance")))

    
(unless (fboundp 'jm_setInitialScale_1) (defgeneric jm_setInitialScale_1 (this p1)))
(defmethod jm_setInitialScale_1 ((this AnimationInterfaceFactoryInterface) _scaleProperties)
  (declare (ignorable this _scaleProperties))
  (error (JR.newException "AbstractMethodError" "setInitialScale")))



