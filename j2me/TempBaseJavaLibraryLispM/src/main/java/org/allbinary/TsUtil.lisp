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

;TempBase
(defclass TsUtil (JObject)
  ())

(defvar TsUtil.jcell_instance :jnone)
(defun TsUtil.jstatic_instance ()
  (when (eq TsUtil.jcell_instance :jnone) (setf TsUtil.jcell_instance (TsUtil.jnew_0)))
  TsUtil.jcell_instance)

(defun TsUtil.jnew_0 ()
  (let ((this (make-instance 'TsUtil)))
    this))

    
(defun TsUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TsUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_longBitsToDouble_1) (defgeneric jm_longBitsToDouble_1 (this p1)))
(defmethod jm_longBitsToDouble_1 ((this TsUtil) _bits)
  (declare (ignorable this _bits))
  (let ()
    (block jreturn
        (return-from jreturn (Double.jm_longBitsToDouble_1 _bits)))))

    
(unless (fboundp 'jm_intBitsToFloat_1) (defgeneric jm_intBitsToFloat_1 (this p1)))
(defmethod jm_intBitsToFloat_1 ((this TsUtil) _bits)
  (declare (ignorable this _bits))
  (let ()
    (block jreturn
        (return-from jreturn (Float.jm_intBitsToFloat_1 _bits)))))

    
(unless (fboundp 'jm_hashCode_1) (defgeneric jm_hashCode_1 (this p1)))
(defmethod jm_hashCode_1 ((this TsUtil) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (return-from jreturn (JR.className _anyType)))))

    
(unless (fboundp 'jm_waitFor_2) (defgeneric jm_waitFor_2 (this p1 p2)))
(defmethod jm_waitFor_2 ((this TsUtil) _any _timeoutMillis)
  (declare (ignorable this _any _timeoutMillis))
  (let (_anyType)
  (declare (ignorable _anyType))
    (block jreturn
        (setf _anyType _any)
        (JR.className _anyType))))

    
(unless (fboundp 'jm_compareTo_2) (defgeneric jm_compareTo_2 (this p1 p2)))
(defmethod jm_compareTo_2 ((this TsUtil) _a _b)
  (declare (ignorable this _a _b))
  (let ()
    (block jreturn
        (return-from jreturn (JR.compareTo _a _b)))))



