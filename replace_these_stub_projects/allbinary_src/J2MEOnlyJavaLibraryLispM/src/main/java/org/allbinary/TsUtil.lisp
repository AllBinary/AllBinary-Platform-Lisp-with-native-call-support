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
;;;; package org.allbinary

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;J2ME
(defclass TsUtil (JObject)
  ())

(defvar TsUtil.jcell_instance :jnone)
(defun TsUtil.jstatic_instance ()
  (when (eq TsUtil.jcell_instance :jnone) (setf TsUtil.jcell_instance (TsUtil.jnew_0)))
  TsUtil.jcell_instance)
(defun (setf TsUtil.jstatic_instance) (value) (setf TsUtil.jcell_instance value))

(defun TsUtil.jnew_0 ()
  (let ((this (make-instance 'TsUtil)))
    this))

    
(defun TsUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TsUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_hashCode_1) (defgeneric jm_hashCode_1 (this p1)))
(defmethod jm_hashCode_1 ((this TsUtil) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (return-from jreturn (jm_hashCode_0 _anyType)))))

    
(unless (fboundp 'jm_waitFor_2) (defgeneric jm_waitFor_2 (this p1 p2)))
(defmethod jm_waitFor_2 ((this TsUtil) _any _timeoutMillis)
  (declare (ignorable this _any _timeoutMillis))
  (let (_anyType)
  (declare (ignorable _anyType))
    (block jreturn
        (setf _anyType _any)
        (jm_wait_1 _anyType _timeoutMillis))))

    
(unless (fboundp 'jm_getRecord_2) (defgeneric jm_getRecord_2 (this p1 p2)))
(defmethod jm_getRecord_2 ((this TsUtil) _anyType _recordId)
  (declare (ignorable this _anyType _recordId))
  (let (_recordStore _data)
  (declare (ignorable _recordStore _data))
    (block jreturn
        (setf _recordStore _anyType)
        (setf _data nil)
        (progn
            (setf _data (JR.newArray 0 (jm_getRecordSize_1 _recordStore _recordId)))
            (jm_getRecord_3 _recordStore _recordId _data 0))
        (return-from jreturn (if (< (length _data) 1) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_BYTE_ARRAY) _data)))))

    
(unless (fboundp 'jm_compareTo_2) (defgeneric jm_compareTo_2 (this p1 p2)))
(defmethod jm_compareTo_2 ((this TsUtil) _a _b)
  (declare (ignorable this _a _b))
  (let ()
    (block jreturn
        (return-from jreturn (JR.compareTo _a _b)))))

    
(unless (fboundp 'jm_equalIgnoreCase_2) (defgeneric jm_equalIgnoreCase_2 (this p1 p2)))
(defmethod jm_equalIgnoreCase_2 ((this TsUtil) _a _b)
  (declare (ignorable this _a _b))
  (let ()
    (block jreturn
        (return-from jreturn (JR.equalsIgnoreCase _a _b)))))

    
(unless (fboundp 'jm_equalsNotstring_2) (defgeneric jm_equalsNotstring_2 (this p1 p2)))
(defmethod jm_equalsNotstring_2 ((this TsUtil) _anyType _object2)
  (declare (ignorable this _anyType _object2))
  (let ()
    (block jreturn
        (return-from jreturn (eq _anyType _object2)))))

    
(unless (fboundp 'jm_toNumberFromChar_1) (defgeneric jm_toNumberFromChar_1 (this p1)))
(defmethod jm_toNumberFromChar_1 ((this TsUtil) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (return-from jreturn _value))))

    
(unless (fboundp 'jm_toNumber_1) (defgeneric jm_toNumber_1 (this p1)))
(defmethod jm_toNumber_1 ((this TsUtil) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (return-from jreturn _value))))

    
(unless (fboundp 'jm_getByteArray_1) (defgeneric jm_getByteArray_1 (this p1)))
(defmethod jm_getByteArray_1 ((this TsUtil) _string)
  (declare (ignorable this _string))
  (let ()
    (block jreturn
        (return-from jreturn (JR.getBytes _string)))))

    
(unless (fboundp 'jm_isItemListener_1) (defgeneric jm_isItemListener_1 (this p1)))
(defmethod jm_isItemListener_1 ((this TsUtil) _owner)
  (declare (ignorable this _owner))
  (let ()
    (block jreturn
        (if (typep _owner 'Form)
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_printAvailableMethods_1) (defgeneric jm_printAvailableMethods_1 (this p1)))
(defmethod jm_printAvailableMethods_1 ((this TsUtil) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_gc_0) (defgeneric jm_gc_0 (this)))
(defmethod jm_gc_0 ((this TsUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (System.jm_gc_0))))



