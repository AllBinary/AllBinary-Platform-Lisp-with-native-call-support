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
;;;; package org.allbinary.logic.system.os.windows

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass WindowsOperatingSystemFactory (JObject)
  ((f_logUtil :initform nil)))

(defvar WindowsOperatingSystemFactory.jcell_instance :jnone)
(defun WindowsOperatingSystemFactory.jstatic_instance ()
  (when (eq WindowsOperatingSystemFactory.jcell_instance :jnone) (setf WindowsOperatingSystemFactory.jcell_instance (WindowsOperatingSystemFactory.jnew_0)))
  WindowsOperatingSystemFactory.jcell_instance)

    
(defun WindowsOperatingSystemFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (WindowsOperatingSystemFactory.jstatic_instance)))))

    
(defun WindowsOperatingSystemFactory.jnew_0 ()
  (let ((this (make-instance 'WindowsOperatingSystemFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getOperatingSystemInstance_0) (defgeneric jm_getOperatingSystemInstance_0 (this)))
(defmethod jm_getOperatingSystemInstance_0 ((this WindowsOperatingSystemFactory))
  (declare (ignorable this))
  (let (_operatingSystems _osName _operatingSystemInterface _commonStrings)
  (declare (ignorable _operatingSystems _osName _operatingSystemInterface _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _operatingSystems (OperatingSystems.jm_getInstance_0))
            (setf _osName (jm_getName_0 (SystemProperties.jm_getInstance_0)))
            (setf _operatingSystemInterface nil)
            (if (eq (JR.compareTo _osName (slot-value _operatingSystems 'f_WINDOWS_NT)) 0)
                (progn
                (setf _operatingSystemInterface (WindowsOS.jnew_0)))
                (if (eq (JR.compareTo _osName (slot-value _operatingSystems 'f_WINDOWS_10)) 0)
                (progn
                (setf _operatingSystemInterface (WindowsOS.jnew_0)))
                (if (eq (JR.compareTo _osName (slot-value _operatingSystems 'f_WINDOWS_11)) 0)
                (progn
                (setf _operatingSystemInterface (WindowsOS.jnew_0)))
                (if (eq (JR.compareTo _osName (slot-value _operatingSystems 'f_WINDOWS2000)) 0)
                (progn
                (setf _operatingSystemInterface (WindowsOS.jnew_0)))
                (if (eq (JR.compareTo _osName (slot-value _operatingSystems 'f_WINDOWS_XP)) 0)
                (progn
                (setf _operatingSystemInterface (WindowsOS.jnew_0)))
                (if (eq (JR.compareTo _osName (slot-value _operatingSystems 'f_WINDOWS_VISTA)) 0)
                (progn
                (setf _operatingSystemInterface (WindowsOS.jnew_0)))
                (progn
                (if (jm_isUnknownSpecificOSAllowed_0 _operatingSystems)
                    (progn
                    (setf _operatingSystemInterface (WindowsOS.jnew_0)))
                    (progn
                    (error (JR.newException "Exception" (JR.concat "Specific Windows OS Not Supported: " _osName))))))))))))
            (return-from jreturn _operatingSystemInterface))
            (error (_e) (declare (ignorable _e))
            (if (JR.className (LogConfigTypes.jstatic_LOGGING))
                (progn
                (setf _commonStrings (CommonStrings.jm_getInstance_0))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_GET_INSTANCE) _e)))
            (return-from jreturn (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM)))))))



