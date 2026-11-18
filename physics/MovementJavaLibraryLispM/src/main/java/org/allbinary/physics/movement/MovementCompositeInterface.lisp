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
;;;; package org.allbinary.physics.movement

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MovementCompositeInterface (JObject)
  ())

(defun MovementCompositeInterface.jnew_0 ()
  (let ((this (make-instance 'MovementCompositeInterface)))
    this))

    
(unless (fboundp 'jm_getMovement_0) (defgeneric jm_getMovement_0 (this)))
(defmethod jm_getMovement_0 ((this MovementCompositeInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getMovement")))



