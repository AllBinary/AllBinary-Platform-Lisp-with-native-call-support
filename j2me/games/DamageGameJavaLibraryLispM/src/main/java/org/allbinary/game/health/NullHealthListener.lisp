;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.game.health

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullHealthListener (JObject)
  ())

(defvar NullHealthListener.jcell_NULL_HEALTH_LISTENER :jnone)
(defun NullHealthListener.jstatic_NULL_HEALTH_LISTENER ()
  (when (eq NullHealthListener.jcell_NULL_HEALTH_LISTENER :jnone) (setf NullHealthListener.jcell_NULL_HEALTH_LISTENER (NullHealthListener.jnew_0)))
  NullHealthListener.jcell_NULL_HEALTH_LISTENER)
(defun (setf NullHealthListener.jstatic_NULL_HEALTH_LISTENER) (value) (setf NullHealthListener.jcell_NULL_HEALTH_LISTENER value))

(defun NullHealthListener.jnew_0 ()
  (let ((this (make-instance 'NullHealthListener)))
    this))

    
(unless (fboundp 'jm_onHealthChange_0) (defgeneric jm_onHealthChange_0 (this)))
(defmethod jm_onHealthChange_0 ((this NullHealthListener))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



