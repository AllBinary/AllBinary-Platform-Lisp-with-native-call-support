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
;;;; package org.allbinary.logic.system.security.licensing

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ClientInformationFactory (JObject)
  ())

(defun ClientInformationFactory.jnew_0 ()
  (let ((this (make-instance 'ClientInformationFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_0) (defgeneric jm_getInstance_0 (this)))
(defmethod jm_getInstance_0 ((this ClientInformationFactory))
  (declare (ignorable this))
  (let (_logUtil _commonStrings _stringUtil)
  (declare (ignorable _logUtil _commonStrings _stringUtil))
    (block jreturn
        (setf _logUtil (LogUtil.jm_getInstance_0))
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (jm_putF_3 _logUtil (slot-value _commonStrings 'f_NOT_IMPLEMENTED) this (slot-value _commonStrings 'f_GET_INSTANCE))
        (setf _stringUtil (StringUtil.jm_getInstance_0))
        (return-from jreturn (ClientInformation.jnew_4 (slot-value _stringUtil 'f_NULL_STRING) (slot-value _stringUtil 'f_NULL_STRING) (slot-value _stringUtil 'f_NULL_STRING) (slot-value _stringUtil 'f_NULL_STRING))))))



