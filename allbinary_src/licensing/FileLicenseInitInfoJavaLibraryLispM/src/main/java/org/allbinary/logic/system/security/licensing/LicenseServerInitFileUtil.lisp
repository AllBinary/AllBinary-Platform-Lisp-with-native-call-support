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

(defclass LicenseServerInitFileUtil (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_NULL_OUTPUT_STREAM :initform nil)))

(defun LicenseServerInitFileUtil.jnew_0 ()
  (let ((this (make-instance 'LicenseServerInitFileUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_NULL_OUTPUT_STREAM) (SimpleFileUtil.jm_nullOutputStream_0))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this LicenseServerInitFileUtil))
  (declare (ignorable this))
  (let (_filePath)
  (declare (ignorable _filePath))
    (block jreturn
        (handler-case (progn
            (setf _filePath (slot-value (LicenseInitInfoUtil.jm_getInstance_0) 'f_INITFILENAME))
            (jm_setFilePath_1 (LicenseInitInfoUtil.jm_getInstance_0) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
            (if (jm_isFile_1 (FileFactory.jm_getInstance_0) _filePath)
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) "Using Existing License File" this (slot-value (slot-value this 'f_commonStrings) 'f_INIT)))
                (progn
                (jm_write_0 this))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT) _e))))))

    
(unless (fboundp 'jm_write_0) (defgeneric jm_write_0 (this)))
(defmethod jm_write_0 ((this LicenseServerInitFileUtil))
  (declare (ignorable this))
  (let (_fileOutputStream _resourceUtil _filePath _inputStream _fileStreamFactory _b _index)
  (declare (ignorable _fileOutputStream _resourceUtil _filePath _inputStream _fileStreamFactory _b _index))
    (block jreturn
        (setf _fileOutputStream (slot-value this 'f_NULL_OUTPUT_STREAM))
        (unwind-protect (handler-case (progn
            (setf _resourceUtil (ResourceUtil.jm_getInstance_0))
            (setf _filePath (slot-value (LicenseInitInfoUtil.jm_getInstance_0) 'f_INITFILENAME))
            (setf _inputStream (jm_getResourceAsStream_1 _resourceUtil _filePath))
            (jm_putF_3 (slot-value this 'f_logUtil) "Writing Default License File" this (slot-value (slot-value this 'f_commonStrings) 'f_INIT))
            (setf _fileStreamFactory (FileStreamFactory.jm_getInstance_0))
            (setf _fileOutputStream (jm_getFileOutputStreamInstance_2 _fileStreamFactory (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) _filePath))
            (setf _b 0)
            (setf _index 0)
            (block jbreak (loop while t do
                    (block jcontinue
                (setf _b (jm_read_0 _inputStream))
                (if (= _b (JR.i32 (- 1)))
                    (progn
                    (return-from jbreak)))
                (jm_write_1 _fileOutputStream _b)
                (setf _index (JR.i32 (+ _index 1))))))
            (jm_putF_3 (slot-value this 'f_logUtil) (JR.concat "Wrote Bytes: " (JR.str _index)) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT))
            (jm_flush_0 _fileOutputStream))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT) _e)))
            (progn
            (jm_close_1 (StreamUtil.jm_getInstance_0) _fileOutputStream))))))



