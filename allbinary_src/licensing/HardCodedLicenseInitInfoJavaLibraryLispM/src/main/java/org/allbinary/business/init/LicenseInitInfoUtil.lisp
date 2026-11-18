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
;;;; package org.allbinary.business.init

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LicenseInitInfoUtil (JObject)
  ((f_INITFILENAME :initform nil)
   (f_ABOUT :initform nil)
   (f_PRIVACY_POLICY :initform nil)
   (f_OFFICIAL_ALLBINARY_SERVICES_SERVER :initform nil)))

(defvar LicenseInitInfoUtil.jcell_instance :jnone)
(defun LicenseInitInfoUtil.jstatic_instance ()
  (when (eq LicenseInitInfoUtil.jcell_instance :jnone) (setf LicenseInitInfoUtil.jcell_instance (LicenseInitInfoUtil.jnew_0)))
  LicenseInitInfoUtil.jcell_instance)
(defun (setf LicenseInitInfoUtil.jstatic_instance) (value) (setf LicenseInitInfoUtil.jcell_instance value))

    
(defun LicenseInitInfoUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LicenseInitInfoUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_setFilePath_1) (defgeneric jm_setFilePath_1 (this p1)))
(defmethod jm_setFilePath_1 ((this LicenseInitInfoUtil) _filePath)
  (declare (ignorable this _filePath))
  (let ()
    (block jreturn nil)))

    
(defun LicenseInitInfoUtil.jnew_0 ()
  (let ((this (make-instance 'LicenseInitInfoUtil)))
    (setf (slot-value this 'f_INITFILENAME) "licenseinitdata.dat")
    (setf (slot-value this 'f_ABOUT) "about")
    (setf (slot-value this 'f_PRIVACY_POLICY) "privacy_policy")
    (setf (slot-value this 'f_OFFICIAL_ALLBINARY_SERVICES_SERVER) "https://services.allbinary.com/LicServ/serverssl.php")
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_write_1) (defgeneric jm_write_1 (this p1)))
(defmethod jm_write_1 ((this LicenseInitInfoUtil) _initData)
  (declare (ignorable this _initData))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_read_0) (defgeneric jm_read_0 (this)))
(defmethod jm_read_0 ((this LicenseInitInfoUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_readAgain_1 this 0)))))

    
(unless (fboundp 'jm_readAgain_1) (defgeneric jm_readAgain_1 (this p1)))
(defmethod jm_readAgain_1 ((this LicenseInitInfoUtil) _initializeCounter)
  (declare (ignorable this _initializeCounter))
  (let (_licenseInitInfo)
  (declare (ignorable _licenseInitInfo))
    (block jreturn
        (setf _licenseInitInfo (LicenseInitInfo.jnew_0))
        (jm_clearServers_0 _licenseInitInfo)
        (jm_addServer_1 _licenseInitInfo (slot-value this 'f_OFFICIAL_ALLBINARY_SERVICES_SERVER))
        (return-from jreturn _licenseInitInfo))))



