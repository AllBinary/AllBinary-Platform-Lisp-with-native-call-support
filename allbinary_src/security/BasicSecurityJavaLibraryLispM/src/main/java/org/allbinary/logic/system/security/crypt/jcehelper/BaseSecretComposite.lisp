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
;;;; package org.allbinary.logic.system.security.crypt.jcehelper

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BaseSecretComposite (JObject)
  ())

(defvar BaseSecretComposite.jcell_NULL_SECRET_COMPOSITE :jnone)
(defun BaseSecretComposite.jstatic_NULL_SECRET_COMPOSITE ()
  (when (eq BaseSecretComposite.jcell_NULL_SECRET_COMPOSITE :jnone) (setf BaseSecretComposite.jcell_NULL_SECRET_COMPOSITE (BaseSecretComposite.jnew_0)))
  BaseSecretComposite.jcell_NULL_SECRET_COMPOSITE)
(defun (setf BaseSecretComposite.jstatic_NULL_SECRET_COMPOSITE) (value) (setf BaseSecretComposite.jcell_NULL_SECRET_COMPOSITE value))

(defun BaseSecretComposite.jnew_0 ()
  (let ((this (make-instance 'BaseSecretComposite)))
    this))

    
(unless (fboundp 'jm_encrypt_1) (defgeneric jm_encrypt_1 (this p1)))
(defmethod jm_encrypt_1 ((this BaseSecretComposite) _array)
  (declare (ignorable this _array))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_BYTE_ARRAY)))))

    
(unless (fboundp 'jm_decrypt_1) (defgeneric jm_decrypt_1 (this p1)))
(defmethod jm_decrypt_1 ((this BaseSecretComposite) _array)
  (declare (ignorable this _array))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_BYTE_ARRAY)))))



