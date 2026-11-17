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

(defclass Log (JObject)
  ((f_logFormatUtil :initform nil)
   (f_specialMessage :initform nil)
   (f_anyType :initform nil)
   (f_functionName :initform nil)
   (f_exception :initform nil)))

    
(defun Log.jnew_4 (_specialMessage _anyType _functionName _exception)
  (declare (ignorable _specialMessage _anyType _functionName _exception))
  (let ((this (make-instance 'Log)))
    (setf (slot-value this 'f_logFormatUtil) (LogFormatUtil.jm_getInstance_0))
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_specialMessage) _specialMessage)
        (setf (slot-value this 'f_anyType) _anyType)
        (setf (slot-value this 'f_functionName) _functionName)
        (setf (slot-value this 'f_exception) _exception)))
    this))

    
(unless (fboundp 'jm_getSpecialMessage_0) (defgeneric jm_getSpecialMessage_0 (this)))
(defmethod jm_getSpecialMessage_0 ((this Log))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_specialMessage)))))

    
(unless (fboundp 'jm_getObject_0) (defgeneric jm_getObject_0 (this)))
(defmethod jm_getObject_0 ((this Log))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_anyType)))))

    
(unless (fboundp 'jm_getFunctionName_0) (defgeneric jm_getFunctionName_0 (this)))
(defmethod jm_getFunctionName_0 ((this Log))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_functionName)))))

    
(unless (fboundp 'jm_getThrowable_0) (defgeneric jm_getThrowable_0 (this)))
(defmethod jm_getThrowable_0 ((this Log))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_exception)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this Log))
  (declare (ignorable this))
  (let (_className _clazz)
  (declare (ignorable _className _clazz))
    (block jreturn
        (setf _className (slot-value (CommonStrings.jm_getInstance_0) 'f_EMPTY))
        (setf _clazz (JR.className (slot-value this 'f_anyType)))
        (if (not (null (jm_getName_0 _clazz)))
            (progn
            (setf _className (jm_getName_0 _clazz))))
        (return-from jreturn (jm_get_4 (slot-value this 'f_logFormatUtil) _className (slot-value this 'f_functionName) (slot-value this 'f_specialMessage) (slot-value this 'f_exception))))))



