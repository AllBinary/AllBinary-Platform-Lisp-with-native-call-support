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
;;;; package org.allbinary.logic.system.security.licensing

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LicenseUtil (JObject)
  ())

(defvar LicenseUtil.jcell_instance :jnone)
(defun LicenseUtil.jstatic_instance ()
  (when (eq LicenseUtil.jcell_instance :jnone) (setf LicenseUtil.jcell_instance (LicenseUtil.jnew_0)))
  LicenseUtil.jcell_instance)
(defun (setf LicenseUtil.jstatic_instance) (value) (setf LicenseUtil.jcell_instance value))

(defun LicenseUtil.jnew_0 ()
  (let ((this (make-instance 'LicenseUtil)))
    this))

    
(defun LicenseUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LicenseUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this LicenseUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isRunning_0) (defgeneric jm_isRunning_0 (this)))
(defmethod jm_isRunning_0 ((this LicenseUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_setRunning_1) (defgeneric jm_setRunning_1 (this p1)))
(defmethod jm_setRunning_1 ((this LicenseUtil) _running)
  (declare (ignorable this _running))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_shouldWait_1) (defgeneric jm_shouldWait_1 (this p1)))
(defmethod jm_shouldWait_1 ((this LicenseUtil) _commandListener)
  (declare (ignorable this _commandListener))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isRunning_0 this)))))



