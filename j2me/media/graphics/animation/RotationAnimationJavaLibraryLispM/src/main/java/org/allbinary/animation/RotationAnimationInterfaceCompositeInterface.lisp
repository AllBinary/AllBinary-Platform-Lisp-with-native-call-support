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

(defclass RotationAnimationInterfaceCompositeInterface (JObject)
  ())

(defun RotationAnimationInterfaceCompositeInterface.jnew_0 ()
  (let ((this (make-instance 'RotationAnimationInterfaceCompositeInterface)))
    this))

    
(unless (fboundp 'jm_getRotationAnimationInterface_0) (defgeneric jm_getRotationAnimationInterface_0 (this)))
(defmethod jm_getRotationAnimationInterface_0 ((this RotationAnimationInterfaceCompositeInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getRotationAnimationInterface")))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this RotationAnimationInterfaceCompositeInterface) _index)
  (declare (ignorable this _index))
  (error (JR.newException "AbstractMethodError" "setFrame")))



