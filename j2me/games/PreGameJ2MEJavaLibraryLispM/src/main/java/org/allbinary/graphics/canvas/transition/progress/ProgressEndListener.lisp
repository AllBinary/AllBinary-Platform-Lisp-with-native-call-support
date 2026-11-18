;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2026 AllBinary 
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
;;;; package org.allbinary.graphics.canvas.transition.progress

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ProgressEndListener (JObject)
  ())

(defvar ProgressEndListener.jcell_instance :jnone)
(defun ProgressEndListener.jstatic_instance ()
  (when (eq ProgressEndListener.jcell_instance :jnone) (setf ProgressEndListener.jcell_instance (ProgressEndListener.jnew_0)))
  ProgressEndListener.jcell_instance)
(defun (setf ProgressEndListener.jstatic_instance) (value) (setf ProgressEndListener.jcell_instance value))

(defun ProgressEndListener.jnew_0 ()
  (let ((this (make-instance 'ProgressEndListener)))
    this))

    
(unless (fboundp 'jm_onEndEvent_0) (defgeneric jm_onEndEvent_0 (this)))
(defmethod jm_onEndEvent_0 ((this ProgressEndListener))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



