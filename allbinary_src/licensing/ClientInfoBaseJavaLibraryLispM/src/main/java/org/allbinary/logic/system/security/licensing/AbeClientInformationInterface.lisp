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

(defclass AbeClientInformationInterface (JObject)
  ())

(defun AbeClientInformationInterface.jnew_0 ()
  (let ((this (make-instance 'AbeClientInformationInterface)))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this AbeClientInformationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "init")))

    
(unless (fboundp 'jm_getOperatingSystemInterface_0) (defgeneric jm_getOperatingSystemInterface_0 (this)))
(defmethod jm_getOperatingSystemInterface_0 ((this AbeClientInformationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getOperatingSystemInterface")))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this AbeClientInformationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getName")))

    
(unless (fboundp 'jm_getSpecialName_0) (defgeneric jm_getSpecialName_0 (this)))
(defmethod jm_getSpecialName_0 ((this AbeClientInformationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getSpecialName")))

    
(unless (fboundp 'jm_getVersion_0) (defgeneric jm_getVersion_0 (this)))
(defmethod jm_getVersion_0 ((this AbeClientInformationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getVersion")))

    
(unless (fboundp 'jm_getLicenseId_0) (defgeneric jm_getLicenseId_0 (this)))
(defmethod jm_getLicenseId_0 ((this AbeClientInformationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getLicenseId")))

    
(unless (fboundp 'jm_getLicenseServers_0) (defgeneric jm_getLicenseServers_0 (this)))
(defmethod jm_getLicenseServers_0 ((this AbeClientInformationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getLicenseServers")))

    
(unless (fboundp 'jm_getLicenseServer_1) (defgeneric jm_getLicenseServer_1 (this p1)))
(defmethod jm_getLicenseServer_1 ((this AbeClientInformationInterface) _index)
  (declare (ignorable this _index))
  (error (JR.newException "AbstractMethodError" "getLicenseServer")))

    
(unless (fboundp 'jm_getNumberOfLicenseServers_0) (defgeneric jm_getNumberOfLicenseServers_0 (this)))
(defmethod jm_getNumberOfLicenseServers_0 ((this AbeClientInformationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getNumberOfLicenseServers")))

    
(unless (fboundp 'jm_toHashtable_0) (defgeneric jm_toHashtable_0 (this)))
(defmethod jm_toHashtable_0 ((this AbeClientInformationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "toHashtable")))

    
(unless (fboundp 'jm_isSameId_1) (defgeneric jm_isSameId_1 (this p1)))
(defmethod jm_isSameId_1 ((this AbeClientInformationInterface) _alicenseId)
  (declare (ignorable this _alicenseId))
  (error (JR.newException "AbstractMethodError" "isSameId")))

    
(unless (fboundp 'jm_isLargerOrDifferentServerList_1) (defgeneric jm_isLargerOrDifferentServerList_1 (this p1)))
(defmethod jm_isLargerOrDifferentServerList_1 ((this AbeClientInformationInterface) _vector)
  (declare (ignorable this _vector))
  (error (JR.newException "AbstractMethodError" "isLargerOrDifferentServerList")))

    
(unless (fboundp 'jm_isHardSale_0) (defgeneric jm_isHardSale_0 (this)))
(defmethod jm_isHardSale_0 ((this AbeClientInformationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isHardSale")))

    
(unless (fboundp 'jm_toShortString_0) (defgeneric jm_toShortString_0 (this)))
(defmethod jm_toShortString_0 ((this AbeClientInformationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "toShortString")))



