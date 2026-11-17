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
;;;; package org.allbinary.logic.system

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SoftwareInformation (JObject)
  ((f_name :initform nil)
   (f_shortName :initform nil)
   (f_version :initform nil)))

    
(defun SoftwareInformation.jnew_3 (_name _version _shortName)
  (declare (ignorable _name _version _shortName))
  (let ((this (make-instance 'SoftwareInformation)))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _name)
        (setf (slot-value this 'f_version) _version)
        (setf (slot-value this 'f_shortName) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) _shortName) (KotlinUtil.jm_getShortName_0))))))
    this))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this SoftwareInformation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_getVersion_0) (defgeneric jm_getVersion_0 (this)))
(defmethod jm_getVersion_0 ((this SoftwareInformation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_version)))))

    
(unless (fboundp 'jm_toShortString_0) (defgeneric jm_toShortString_0 (this)))
(defmethod jm_toShortString_0 ((this SoftwareInformation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_shortName)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this SoftwareInformation))
  (declare (ignorable this))
  (let (_NAME _VERSION _stringBuffer)
  (declare (ignorable _NAME _VERSION _stringBuffer))
    (block jreturn
        (setf _NAME "Name: ")
        (setf _VERSION "Version: ")
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer _NAME)
        (jm_append_1 _stringBuffer (jm_getName_0 this))
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_append_1 _stringBuffer _VERSION)
        (jm_append_1 _stringBuffer (jm_getVersion_0 this))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



