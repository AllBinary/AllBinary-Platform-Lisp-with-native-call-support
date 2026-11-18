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
;;;; package org.allbinary.logic.system.os

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;ActualPlatform
(defclass SystemProperties (JObject)
  ((f_OS_NAME :initform nil)
   (f_OS_ARCH :initform nil)
   (f_OS_VERSION :initform nil)
   (f_USER_HOME :initform nil)))

(defvar SystemProperties.jcell_instance :jnone)
(defun SystemProperties.jstatic_instance ()
  (when (eq SystemProperties.jcell_instance :jnone) (setf SystemProperties.jcell_instance (SystemProperties.jnew_0)))
  SystemProperties.jcell_instance)
(defun (setf SystemProperties.jstatic_instance) (value) (setf SystemProperties.jcell_instance value))

    
(defun SystemProperties.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SystemProperties.jstatic_instance)))))

    
(defun SystemProperties.jnew_0 ()
  (let ((this (make-instance 'SystemProperties)))
    (setf (slot-value this 'f_OS_NAME) "os.name")
    (setf (slot-value this 'f_OS_ARCH) "os.arch")
    (setf (slot-value this 'f_OS_VERSION) "os.version")
    (setf (slot-value this 'f_USER_HOME) "user.home")
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this SystemProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (System.jm_getProperty_1 (slot-value this 'f_OS_NAME))))))

    
(unless (fboundp 'jm_getArch_0) (defgeneric jm_getArch_0 (this)))
(defmethod jm_getArch_0 ((this SystemProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (System.jm_getProperty_1 (slot-value this 'f_OS_ARCH))))))

    
(unless (fboundp 'jm_getVersion_0) (defgeneric jm_getVersion_0 (this)))
(defmethod jm_getVersion_0 ((this SystemProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (System.jm_getProperty_1 (slot-value this 'f_OS_VERSION))))))

    
(unless (fboundp 'jm_getUserHomePath_0) (defgeneric jm_getUserHomePath_0 (this)))
(defmethod jm_getUserHomePath_0 ((this SystemProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (System.jm_getProperty_1 (slot-value this 'f_USER_HOME))))))



