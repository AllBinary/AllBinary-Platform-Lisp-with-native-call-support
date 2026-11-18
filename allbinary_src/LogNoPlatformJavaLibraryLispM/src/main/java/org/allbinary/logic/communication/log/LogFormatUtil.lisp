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
;;;; package org.allbinary.logic.communication.log

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;NoPlatform
(defclass LogFormatUtil (JObject)
  ())

(defvar LogFormatUtil.jcell_instance :jnone)
(defun LogFormatUtil.jstatic_instance ()
  (when (eq LogFormatUtil.jcell_instance :jnone) (setf LogFormatUtil.jcell_instance (LogFormatUtil.jnew_0)))
  LogFormatUtil.jcell_instance)
(defun (setf LogFormatUtil.jstatic_instance) (value) (setf LogFormatUtil.jcell_instance value))

    
(defun LogFormatUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LogFormatUtil.jstatic_instance)))))

    
(defun LogFormatUtil.jnew_0 ()
  (let ((this (make-instance 'LogFormatUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_get_4) (defgeneric jm_get_4 (this p1 p2 p3 p4)))
(defmethod jm_get_4 ((this LogFormatUtil) _className _functionName _specialMessage _exception)
  (declare (ignorable this _className _functionName _specialMessage _exception))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getS_3) (defgeneric jm_getS_3 (this p1 p2 p3)))
(defmethod jm_getS_3 ((this LogFormatUtil) _className _functionName _specialMessage)
  (declare (ignorable this _className _functionName _specialMessage))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getO_1) (defgeneric jm_getO_1 (this p1)))
(defmethod jm_getO_1 ((this LogFormatUtil) _exception)
  (declare (ignorable this _exception))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))



