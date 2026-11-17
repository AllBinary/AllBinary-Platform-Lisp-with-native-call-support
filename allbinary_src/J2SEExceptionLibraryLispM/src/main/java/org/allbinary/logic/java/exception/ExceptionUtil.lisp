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
;;;; package org.allbinary.logic.java.exception

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;ActualPlatform
(defclass ExceptionUtil (JObject)
  ((f_NONE :initform nil)))

(defvar ExceptionUtil.jcell_instance :jnone)
(defun ExceptionUtil.jstatic_instance ()
  (when (eq ExceptionUtil.jcell_instance :jnone) (setf ExceptionUtil.jcell_instance (ExceptionUtil.jnew_0)))
  ExceptionUtil.jcell_instance)

(defvar ExceptionUtil.jcell_PRETEND_EXCEPTION :jnone)
(defun ExceptionUtil.jstatic_PRETEND_EXCEPTION ()
  (when (eq ExceptionUtil.jcell_PRETEND_EXCEPTION :jnone) (setf ExceptionUtil.jcell_PRETEND_EXCEPTION (JR.newException "Exception" "Not Really An Exception")))
  ExceptionUtil.jcell_PRETEND_EXCEPTION)

    
(defun ExceptionUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ExceptionUtil.jstatic_instance)))))

    
(defun ExceptionUtil.jnew_0 ()
  (let ((this (make-instance 'ExceptionUtil)))
    (setf (slot-value this 'f_NONE) "No Stack Trace")
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getStackTrace_1) (defgeneric jm_getStackTrace_1 (this p1)))
(defmethod jm_getStackTrace_1 ((this ExceptionUtil) _e)
  (declare (ignorable this _e))
  (let (_byteArrayOutputStream _printStream _output)
  (declare (ignorable _byteArrayOutputStream _printStream _output))
    (block jreturn
        (if (not (null _e))
            (progn
            (setf _byteArrayOutputStream (ByteArrayOutputStream.jnew_0))
            (setf _printStream (PrintStream.jnew_1 _byteArrayOutputStream))
            (jm_printStackTrace_1 _e _printStream)
            (setf _output (jm_toString_0 _byteArrayOutputStream))
            (return-from jreturn _output)))
        (return-from jreturn (slot-value this 'f_NONE)))))



