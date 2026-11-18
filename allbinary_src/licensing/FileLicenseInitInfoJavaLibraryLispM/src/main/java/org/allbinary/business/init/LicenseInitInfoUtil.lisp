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
  ((f_logUtil :initform nil)
   (f_stringUtil :initform nil)
   (f_INITFILENAME :initform nil)
   (f_ABOUT :initform nil)
   (f_PRIVACY_POLICY :initform nil)
   (f_filePath :initform nil)))

(defvar LicenseInitInfoUtil.jcell_instance :jnone)
(defun LicenseInitInfoUtil.jstatic_instance ()
  (when (eq LicenseInitInfoUtil.jcell_instance :jnone) (setf LicenseInitInfoUtil.jcell_instance (LicenseInitInfoUtil.jnew_0)))
  LicenseInitInfoUtil.jcell_instance)
(defun (setf LicenseInitInfoUtil.jstatic_instance) (value) (setf LicenseInitInfoUtil.jcell_instance value))

(defun LicenseInitInfoUtil.jnew_0 ()
  (let ((this (make-instance 'LicenseInitInfoUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_stringUtil) (StringUtil.jm_getInstance_0))
    (setf (slot-value this 'f_INITFILENAME) "licenseinitdata.dat")
    (setf (slot-value this 'f_ABOUT) "about")
    (setf (slot-value this 'f_PRIVACY_POLICY) "privacy_policy")
    (setf (slot-value this 'f_filePath) (slot-value (slot-value this 'f_stringUtil) 'f_EMPTY_STRING))
    this))

    
(defun LicenseInitInfoUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LicenseInitInfoUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_setFilePath_1) (defgeneric jm_setFilePath_1 (this p1)))
(defmethod jm_setFilePath_1 ((this LicenseInitInfoUtil) _filePath)
  (declare (ignorable this _filePath))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_filePath) _filePath))))

    
(unless (fboundp 'jm_write_1) (defgeneric jm_write_1 (this p1)))
(defmethod jm_write_1 ((this LicenseInitInfoUtil) _initData)
  (declare (ignorable this _initData))
  (let (_tsUtil _dataOutputStream _licenseIdCrypted _numberOfLicenseServers _licenseServerCrypted _index)
  (declare (ignorable _tsUtil _dataOutputStream _licenseIdCrypted _numberOfLicenseServers _licenseServerCrypted _index))
    (block jreturn
        (if (eq (slot-value this 'f_filePath) (slot-value (slot-value this 'f_stringUtil) 'f_EMPTY_STRING))
            (progn
            (setf (slot-value this 'f_filePath) (JR.i32 (+ (URLGLOBALS.jm_getMainPath_0) (slot-value (PATH_GLOBALS.jm_getInstance_0) 'f_INIT_PATH))))))
        (handler-case (progn
            (setf _tsUtil (TsUtil.jm_getInstance_0))
            (setf _dataOutputStream (jm_getInstance_2 (DataOutputStreamFactory.jm_getInstance_0) (slot-value this 'f_filePath) (slot-value this 'f_INITFILENAME)))
            (setf _licenseIdCrypted (jm_getByteArray_1 _tsUtil (jm_encrypt_1 (WeakCrypt.jnew_1 1) (jm_getLicenseId_0 _initData))))
            (jm_writeUTF_1 _dataOutputStream (DatabaseEncoder.jm_encode_1 _licenseIdCrypted))
            (setf _numberOfLicenseServers (jm_getNumberOfServers_0 _initData))
            (jm_writeInt_1 _dataOutputStream _numberOfLicenseServers)
            (setf _licenseServerCrypted nil)
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _numberOfLicenseServers) do
                    (block jcontinue
                (setf _licenseServerCrypted (jm_getByteArray_1 _tsUtil (jm_encrypt_1 (WeakCrypt.jnew_1 3) (jm_getServer_1 _initData _index))))
                (jm_writeUTF_1 _dataOutputStream (DatabaseEncoder.jm_encode_1 _licenseServerCrypted)))
                    (setf _index (JR.i32 (+ _index 1)))))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (JR.concat "Command Failed: " (slot-value this 'f_INITFILENAME)) this "write" _e)
            (jm_delete_2 (FileStreamFactory.jm_getInstance_0) (slot-value this 'f_filePath) (slot-value this 'f_INITFILENAME))
            (error _e))))))

    
(unless (fboundp 'jm_read_0) (defgeneric jm_read_0 (this)))
(defmethod jm_read_0 ((this LicenseInitInfoUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_readAgain_1 this 0)))))

    
(unless (fboundp 'jm_readAgain_1) (defgeneric jm_readAgain_1 (this p1)))
(defmethod jm_readAgain_1 ((this LicenseInitInfoUtil) _initializeCounter)
  (declare (ignorable this _initializeCounter))
  (let (_METHOD_NAME _fileStreamFactory _iFile _iData _initInfo _decodedByteArray _licenseIdDecoded _numberOfLicenseServers _NEXT_FILE _licenseServerDecoded _index)
  (declare (ignorable _METHOD_NAME _fileStreamFactory _iFile _iData _initInfo _decodedByteArray _licenseIdDecoded _numberOfLicenseServers _NEXT_FILE _licenseServerDecoded _index))
    (block jreturn
        (setf _METHOD_NAME "readAgain")
        (if (eq (slot-value this 'f_filePath) (slot-value (slot-value this 'f_stringUtil) 'f_EMPTY_STRING))
            (progn
            (setf (slot-value this 'f_filePath) (JR.i32 (+ (URLGLOBALS.jm_getMainPath_0) (slot-value (PATH_GLOBALS.jm_getInstance_0) 'f_INIT_PATH))))))
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (JR.concat "LicenseInitInfo File: " (slot-value this 'f_INITFILENAME)) this _METHOD_NAME)
            (setf _fileStreamFactory (FileStreamFactory.jm_getInstance_0))
            (setf _iFile (jm_getFileInputStreamInstance_2 _fileStreamFactory (slot-value this 'f_filePath) (slot-value this 'f_INITFILENAME)))
            (if (not (null _iFile))
                (progn
                (setf _iData (AbDataInputStream.jnew_1 _iFile))
                (setf _initInfo (LicenseInitInfo.jnew_0))
                (setf _decodedByteArray (DatabaseEncoder.jm_decode_1 (jm_readUTF_0 _iData)))
                (setf _licenseIdDecoded _decodedByteArray)
                (jm_setLicenseId_1 _initInfo (jm_decrypt_1 (WeakCrypt.jnew_1 1) _licenseIdDecoded))
                (setf _numberOfLicenseServers (jm_readInt_0 _iData))
                (setf _NEXT_FILE (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_NEXT)) " License Server From File: ")))
                (setf _licenseServerDecoded nil)
                (progn
                    (setf _index 0)
                    (block jbreak (loop while (< _index _numberOfLicenseServers) do
                        (block jcontinue
                    (setf _decodedByteArray (DatabaseEncoder.jm_decode_1 (jm_readUTF_0 _iData)))
                    (setf _licenseServerDecoded _decodedByteArray)
                    (jm_setServer_2 _initInfo (jm_decrypt_1 (WeakCrypt.jnew_1 3) _licenseServerDecoded) _index)
                    (jm_putF_3 (slot-value this 'f_logUtil) (JR.concat _NEXT_FILE (JR.str (jm_getServer_1 _initInfo _index))) this _METHOD_NAME))
                        (setf _index (JR.i32 (+ _index 1))))))
                (return-from jreturn _initInfo))
                (progn
                (error (JR.newException "Exception" (JR.concat "Could Not Load License InitInfo: " (slot-value this 'f_INITFILENAME)))))))
            (error (_e) (declare (ignorable _e))
            (handler-case (progn
                (jm_put_4 (slot-value this 'f_logUtil) (JR.concat "Command Failed: " (slot-value this 'f_INITFILENAME)) this _METHOD_NAME _e))
                (error (_e2) (declare (ignorable _e2))
                (jm_put_4 (slot-value this 'f_logUtil) (JR.concat "LicenseInitInfo Read Retry: " (slot-value this 'f_INITFILENAME)) this "readAgain()" _e2)))
            (error (JR.newException "Exception" (JR.concat "LicenseInitInfo Read Error: " (slot-value this 'f_INITFILENAME)))))))))

    
(unless (fboundp 'jm_getFilePath_0) (defgeneric jm_getFilePath_0 (this)))
(defmethod jm_getFilePath_0 ((this LicenseInitInfoUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_filePath)))))



