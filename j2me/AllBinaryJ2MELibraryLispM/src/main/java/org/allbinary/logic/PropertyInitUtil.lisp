;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2026 AllBinary 
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
;;;; package org.allbinary.logic

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PropertyInitUtil (JObject)
  ())

(defvar PropertyInitUtil.jcell_instance :jnone)
(defun PropertyInitUtil.jstatic_instance ()
  (when (eq PropertyInitUtil.jcell_instance :jnone) (setf PropertyInitUtil.jcell_instance (PropertyInitUtil.jnew_0)))
  PropertyInitUtil.jcell_instance)
(defun (setf PropertyInitUtil.jstatic_instance) (value) (setf PropertyInitUtil.jcell_instance value))

(defun PropertyInitUtil.jnew_0 ()
  (let ((this (make-instance 'PropertyInitUtil)))
    this))

    
(defun PropertyInitUtil.jm_getInstance_1 (_value)
  (declare (ignorable _value))
  (let (_commonStrings _logUtil)
  (declare (ignorable _commonStrings _logUtil))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (setf _logUtil (LogUtil.jm_getInstance_0))
        (jm_putF_3 _logUtil (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "PropertyInitUtil: ") _value)) _logUtil (slot-value _commonStrings 'f_CONSTRUCTOR))
        (return-from jreturn (PropertyInitUtil.jstatic_instance)))))



