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
;;;; package org.allbinary.game.physics.velocity

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass VelocityInterfaceCompositeInterface (JObject)
  ())

(defun VelocityInterfaceCompositeInterface.jnew_0 ()
  (let ((this (make-instance 'VelocityInterfaceCompositeInterface)))
    this))

    
(unless (fboundp 'jm_getVelocityProperties_0) (defgeneric jm_getVelocityProperties_0 (this)))
(defmethod jm_getVelocityProperties_0 ((this VelocityInterfaceCompositeInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getVelocityProperties")))



