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
;;;; package org.allbinary.input.motion.gesture.configuration

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MotionGestureConfigurationFactory (JObject)
  ())

(defvar MotionGestureConfigurationFactory.jcell_config :jnone)
(defun MotionGestureConfigurationFactory.jstatic_config ()
  (when (eq MotionGestureConfigurationFactory.jcell_config :jnone) (setf MotionGestureConfigurationFactory.jcell_config (MotionGestureConfiguration.jnew_0)))
  MotionGestureConfigurationFactory.jcell_config)
(defun (setf MotionGestureConfigurationFactory.jstatic_config) (value) (setf MotionGestureConfigurationFactory.jcell_config value))

    
(defun MotionGestureConfigurationFactory.jnew_0 ()
  (let ((this (make-instance 'MotionGestureConfigurationFactory)))
  (let ()
    (block jreturn nil))
    this))

    
(defun MotionGestureConfigurationFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MotionGestureConfigurationFactory.jstatic_config)))))



