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
;;;; package org.allbinary.logic.system.os.solaris

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SolarisOperatingSystemFactory (JObject)
  ((f_logUtil :initform nil)))

(defvar SolarisOperatingSystemFactory.jcell_instance :jnone)
(defun SolarisOperatingSystemFactory.jstatic_instance ()
  (when (eq SolarisOperatingSystemFactory.jcell_instance :jnone) (setf SolarisOperatingSystemFactory.jcell_instance (SolarisOperatingSystemFactory.jnew_0)))
  SolarisOperatingSystemFactory.jcell_instance)
(defun (setf SolarisOperatingSystemFactory.jstatic_instance) (value) (setf SolarisOperatingSystemFactory.jcell_instance value))

    
(defun SolarisOperatingSystemFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SolarisOperatingSystemFactory.jstatic_instance)))))

    
(defun SolarisOperatingSystemFactory.jnew_0 ()
  (let ((this (make-instance 'SolarisOperatingSystemFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getOperatingSystemInstance_0) (defgeneric jm_getOperatingSystemInstance_0 (this)))
(defmethod jm_getOperatingSystemInstance_0 ((this SolarisOperatingSystemFactory))
  (declare (ignorable this))
  (let (_operatingSystems _osName _operatingSystemInterface _commonStrings)
  (declare (ignorable _operatingSystems _osName _operatingSystemInterface _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _operatingSystems (OperatingSystems.jm_getInstance_0))
            (setf _osName (jm_getName_0 (SystemProperties.jm_getInstance_0)))
            (setf _operatingSystemInterface nil)
            (if (eq (JR.compareTo _osName (slot-value _operatingSystems 'f_SOLARIS)) 0)
                (progn
                (setf _operatingSystemInterface (SolarisOS.jnew_0)))
                (progn
                (if (jm_isUnknownSpecificOSAllowed_0 _operatingSystems)
                    (progn
                    (setf _operatingSystemInterface (SolarisOS.jnew_0)))
                    (progn
                    (error (JR.newException "Exception" (JR.concat "Specific Solaris OS Not Supported: " _osName)))))))
            (return-from jreturn _operatingSystemInterface))
            (error (_e) (declare (ignorable _e))
            (if (jm_contains_1 (LogConfigTypes.jstatic_LOGGING) (slot-value (LogConfigTypeFactory.jm_getInstance_0) 'f_FACTORYERROR))
                (progn
                (setf _commonStrings (CommonStrings.jm_getInstance_0))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_GET_INSTANCE) _e)))
            (return-from jreturn (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM)))))))



