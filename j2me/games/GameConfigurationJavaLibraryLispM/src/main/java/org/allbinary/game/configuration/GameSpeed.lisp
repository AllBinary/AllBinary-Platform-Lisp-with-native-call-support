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
;;;; package org.allbinary.game.configuration

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameSpeed (JObject)
  ())

(defvar GameSpeed.jcell_instance :jnone)
(defun GameSpeed.jstatic_instance ()
  (when (eq GameSpeed.jcell_instance :jnone) (setf GameSpeed.jcell_instance (GameSpeed.jnew_0)))
  GameSpeed.jcell_instance)
(defun (setf GameSpeed.jstatic_instance) (value) (setf GameSpeed.jcell_instance value))

(defun GameSpeed.jnew_0 ()
  (let ((this (make-instance 'GameSpeed)))
    this))

    
(unless (fboundp 'jm_getSpeed_0) (defgeneric jm_getSpeed_0 (this)))
(defmethod jm_getSpeed_0 ((this GameSpeed))
  (declare (ignorable this))
  (let (_speedGameConfiguration)
  (declare (ignorable _speedGameConfiguration))
    (block jreturn
        (setf _speedGameConfiguration (slot-value (GameConfigurationCentral.jm_getInstance_0) 'f_SPEED))
        (return-from jreturn (JR.i32 (+ (JR.i32 (- (jm_intValue_0 (jm_getMaxValue_0 _speedGameConfiguration)) (jm_intValue_0 (jm_getValue_0 _speedGameConfiguration)))) 1))))))

    
(unless (fboundp 'jm_getDelay_0) (defgeneric jm_getDelay_0 (this)))
(defmethod jm_getDelay_0 ((this GameSpeed))
  (declare (ignorable this))
  (let (_speedGameConfiguration)
  (declare (ignorable _speedGameConfiguration))
    (block jreturn
        (setf _speedGameConfiguration (slot-value (GameConfigurationCentral.jm_getInstance_0) 'f_SPEED))
        (return-from jreturn (JR.i32 (* 19 (JR.i32 (- (jm_intValue_0 (jm_getMaxValue_0 _speedGameConfiguration)) (jm_intValue_0 (jm_getValue_0 _speedGameConfiguration))))))))))

    
(defun GameSpeed.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameSpeed.jstatic_instance)))))



