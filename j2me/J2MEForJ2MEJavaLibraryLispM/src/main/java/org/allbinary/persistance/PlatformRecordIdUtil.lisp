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
;;;; package org.allbinary.persistance

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PlatformRecordIdUtil (JObject)
  ((f_PLATFORM_SHORT_NAME :initform nil)))

(defvar PlatformRecordIdUtil.jcell_instance :jnone)
(defun PlatformRecordIdUtil.jstatic_instance ()
  (when (eq PlatformRecordIdUtil.jcell_instance :jnone) (setf PlatformRecordIdUtil.jcell_instance (PlatformRecordIdUtil.jnew_0)))
  PlatformRecordIdUtil.jcell_instance)
(defun (setf PlatformRecordIdUtil.jstatic_instance) (value) (setf PlatformRecordIdUtil.jcell_instance value))

(defun PlatformRecordIdUtil.jnew_0 ()
  (let ((this (make-instance 'PlatformRecordIdUtil)))
    (setf (slot-value this 'f_PLATFORM_SHORT_NAME) "JME")
    this))

    
(defun PlatformRecordIdUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PlatformRecordIdUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getRecordId_2) (defgeneric jm_getRecordId_2 (this p1 p2)))
(defmethod jm_getRecordId_2 ((this PlatformRecordIdUtil) _abeClientInformation _baseRecordId)
  (declare (ignorable this _abeClientInformation _baseRecordId))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (jm_toShortString_0 _abeClientInformation)) (slot-value (CommonSeps.jm_getInstance_0) 'f_UNDERSCORE)) (slot-value this 'f_PLATFORM_SHORT_NAME)) _baseRecordId))))))



