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

(defclass LicenseInitInfo (JObject)
  ((f_id :initform nil)
   (f_serverList :initform nil)))

    
(defun LicenseInitInfo.jnew_0 ()
  (let ((this (make-instance 'LicenseInitInfo)))
    (setf (slot-value this 'f_id) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_serverList) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getLicenseId_0) (defgeneric jm_getLicenseId_0 (this)))
(defmethod jm_getLicenseId_0 ((this LicenseInitInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_id)))))

    
(unless (fboundp 'jm_getServer_1) (defgeneric jm_getServer_1 (this p1)))
(defmethod jm_getServer_1 ((this LicenseInitInfo) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (return-from jreturn (jm_get_1 (slot-value this 'f_serverList) _index)))))

    
(unless (fboundp 'jm_getNumberOfServers_0) (defgeneric jm_getNumberOfServers_0 (this)))
(defmethod jm_getNumberOfServers_0 ((this LicenseInitInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_size_0 (slot-value this 'f_serverList))))))

    
(unless (fboundp 'jm_setLicenseId_1) (defgeneric jm_setLicenseId_1 (this p1)))
(defmethod jm_setLicenseId_1 ((this LicenseInitInfo) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_id) _value))))

    
(unless (fboundp 'jm_clearServers_0) (defgeneric jm_clearServers_0 (this)))
(defmethod jm_clearServers_0 ((this LicenseInitInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_serverList)))))

    
(unless (fboundp 'jm_setServer_2) (defgeneric jm_setServer_2 (this p1 p2)))
(defmethod jm_setServer_2 ((this LicenseInitInfo) _value _index)
  (declare (ignorable this _value _index))
  (let ()
    (block jreturn
        (jm_addAt_2 (slot-value this 'f_serverList) _index _value))))

    
(unless (fboundp 'jm_addServer_1) (defgeneric jm_addServer_1 (this p1)))
(defmethod jm_addServer_1 ((this LicenseInitInfo) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_serverList) _value))))

    
(unless (fboundp 'jm_getServerList_0) (defgeneric jm_getServerList_0 (this)))
(defmethod jm_getServerList_0 ((this LicenseInitInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_serverList)))))

    
(unless (fboundp 'jm_setServerList_1) (defgeneric jm_setServerList_1 (this p1)))
(defmethod jm_setServerList_1 ((this LicenseInitInfo) _servers)
  (declare (ignorable this _servers))
  (let ()
    (block jreturn
        (if (eq (DebugFactory.jm_getInstance_0) (NoDebug.jm_getInstance_0))
            (progn
            (setf (slot-value this 'f_serverList) _servers))))))



