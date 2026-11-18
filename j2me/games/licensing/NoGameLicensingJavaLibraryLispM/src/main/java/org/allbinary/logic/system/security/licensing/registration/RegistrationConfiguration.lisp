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
;;;; package org.allbinary.logic.system.security.licensing.registration

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RegistrationConfiguration (JObject)
  ((f_registrationCode :initform nil)
   (f_NAME :initform nil)))

(defvar RegistrationConfiguration.jcell_SINGLETON :jnone)
(defun RegistrationConfiguration.jstatic_SINGLETON ()
  (when (eq RegistrationConfiguration.jcell_SINGLETON :jnone) (setf RegistrationConfiguration.jcell_SINGLETON (RegistrationConfiguration.jnew_0)))
  RegistrationConfiguration.jcell_SINGLETON)
(defun (setf RegistrationConfiguration.jstatic_SINGLETON) (value) (setf RegistrationConfiguration.jcell_SINGLETON value))

    
(defun RegistrationConfiguration.jnew_0 ()
  (let ((this (make-instance 'RegistrationConfiguration)))
    (setf (slot-value this 'f_registrationCode) "No Registration Code")
    (setf (slot-value this 'f_NAME) "registrationid")
  (let ()
    (block jreturn nil))
    this))

    
(defun RegistrationConfiguration.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (RegistrationConfiguration.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_read_0) (defgeneric jm_read_0 (this)))
(defmethod jm_read_0 ((this RegistrationConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_write_0) (defgeneric jm_write_0 (this)))
(defmethod jm_write_0 ((this RegistrationConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this RegistrationConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Registration Code: ") (jm_getRegistrationCode_0 this)))))))

    
(unless (fboundp 'jm_setRegistrationCode_1) (defgeneric jm_setRegistrationCode_1 (this p1)))
(defmethod jm_setRegistrationCode_1 ((this RegistrationConfiguration) _registrationCode)
  (declare (ignorable this _registrationCode))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_registrationCode) _registrationCode))))

    
(unless (fboundp 'jm_getRegistrationCode_0) (defgeneric jm_getRegistrationCode_0 (this)))
(defmethod jm_getRegistrationCode_0 ((this RegistrationConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_registrationCode)))))



