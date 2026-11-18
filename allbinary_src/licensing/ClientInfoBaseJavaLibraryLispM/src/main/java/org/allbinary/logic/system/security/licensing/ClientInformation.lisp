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
(defclass ClientInformation (JObject)
  ((f_operatingSystemInterface :initform nil)
   (f_tsUtil :initform nil)
   (f_name :initform nil)
   (f_shortName :initform nil)
   (f_version :initform nil)
   (f_specialName :initform nil)
   (f_hardSale :initform nil)
   (f_licenseId :initform nil)
   (f_licenseServers :initform nil)))

    
(defun ClientInformation.jnew_4 (_name _version _specialName _shortName)
  (declare (ignorable _name _version _specialName _shortName))
  (let ((this (make-instance 'ClientInformation)))
    (setf (slot-value this 'f_operatingSystemInterface) (NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
    
    
    
    
    (setf (slot-value this 'f_hardSale) t)
    (setf (slot-value this 'f_licenseId) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_licenseServers) (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0)))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _name)
        (setf (slot-value this 'f_version) _version)
        (setf (slot-value this 'f_specialName) _specialName)
        (setf (slot-value this 'f_shortName) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) _shortName) (slot-value (CommonSeps.jm_getInstance_0) 'f_UNDERSCORE)) _version)))
        (jm_init_0 this)))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this ClientInformation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getOperatingSystemInterface_0) (defgeneric jm_getOperatingSystemInterface_0 (this)))
(defmethod jm_getOperatingSystemInterface_0 ((this ClientInformation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_operatingSystemInterface)))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this ClientInformation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_getSpecialName_0) (defgeneric jm_getSpecialName_0 (this)))
(defmethod jm_getSpecialName_0 ((this ClientInformation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_specialName)))))

    
(unless (fboundp 'jm_getVersion_0) (defgeneric jm_getVersion_0 (this)))
(defmethod jm_getVersion_0 ((this ClientInformation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_version)))))

    
(unless (fboundp 'jm_getLicenseId_0) (defgeneric jm_getLicenseId_0 (this)))
(defmethod jm_getLicenseId_0 ((this ClientInformation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_licenseId)))))

    
(unless (fboundp 'jm_getLicenseServers_0) (defgeneric jm_getLicenseServers_0 (this)))
(defmethod jm_getLicenseServers_0 ((this ClientInformation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_licenseServers)))))

    
(unless (fboundp 'jm_getLicenseServer_1) (defgeneric jm_getLicenseServer_1 (this p1)))
(defmethod jm_getLicenseServer_1 ((this ClientInformation) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value (slot-value this 'f_licenseServers) 'f_objectArray) _index)))))

    
(unless (fboundp 'jm_getNumberOfLicenseServers_0) (defgeneric jm_getNumberOfLicenseServers_0 (this)))
(defmethod jm_getNumberOfLicenseServers_0 ((this ClientInformation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_size_0 (slot-value this 'f_licenseServers))))))

    
(unless (fboundp 'jm_toHashtable_0) (defgeneric jm_toHashtable_0 (this)))
(defmethod jm_toHashtable_0 ((this ClientInformation))
  (declare (ignorable this))
  (let (_abeClientInformationData _genericOperatingSystem _clientInfoHashtable _hardwareInterface _hardwareString)
  (declare (ignorable _abeClientInformationData _genericOperatingSystem _clientInfoHashtable _hardwareInterface _hardwareString))
    (block jreturn
        (setf _abeClientInformationData (AbeClientInformationData.jm_getInstance_0))
        (setf _genericOperatingSystem (jm_getOperatingSystemInterface_0 this))
        (setf _clientInfoHashtable (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
        (jm_put_2 _clientInfoHashtable (slot-value _abeClientInformationData 'f_NAME) (slot-value this 'f_name))
        (jm_put_2 _clientInfoHashtable (slot-value _abeClientInformationData 'f_VERSION) (slot-value this 'f_version))
        (jm_put_2 _clientInfoHashtable (slot-value _abeClientInformationData 'f_SPECIALNAME) (slot-value this 'f_specialName))
        (jm_put_2 _clientInfoHashtable (slot-value _abeClientInformationData 'f_LICENSEID) (jm_getLicenseId_0 this))
        (jm_put_2 _clientInfoHashtable (slot-value _abeClientInformationData 'f_OSNAME) (jm_getName_0 _genericOperatingSystem))
        (jm_put_2 _clientInfoHashtable (slot-value _abeClientInformationData 'f_OSARCH) (jm_getArch_0 _genericOperatingSystem))
        (jm_put_2 _clientInfoHashtable (slot-value _abeClientInformationData 'f_OSVERSION) (jm_getVersion_0 _genericOperatingSystem))
        (jm_put_2 _clientInfoHashtable (slot-value _abeClientInformationData 'f_OS) (jm_toString_0 _genericOperatingSystem))
        (setf _hardwareInterface (jm_getInstance_1 (SystemHardwareFactory.jm_getInstance_0) _genericOperatingSystem))
        (setf _hardwareString (jm_toString_0 _hardwareInterface))
        (jm_put_2 _clientInfoHashtable (slot-value _abeClientInformationData 'f_HARDWARE) _hardwareString)
        (return-from jreturn _clientInfoHashtable))))

    
(unless (fboundp 'jm_isSameId_1) (defgeneric jm_isSameId_1 (this p1)))
(defmethod jm_isSameId_1 ((this ClientInformation) _alicenseId)
  (declare (ignorable this _alicenseId))
  (let ()
    (block jreturn
        (if (eq (jm_compareTo_2 (slot-value this 'f_tsUtil) (jm_getLicenseId_0 this) _alicenseId) 0)
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_isLargerOrDifferentServerList_1) (defgeneric jm_isLargerOrDifferentServerList_1 (this p1)))
(defmethod jm_isLargerOrDifferentServerList_1 ((this ClientInformation) _list)
  (declare (ignorable this _list))
  (let (_size _currentSize _newServerName _nextOldServerName _index2 _index)
  (declare (ignorable _size _currentSize _newServerName _nextOldServerName _index2 _index))
    (block jreturn
        (setf _size (JR.i32 (- (jm_size_0 _list) 1)))
        (setf _currentSize (JR.i32 (- (jm_size_0 (slot-value this 'f_licenseServers)) 1)))
        (if (> _size _currentSize)
            (progn
            (return-from jreturn t)))
        (progn
            (setf _index _size)
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _newServerName (aref (slot-value _list 'f_objectArray) _index))
            (progn
                (setf _index2 _currentSize)
                (block jbreak (loop while (>= _index2 0) do
                    (block jcontinue
                (setf _nextOldServerName (aref (slot-value (slot-value this 'f_licenseServers) 'f_objectArray) _index))
                (if (not (eq (jm_compareTo_2 (slot-value this 'f_tsUtil) _newServerName _nextOldServerName) 0))
                    (progn
                    (return-from jreturn t))))
                    (setf _index2 (JR.i32 (- _index2 1)))))))
                (setf _index (JR.i32 (- _index 1))))))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_setHardSale_1) (defgeneric jm_setHardSale_1 (this p1)))
(defmethod jm_setHardSale_1 ((this ClientInformation) _hardSale)
  (declare (ignorable this _hardSale))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_hardSale) _hardSale))))

    
(unless (fboundp 'jm_isHardSale_0) (defgeneric jm_isHardSale_0 (this)))
(defmethod jm_isHardSale_0 ((this ClientInformation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_hardSale)))))

    
(unless (fboundp 'jm_setOperatingSystemInterface_1) (defgeneric jm_setOperatingSystemInterface_1 (this p1)))
(defmethod jm_setOperatingSystemInterface_1 ((this ClientInformation) _operatingSystemInterface)
  (declare (ignorable this _operatingSystemInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_operatingSystemInterface) _operatingSystemInterface))))

    
(unless (fboundp 'jm_setLicenseId_1) (defgeneric jm_setLicenseId_1 (this p1)))
(defmethod jm_setLicenseId_1 ((this ClientInformation) _licenseId)
  (declare (ignorable this _licenseId))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_licenseId) _licenseId))))

    
(unless (fboundp 'jm_setLicenseServers_1) (defgeneric jm_setLicenseServers_1 (this p1)))
(defmethod jm_setLicenseServers_1 ((this ClientInformation) _licenseServers)
  (declare (ignorable this _licenseServers))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_licenseServers) _licenseServers))))

    
(unless (fboundp 'jm_toShortString_0) (defgeneric jm_toShortString_0 (this)))
(defmethod jm_toShortString_0 ((this ClientInformation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_shortName)))))



