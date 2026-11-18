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

(defclass NoMovementFactory (JObject)
  ((f_movement :initform nil)))

(defvar NoMovementFactory.jcell_instance :jnone)
(defun NoMovementFactory.jstatic_instance ()
  (when (eq NoMovementFactory.jcell_instance :jnone) (setf NoMovementFactory.jcell_instance (NoMovementFactory.jnew_0)))
  NoMovementFactory.jcell_instance)
(defun (setf NoMovementFactory.jstatic_instance) (value) (setf NoMovementFactory.jcell_instance value))

(defun NoMovementFactory.jnew_0 ()
  (let ((this (make-instance 'NoMovementFactory)))
    (setf (slot-value this 'f_movement) (Movement.jnew_0))
    this))

    
(defun NoMovementFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NoMovementFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getMovmentInstance_0) (defgeneric jm_getMovmentInstance_0 (this)))
(defmethod jm_getMovmentInstance_0 ((this NoMovementFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_movement)))))



