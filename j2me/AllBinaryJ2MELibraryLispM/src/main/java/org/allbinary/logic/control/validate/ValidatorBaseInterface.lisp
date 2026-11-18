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

(defclass ValidatorBaseInterface (JObject)
  ())

(defun ValidatorBaseInterface.jnew_0 ()
  (let ((this (make-instance 'ValidatorBaseInterface)))
    this))

    
(unless (fboundp 'jm_isValid_0) (defgeneric jm_isValid_0 (this)))
(defmethod jm_isValid_0 ((this ValidatorBaseInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isValid")))

    
(unless (fboundp 'jm_validationInfo_0) (defgeneric jm_validationInfo_0 (this)))
(defmethod jm_validationInfo_0 ((this ValidatorBaseInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "validationInfo")))

    
(unless (fboundp 'jm_toHashtable_0) (defgeneric jm_toHashtable_0 (this)))
(defmethod jm_toHashtable_0 ((this ValidatorBaseInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "toHashtable")))

    
(unless (fboundp 'jm_toList_0) (defgeneric jm_toList_0 (this)))
(defmethod jm_toList_0 ((this ValidatorBaseInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "toList")))



