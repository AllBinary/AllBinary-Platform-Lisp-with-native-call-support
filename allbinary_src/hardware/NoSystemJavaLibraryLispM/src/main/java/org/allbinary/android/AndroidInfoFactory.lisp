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
;;;; package org.allbinary.android

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AndroidInfoFactory (JObject)
  ((f_version :initform 0)))

(defvar AndroidInfoFactory.jcell_instance :jnone)
(defun AndroidInfoFactory.jstatic_instance ()
  (when (eq AndroidInfoFactory.jcell_instance :jnone) (setf AndroidInfoFactory.jcell_instance (AndroidInfoFactory.jnew_0)))
  AndroidInfoFactory.jcell_instance)
(defun (setf AndroidInfoFactory.jstatic_instance) (value) (setf AndroidInfoFactory.jcell_instance value))

(defun AndroidInfoFactory.jnew_0 ()
  (let ((this (make-instance 'AndroidInfoFactory)))
    (setf (slot-value this 'f_version) 8)
    this))

    
(defun AndroidInfoFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AndroidInfoFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getVersion_0) (defgeneric jm_getVersion_0 (this)))
(defmethod jm_getVersion_0 ((this AndroidInfoFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_version)))))



