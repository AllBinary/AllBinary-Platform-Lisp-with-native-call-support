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

(defclass OperatingSystemFactory (JObject)
  ((f_logUtil :initform nil)
   (f_genericOperatingSystem :initform nil)))

(defvar OperatingSystemFactory.jcell_instance :jnone)
(defun OperatingSystemFactory.jstatic_instance ()
  (when (eq OperatingSystemFactory.jcell_instance :jnone) (setf OperatingSystemFactory.jcell_instance (OperatingSystemFactory.jnew_0)))
  OperatingSystemFactory.jcell_instance)
(defun (setf OperatingSystemFactory.jstatic_instance) (value) (setf OperatingSystemFactory.jcell_instance value))

    
(defun OperatingSystemFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OperatingSystemFactory.jstatic_instance)))))

    
(defun OperatingSystemFactory.jnew_0 ()
  (let ((this (make-instance 'OperatingSystemFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_genericOperatingSystem) (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getOperatingSystemInstance_0) (defgeneric jm_getOperatingSystemInstance_0 (this)))
(defmethod jm_getOperatingSystemInstance_0 ((this OperatingSystemFactory))
  (declare (ignorable this))
  (let (_commonStrings _osString)
  (declare (ignorable _commonStrings _osString))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (handler-case (progn
            (setf _osString (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "OperatingSystem Info: ") (jm_toString_0 (slot-value this 'f_genericOperatingSystem)))))
            (JR.println _osString)
            (jm_putF_3 (slot-value this 'f_logUtil) _osString this (slot-value _commonStrings 'f_GET_INSTANCE)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_GET_INSTANCE) _e)))
        (return-from jreturn (slot-value this 'f_genericOperatingSystem)))))



