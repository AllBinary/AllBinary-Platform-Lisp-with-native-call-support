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
   (f_commonStrings :initform nil)
   (f_genericOperatingSystem :initform nil)
   (f_hasDetected :initform nil)))

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
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_genericOperatingSystem) (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM))
    (setf (slot-value this 'f_hasDetected) nil)
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getOperatingSystemInstance_0) (defgeneric jm_getOperatingSystemInstance_0 (this)))
(defmethod jm_getOperatingSystemInstance_0 ((this OperatingSystemFactory))
  (declare (ignorable this))
  (let (_operatingSystems _systemProperties _osName _osArch _osVersion _log)
  (declare (ignorable _operatingSystems _systemProperties _osName _osArch _osVersion _log))
    (block jreturn
        (handler-case (progn
            (setf _operatingSystems (OperatingSystems.jm_getInstance_0))
            (setf _systemProperties (SystemProperties.jm_getInstance_0))
            (setf _osName (jm_getName_0 _systemProperties))
            (setf _osArch (jm_getArch_0 _systemProperties))
            (setf _osVersion (jm_getVersion_0 _systemProperties))
            (if (not (slot-value this 'f_hasDetected))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (JR.concat "osName: " _osName) this (slot-value (slot-value this 'f_commonStrings) 'f_GET_INSTANCE))
                (setf (slot-value this 'f_hasDetected) t)
                (if (>= (JR.indexOf _osName (slot-value _operatingSystems 'f_LINUX)) 0)
                    (progn
                    (if (jm_contains_1 (LogConfigTypes.jstatic_LOGGING) (slot-value (LogConfigTypeFactory.jm_getInstance_0) 'f_FACTORYERROR))
                        (progn
                        (jm_putF_3 (slot-value this 'f_logUtil) "Found a Linux OS" this (slot-value (slot-value this 'f_commonStrings) 'f_GET_INSTANCE))))
                    (setf (slot-value this 'f_genericOperatingSystem) (jm_getOperatingSystemInstance_0 (LinuxOperatingSystemFactory.jm_getInstance_0))))
                    (if (>= (JR.indexOf _osName (slot-value _operatingSystems 'f_WINDOWS)) 0)
                    (progn
                    (if (jm_contains_1 (LogConfigTypes.jstatic_LOGGING) (slot-value (LogConfigTypeFactory.jm_getInstance_0) 'f_FACTORYERROR))
                        (progn
                        (jm_putF_3 (slot-value this 'f_logUtil) "Found a Windows OS" this (slot-value (slot-value this 'f_commonStrings) 'f_GET_INSTANCE))))
                    (setf (slot-value this 'f_genericOperatingSystem) (jm_getOperatingSystemInstance_0 (WindowsOperatingSystemFactory.jm_getInstance_0))))
                    (if (>= (JR.indexOf _osName (slot-value _operatingSystems 'f_SOLARIS)) 0)
                    (progn
                    (if (jm_contains_1 (LogConfigTypes.jstatic_LOGGING) (slot-value (LogConfigTypeFactory.jm_getInstance_0) 'f_FACTORYERROR))
                        (progn
                        (jm_putF_3 (slot-value this 'f_logUtil) "Found a Solaris OS" this (slot-value (slot-value this 'f_commonStrings) 'f_GET_INSTANCE))))
                    (setf (slot-value this 'f_genericOperatingSystem) (jm_getOperatingSystemInstance_0 (SolarisOperatingSystemFactory.jm_getInstance_0))))
                    (progn
                    (error (JR.newException "Exception" (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "OS Not Supported: ") _osName))))))))
                (setf _log (LogFactory.jm_getInstanceF_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "OperatingSystem Info: ") (jm_toString_1 (StringUtil.jm_getInstance_0) (slot-value this 'f_genericOperatingSystem)))) this (slot-value (slot-value this 'f_commonStrings) 'f_GET_INSTANCE)))
                (JR.println (jm_toString_0 _log))
                (jm_putL_1 (slot-value this 'f_logUtil) _log)))
            (return-from jreturn (slot-value this 'f_genericOperatingSystem)))
            (error (_e) (declare (ignorable _e))
            (if (jm_contains_1 (LogConfigTypes.jstatic_LOGGING) (slot-value (LogConfigTypeFactory.jm_getInstance_0) 'f_FACTORYERROR))
                (progn
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_GET_INSTANCE) _e)))
            (return-from jreturn (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM)))))))



