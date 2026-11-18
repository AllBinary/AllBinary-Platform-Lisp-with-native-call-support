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
;;;; package org.allbinary.media

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ScaleProperties (JObject)
  ((f_scaleX :initform 0.0f0)
   (f_scaleY :initform 0.0f0)
   (f_scaleWidth :initform 0)
   (f_scaleHeight :initform 0)
   (f_shouldScale :initform nil)))

(defvar ScaleProperties.jcell_instance :jnone)
(defun ScaleProperties.jstatic_instance ()
  (when (eq ScaleProperties.jcell_instance :jnone) (setf ScaleProperties.jcell_instance (ScaleProperties.jnew_0)))
  ScaleProperties.jcell_instance)
(defun (setf ScaleProperties.jstatic_instance) (value) (setf ScaleProperties.jcell_instance value))

(defun ScaleProperties.jnew_0 ()
  (let ((this (make-instance 'ScaleProperties)))
    
    
    
    
    
    this))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this ScaleProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (jm_appendfloat_1 (jm_append_1 (jm_appendfloat_1 (jm_append_1 (jm_appendboolean_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_COLON_SEP)) (slot-value this 'f_shouldScale)) "scaleX: ") (slot-value this 'f_scaleX)) "scaleY: ") (slot-value this 'f_scaleY)) "scaleWidth: ") (slot-value this 'f_scaleWidth)) "scaleHeight: ") (slot-value this 'f_scaleHeight)))))))



