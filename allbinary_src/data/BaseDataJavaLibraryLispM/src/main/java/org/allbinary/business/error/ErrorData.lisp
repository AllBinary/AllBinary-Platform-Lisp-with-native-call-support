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
;;;; package org.allbinary.business.error

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ErrorData (JObject)
  ((f_NAME :initform nil)
   (f_TEXT :initform nil)))

(defvar ErrorData.jcell_instance :jnone)
(defun ErrorData.jstatic_instance ()
  (when (eq ErrorData.jcell_instance :jnone) (setf ErrorData.jcell_instance (ErrorData.jnew_0)))
  ErrorData.jcell_instance)
(defun (setf ErrorData.jstatic_instance) (value) (setf ErrorData.jcell_instance value))

    
(defun ErrorData.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ErrorData.jstatic_instance)))))

    
(defun ErrorData.jnew_0 ()
  (let ((this (make-instance 'ErrorData)))
    (setf (slot-value this 'f_NAME) "ERROR_NAME")
    (setf (slot-value this 'f_TEXT) "ERROR_TEXT")
  (let ()
    (block jreturn nil))
    this))



