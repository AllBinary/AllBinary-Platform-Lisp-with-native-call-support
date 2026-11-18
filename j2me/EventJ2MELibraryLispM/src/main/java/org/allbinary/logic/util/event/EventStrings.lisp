;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.logic.util.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass EventStrings (JObject)
  ((f_PERFORMANCE_MESSAGE :initform nil)
   (f_TOTAL_LISTENERS :initform nil)
   (f_LISTENER_LABEL :initform nil)
   (f_FIRE_EVENT :initform nil)))

(defvar EventStrings.jcell_instance :jnone)
(defun EventStrings.jstatic_instance ()
  (when (eq EventStrings.jcell_instance :jnone) (setf EventStrings.jcell_instance (EventStrings.jnew_0)))
  EventStrings.jcell_instance)
(defun (setf EventStrings.jstatic_instance) (value) (setf EventStrings.jcell_instance value))

(defun EventStrings.jnew_0 ()
  (let ((this (make-instance 'EventStrings)))
    (setf (slot-value this 'f_PERFORMANCE_MESSAGE) "Use Custom onEvent Methods for needed optimization")
    (setf (slot-value this 'f_TOTAL_LISTENERS) "Total Listeners: ")
    (setf (slot-value this 'f_LISTENER_LABEL) " Listener: ")
    (setf (slot-value this 'f_FIRE_EVENT) "fireEvent")
    this))

    
(defun EventStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (EventStrings.jstatic_instance)))))



