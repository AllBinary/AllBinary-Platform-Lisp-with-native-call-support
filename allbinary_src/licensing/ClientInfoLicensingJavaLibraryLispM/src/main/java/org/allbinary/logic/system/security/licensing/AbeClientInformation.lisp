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

; This is the information sent to the license server
(defclass AbeClientInformation (ClientInformation)
  ((f_logUtil :initform nil)))

    
(defun AbeClientInformation.jnew_4 (_name _version _specialName _shortName)
  (declare (ignorable _name _version _specialName _shortName))
  (let ((this (make-instance 'AbeClientInformation)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this AbeClientInformation))
  (declare (ignorable this))
  (let (_licenseInitInfo _stringValidationUtil _NONE _commonStrings _logUtil)
  (declare (ignorable _licenseInitInfo _stringValidationUtil _NONE _commonStrings _logUtil))
    (block jreturn
        (handler-case (progn
            (jm_setOperatingSystemInterface_1 this (jm_getOperatingSystemInstance_0 (OperatingSystemFactory.jm_getInstance_0)))
            (setf _licenseInitInfo (jm_read_0 (LicenseInitInfoUtil.jm_getInstance_0)))
            (jm_setLicenseId_1 this (jm_getLicenseId_0 _licenseInitInfo))
            (jm_setLicenseServers_1 this (jm_getServerList_0 _licenseInitInfo))
            (setf _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
            (if (jm_isEmpty_1 _stringValidationUtil (jm_getLicenseId_0 this))
                (progn
                (setf _NONE "No License Id")
                (jm_setLicenseId_1 this _NONE)))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Special Name: ") (jm_getSpecialName_0 this))) this (slot-value _commonStrings 'f_CONSTRUCTOR)))
            (error (_e) (declare (ignorable _e))
            (setf _logUtil (LogUtil.jm_getInstance_0))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 _logUtil (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_CONSTRUCTOR) _e))))))



