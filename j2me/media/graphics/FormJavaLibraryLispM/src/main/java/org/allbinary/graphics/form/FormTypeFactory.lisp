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
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FormTypeFactory (JObject)
  ((f_UNK :initform nil)
   (f_NULL_FORM_TYPE :initform nil)
   (f_TEMP_HORIZONTAL_FORM :initform nil)
   (f_HORIZONTAL_FORM :initform nil)
   (f_VERTICAL_CENTER_FORM :initform nil)))

(defvar FormTypeFactory.jcell_instance :jnone)
(defun FormTypeFactory.jstatic_instance ()
  (when (eq FormTypeFactory.jcell_instance :jnone) (setf FormTypeFactory.jcell_instance (FormTypeFactory.jnew_0)))
  FormTypeFactory.jcell_instance)
(defun (setf FormTypeFactory.jstatic_instance) (value) (setf FormTypeFactory.jcell_instance value))

(defun FormTypeFactory.jnew_0 ()
  (let ((this (make-instance 'FormTypeFactory)))
    (setf (slot-value this 'f_UNK) "Unknown FormType")
    (setf (slot-value this 'f_NULL_FORM_TYPE) (FormType.jnew_1 (slot-value (StringUtil.jm_getInstance_0) 'f_NULL_STRING)))
    (setf (slot-value this 'f_TEMP_HORIZONTAL_FORM) (FormType.jnew_1 "TempHorizontal"))
    (setf (slot-value this 'f_HORIZONTAL_FORM) (FormType.jnew_1 "Horizontal"))
    (setf (slot-value this 'f_VERTICAL_CENTER_FORM) (FormType.jnew_1 "Vertical"))
    this))

    
(defun FormTypeFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FormTypeFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getFormType_0) (defgeneric jm_getFormType_0 (this)))
(defmethod jm_getFormType_0 ((this FormTypeFactory))
  (declare (ignorable this))
  (let (_displayInfo _formType)
  (declare (ignorable _displayInfo _formType))
    (block jreturn
        (setf _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (setf _formType nil)
        (if (jm_isPortrait_0 _displayInfo)
            (progn
            (setf _formType (slot-value this 'f_VERTICAL_CENTER_FORM)))
            (progn
            (setf _formType (slot-value this 'f_HORIZONTAL_FORM))))
        (return-from jreturn _formType))))



