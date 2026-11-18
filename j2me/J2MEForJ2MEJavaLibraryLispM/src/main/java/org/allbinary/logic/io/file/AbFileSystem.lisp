;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2026 AllBinary 
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
;;;; package org.allbinary.logic.io.file

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;J2MEForJ2ME
(defclass AbFileSystem (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)))

(defvar AbFileSystem.jcell_instance :jnone)
(defun AbFileSystem.jstatic_instance ()
  (when (eq AbFileSystem.jcell_instance :jnone) (setf AbFileSystem.jcell_instance (AbFileSystem.jnew_0)))
  AbFileSystem.jcell_instance)
(defun (setf AbFileSystem.jstatic_instance) (value) (setf AbFileSystem.jcell_instance value))

(defun AbFileSystem.jnew_0 ()
  (let ((this (make-instance 'AbFileSystem)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    this))

    
(defun AbFileSystem.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AbFileSystem.jstatic_instance)))))

    
(unless (fboundp 'jm_isDirectoryOrFile_1) (defgeneric jm_isDirectoryOrFile_1 (this p1)))
(defmethod jm_isDirectoryOrFile_1 ((this AbFileSystem) _path)
  (declare (ignorable this _path))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isDirectory_1) (defgeneric jm_isDirectory_1 (this p1)))
(defmethod jm_isDirectory_1 ((this AbFileSystem) _path)
  (declare (ignorable this _path))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_getFilesAsStringArrayForPath_1) (defgeneric jm_getFilesAsStringArrayForPath_1 (this p1)))
(defmethod jm_getFilesAsStringArrayForPath_1 ((this AbFileSystem) _currentDirPath)
  (declare (ignorable this _currentDirPath))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getArrayInstance_0 (StringUtil.jm_getInstance_0))))))

    
(unless (fboundp 'jm_readAsString_1) (defgeneric jm_readAsString_1 (this p1)))
(defmethod jm_readAsString_1 ((this AbFileSystem) _fileName)
  (declare (ignorable this _fileName))
  (let (_bytes)
  (declare (ignorable _bytes))
    (block jreturn
        (setf _bytes (JR.newArray 0 1000000))
        (return-from jreturn (jm_readAsString_2 this _fileName _bytes)))))

    
(unless (fboundp 'jm_readAsString_2) (defgeneric jm_readAsString_2 (this p1 p2)))
(defmethod jm_readAsString_2 ((this AbFileSystem) _fileName _bytes)
  (declare (ignorable this _fileName _bytes))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_close_1) (defgeneric jm_close_1 (this p1)))
(defmethod jm_close_1 ((this AbFileSystem) _closeable)
  (declare (ignorable this _closeable))
  (let (_inputStream)
  (declare (ignorable _inputStream))
    (block jreturn
        (handler-case (progn
            (if (not (null _closeable))
                (progn
                (setf _inputStream _closeable)
                (jm_close_0 _inputStream)))
            (return-from jreturn t))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_CLOSE) _e)
            (return-from jreturn nil))))))



