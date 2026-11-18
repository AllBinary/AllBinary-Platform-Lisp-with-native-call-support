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
;;;; package org.allbinary.logic.control.validate

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ValidatorBase (JObject)
  ())

(defvar ValidatorBase.jcell_instance :jnone)
(defun ValidatorBase.jstatic_instance ()
  (when (eq ValidatorBase.jcell_instance :jnone) (setf ValidatorBase.jcell_instance (ValidatorBase.jnew_0)))
  ValidatorBase.jcell_instance)
(defun (setf ValidatorBase.jstatic_instance) (value) (setf ValidatorBase.jcell_instance value))

    
(defun ValidatorBase.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ValidatorBase.jstatic_instance)))))

    
(defun ValidatorBase.jnew_0 ()
  (let ((this (make-instance 'ValidatorBase)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_isValid_0) (defgeneric jm_isValid_0 (this)))
(defmethod jm_isValid_0 ((this ValidatorBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (BooleanFactory.jm_getInstance_0) 'f_TRUE)))))

    
(unless (fboundp 'jm_validationInfo_0) (defgeneric jm_validationInfo_0 (this)))
(defmethod jm_validationInfo_0 ((this ValidatorBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_toHashtable_0) (defgeneric jm_toHashtable_0 (this)))
(defmethod jm_toHashtable_0 ((this ValidatorBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StdUtil.jm_getInstance_0) 'f_NULL_TABLE)))))

    
(unless (fboundp 'jm_toList_0) (defgeneric jm_toList_0 (this)))
(defmethod jm_toList_0 ((this ValidatorBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0))))))



