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

(defclass ProceduralAnimationInterfaceFactoryInterface (JObject)
  ())

(defun ProceduralAnimationInterfaceFactoryInterface.jnew_0 ()
  (let ((this (make-instance 'ProceduralAnimationInterfaceFactoryInterface)))
    this))

    
(unless (fboundp 'jm_getInstanceAnimation_1) (defgeneric jm_getInstanceAnimation_1 (this p1)))
(defmethod jm_getInstanceAnimation_1 ((this ProceduralAnimationInterfaceFactoryInterface) _animationInterface)
  (declare (ignorable this _animationInterface))
  (error (JR.newException "AbstractMethodError" "getInstanceAnimation")))



