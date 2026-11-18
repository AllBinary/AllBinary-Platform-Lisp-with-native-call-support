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
;;;; package org.allbinary.game.physics.acceleration

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GravityUtil (JObject)
  ((f_GAME_GRAVITY_VELOCITY :initform 0)
   (f_MAX_GAME_VELOCITY :initform 0)))

(defvar GravityUtil.jcell_instance :jnone)
(defun GravityUtil.jstatic_instance ()
  (when (eq GravityUtil.jcell_instance :jnone) (setf GravityUtil.jcell_instance (GravityUtil.jnew_0)))
  GravityUtil.jcell_instance)
(defun (setf GravityUtil.jstatic_instance) (value) (setf GravityUtil.jcell_instance value))

(defun GravityUtil.jnew_0 ()
  (let ((this (make-instance 'GravityUtil)))
    (setf (slot-value this 'f_GAME_GRAVITY_VELOCITY) 1800)
    (setf (slot-value this 'f_MAX_GAME_VELOCITY) 18000)
    this))

    
(defun GravityUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GravityUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this GravityUtil) _velocityProperties _customGravity)
  (declare (ignorable this _velocityProperties _customGravity))
  (let ()
    (block jreturn
        (jm_addint_1 (jm_getVelocityYBasicDecimalP_0 _velocityProperties) _customGravity))))



