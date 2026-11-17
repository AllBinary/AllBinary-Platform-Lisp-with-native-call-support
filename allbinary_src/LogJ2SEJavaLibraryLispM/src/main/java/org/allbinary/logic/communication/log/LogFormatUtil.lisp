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
(defclass LogFormatUtil (JObject)
  ((f_timeStampUtil :initform nil)
   (f_commonSeps :initform nil)
   (f_NONE :initform nil)
   (f_LOG_ERROR :initform nil)
   (f_EMPTY :initform nil)
   (f_STACK_TRACE :initform nil)
   (f_TIME :initform nil)
   (f_CLASS_NAME :initform nil)
   (f_FUNCTION_CALL :initform nil)
   (f_SPECIAL_MESSAGE :initform nil)
   (f_stringUtil :initform nil)
   (f_exceptionUtil :initform nil)
   (f_nullUtil :initform nil)))

(defvar LogFormatUtil.jcell_instance :jnone)
(defun LogFormatUtil.jstatic_instance ()
  (when (eq LogFormatUtil.jcell_instance :jnone) (setf LogFormatUtil.jcell_instance (LogFormatUtil.jnew_0)))
  LogFormatUtil.jcell_instance)

    
(defun LogFormatUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LogFormatUtil.jstatic_instance)))))

    
(defun LogFormatUtil.jnew_0 ()
  (let ((this (make-instance 'LogFormatUtil)))
    (setf (slot-value this 'f_timeStampUtil) (TimeStampUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonSeps) (CommonSeps.jm_getInstance_0))
    (setf (slot-value this 'f_NONE) "None")
    (setf (slot-value this 'f_LOG_ERROR) (JR.unescape "\\nLog-Error: "))
    (setf (slot-value this 'f_EMPTY) "Empty")
    (setf (slot-value this 'f_STACK_TRACE) (JR.unescape "\\nStack Trace: "))
    (setf (slot-value this 'f_TIME) "Time: ")
    (setf (slot-value this 'f_CLASS_NAME) (slot-value (slot-value this 'f_commonSeps) 'f_SPACE))
    (setf (slot-value this 'f_FUNCTION_CALL) (slot-value (CommonLabels.jm_getInstance_0) 'f_COLON_SEP))
    (setf (slot-value this 'f_SPECIAL_MESSAGE) "> ")
    (setf (slot-value this 'f_stringUtil) (StringUtil.jm_getInstance_0))
    (setf (slot-value this 'f_exceptionUtil) (ExceptionUtil.jm_getInstance_0))
    (setf (slot-value this 'f_nullUtil) (NullUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_get_4) (defgeneric jm_get_4 (this p1 p2 p3 p4)))
(defmethod jm_get_4 ((this LogFormatUtil) _className _functionName _specialMessage _exception)
  (declare (ignorable this _className _functionName _specialMessage _exception))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (jm_getF_2 this _className _functionName))
        (jm_append_1 _stringBuffer (jm_getO_1 this _exception))
        (jm_append_1 _stringBuffer (slot-value this 'f_SPECIAL_MESSAGE))
        (jm_append_1 _stringBuffer _specialMessage)
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonSeps) 'f_NEW_LINE))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_getS_3) (defgeneric jm_getS_3 (this p1 p2 p3)))
(defmethod jm_getS_3 ((this LogFormatUtil) _className _functionName _specialMessage)
  (declare (ignorable this _className _functionName _specialMessage))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (jm_getF_2 this _className _functionName))
        (jm_append_1 _stringBuffer (slot-value this 'f_SPECIAL_MESSAGE))
        (jm_append_1 _stringBuffer _specialMessage)
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonSeps) 'f_NEW_LINE))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_getF_2) (defgeneric jm_getF_2 (this p1 p2)))
(defmethod jm_getF_2 ((this LogFormatUtil) _className _functionName)
  (declare (ignorable this _className _functionName))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (slot-value this 'f_TIME))
        (jm_append_1 _stringBuffer (jm_getAsString_0 (slot-value this 'f_timeStampUtil)))
        (jm_append_1 _stringBuffer (slot-value this 'f_CLASS_NAME))
        (jm_append_1 _stringBuffer _className)
        (jm_append_1 _stringBuffer (slot-value this 'f_FUNCTION_CALL))
        (jm_append_1 _stringBuffer _functionName)
        (return-from jreturn _stringBuffer))))

    
(unless (fboundp 'jm_getO_1) (defgeneric jm_getO_1 (this p1)))
(defmethod jm_getO_1 ((this LogFormatUtil) _exception)
  (declare (ignorable this _exception))
  (let (_stringBuffer _exceptionAsString)
  (declare (ignorable _stringBuffer _exceptionAsString))
    (block jreturn
        (if (not (eq _exception (slot-value (slot-value this 'f_nullUtil) 'f_NULL_OBJECT)))
            (progn
            (setf _stringBuffer (StringMaker.jnew_0))
            (jm_append_1 _stringBuffer (slot-value this 'f_LOG_ERROR))
            (setf _exceptionAsString (JR.toString _exception))
            (jm_append_1 _stringBuffer _exceptionAsString)
            (jm_append_1 _stringBuffer (slot-value this 'f_STACK_TRACE))
            (if (not (eq _exception (slot-value (slot-value this 'f_nullUtil) 'f_NULL_OBJECT)))
                (progn
                (jm_append_1 _stringBuffer (jm_getStackTrace_1 (slot-value this 'f_exceptionUtil) _exception)))
                (progn
                (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_stringUtil) 'f_NULL_STRING))))
            (return-from jreturn (jm_toString_0 _stringBuffer)))
            (progn
            (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))))



