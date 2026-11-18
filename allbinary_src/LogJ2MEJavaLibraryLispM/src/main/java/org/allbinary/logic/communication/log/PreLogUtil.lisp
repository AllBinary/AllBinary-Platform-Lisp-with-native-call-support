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

;ActualPlatform
(defclass PreLogUtil (JObject)
  ())

(defvar PreLogUtil.jcell_LOG_SUCCESS :jnone)
(defun PreLogUtil.jstatic_LOG_SUCCESS ()
  (when (eq PreLogUtil.jcell_LOG_SUCCESS :jnone) (setf PreLogUtil.jcell_LOG_SUCCESS "org.allbinary: "))
  PreLogUtil.jcell_LOG_SUCCESS)
(defun (setf PreLogUtil.jstatic_LOG_SUCCESS) (value) (setf PreLogUtil.jcell_LOG_SUCCESS value))

    
(defun PreLogUtil.jnew_0 ()
  (let ((this (make-instance 'PreLogUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(defun PreLogUtil.jm_put_3 (_specialMessage _anyType _functionName)
  (declare (ignorable _specialMessage _anyType _functionName))
  (let ()
    (block jreturn
        (PreLogUtil.jm_putOE_4 _specialMessage _anyType _functionName (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))))

    
(defun PreLogUtil.jm_putOE_4 (_specialMessage _anyType _functionName _exception)
  (declare (ignorable _specialMessage _anyType _functionName _exception))
  (let (_className _message)
  (declare (ignorable _className _message))
    (block jreturn
        (setf _className (slot-value (CommonStrings.jm_getInstance_0) 'f_EMPTY))
        (if (not (null (JR.className _anyType)))
            (progn
            (setf _className (JR.className _anyType))))
        (setf _message (jm_get_4 (LogFormatUtil.jm_getInstance_0) _className _functionName _specialMessage _exception))
        (JR.print (JR.str (PreLogUtil.jstatic_LOG_SUCCESS)))
        (JR.println _message))))

    
(defun PreLogUtil.jm_putS_3 (_specialMessage _className _functionName)
  (declare (ignorable _specialMessage _className _functionName))
  (let ()
    (block jreturn
        (PreLogUtil.jm_putSE_4 _specialMessage _className _functionName (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))))

    
(defun PreLogUtil.jm_putSE_4 (_specialMessage _className _functionName _exception)
  (declare (ignorable _specialMessage _className _functionName _exception))
  (let (_message)
  (declare (ignorable _message))
    (block jreturn
        (setf _message (jm_get_4 (LogFormatUtil.jm_getInstance_0) _className _functionName _specialMessage _exception))
        (JR.print (JR.str (PreLogUtil.jstatic_LOG_SUCCESS)))
        (JR.println _message))))

    
(defun PreLogUtil.jm_getClassName_1 (_anyType)
  (declare (ignorable _anyType))
  (let ()
    (block jreturn
        (return-from jreturn (JR.className _anyType)))))



