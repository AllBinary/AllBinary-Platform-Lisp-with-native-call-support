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
;;;; package org.allbinary.logic.communication.log.config.type

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LogConfigTypeFactory (JObject)
  ((f_NO_DESCRIPTION :initform nil)
   (f_OS :initform nil)
   (f_FACTORYERROR :initform nil)
   (f_FILE :initform nil)
   (f_FILEERROR :initform nil)
   (f_IDLOGGING :initform nil)
   (f_REPLACE :initform nil)
   (f_REPLACE_INFO :initform nil)
   (f_REPLACEERROR :initform nil)))

(defvar LogConfigTypeFactory.jcell_instance :jnone)
(defun LogConfigTypeFactory.jstatic_instance ()
  (when (eq LogConfigTypeFactory.jcell_instance :jnone) (setf LogConfigTypeFactory.jcell_instance (LogConfigTypeFactory.jnew_0)))
  LogConfigTypeFactory.jcell_instance)
(defun (setf LogConfigTypeFactory.jstatic_instance) (value) (setf LogConfigTypeFactory.jcell_instance value))

    
(defun LogConfigTypeFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LogConfigTypeFactory.jstatic_instance)))))

    
(defun LogConfigTypeFactory.jnew_0 ()
  (let ((this (make-instance 'LogConfigTypeFactory)))
    (setf (slot-value this 'f_NO_DESCRIPTION) "No Description")
    (setf (slot-value this 'f_OS) (LogConfigType.jnew_2 "Operating System" (slot-value this 'f_NO_DESCRIPTION)))
    (setf (slot-value this 'f_FACTORYERROR) (LogConfigType.jnew_2 "Factory Error" (slot-value this 'f_NO_DESCRIPTION)))
    (setf (slot-value this 'f_FILE) (LogConfigType.jnew_2 "File" (slot-value this 'f_NO_DESCRIPTION)))
    (setf (slot-value this 'f_FILEERROR) (LogConfigType.jnew_2 "File Error" (slot-value this 'f_NO_DESCRIPTION)))
    (setf (slot-value this 'f_IDLOGGING) (LogConfigType.jnew_2 "ID Logging" (slot-value this 'f_NO_DESCRIPTION)))
    (setf (slot-value this 'f_REPLACE) (LogConfigType.jnew_2 "Replace" (slot-value this 'f_NO_DESCRIPTION)))
    (setf (slot-value this 'f_REPLACE_INFO) (LogConfigType.jnew_2 "Replace Info" (slot-value this 'f_NO_DESCRIPTION)))
    (setf (slot-value this 'f_REPLACEERROR) (LogConfigType.jnew_2 "Replace Error" (slot-value this 'f_NO_DESCRIPTION)))
  (let ()
    (block jreturn
        (jm_add_1 (LogConfigTypes.jstatic_LOGGING) (slot-value this 'f_OS))
        (jm_add_1 (LogConfigTypes.jstatic_LOGGING) (slot-value this 'f_FACTORYERROR))))
    this))



