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
;;;; package org.allbinary.logic.io

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FileStreamFactory (JObject)
  ())

(defvar FileStreamFactory.jcell_SINGLETON :jnone)
(defun FileStreamFactory.jstatic_SINGLETON ()
  (when (eq FileStreamFactory.jcell_SINGLETON :jnone) (setf FileStreamFactory.jcell_SINGLETON (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  FileStreamFactory.jcell_SINGLETON)
(defun (setf FileStreamFactory.jstatic_SINGLETON) (value) (setf FileStreamFactory.jcell_SINGLETON value))

    
(defun FileStreamFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (FileStreamFactory.jstatic_SINGLETON) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (FileStreamFactory.jstatic_SINGLETON) (FileStreamFactory.jnew_0))))
        (return-from jreturn (FileStreamFactory.jstatic_SINGLETON)))))

    
(defun FileStreamFactory.jnew_0 ()
  (let ((this (make-instance 'FileStreamFactory)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getFileInputStreamInstance_2) (defgeneric jm_getFileInputStreamInstance_2 (this p1 p2)))
(defmethod jm_getFileInputStreamInstance_2 ((this FileStreamFactory) _path _fileName)
  (declare (ignorable this _path _fileName))
  (let (_FILEABPATH _file)
  (declare (ignorable _FILEABPATH _file))
    (block jreturn
        (setf _FILEABPATH (AbPath.jnew_2 _path _fileName))
        (setf _file (AbFile.jm_createAbFileFromAbPath_1 _FILEABPATH))
        (return-from jreturn (AbFileInputStream.jm_createFromAbFile_1 _file)))))

    
(unless (fboundp 'jm_getFileOutputStreamInstance_2) (defgeneric jm_getFileOutputStreamInstance_2 (this p1 p2)))
(defmethod jm_getFileOutputStreamInstance_2 ((this FileStreamFactory) _path _fileName)
  (declare (ignorable this _path _fileName))
  (let (_FILEABPATH _file)
  (declare (ignorable _FILEABPATH _file))
    (block jreturn
        (setf _FILEABPATH (AbPath.jnew_2 _path _fileName))
        (setf _file (AbFile.jm_createAbFileFromAbPath_1 _FILEABPATH))
        (if (jm_exists_0 _file)
            (progn
            (jm_delete_0 _file)
            (jm_createNewFile_0 _file)))
        (return-from jreturn (AbFileOutputStream.jm_createFromAbFile_1 _file)))))

    
(unless (fboundp 'jm_delete_2) (defgeneric jm_delete_2 (this p1 p2)))
(defmethod jm_delete_2 ((this FileStreamFactory) _path _fileName)
  (declare (ignorable this _path _fileName))
  (let (_FILEABPATH _file)
  (declare (ignorable _FILEABPATH _file))
    (block jreturn
        (setf _FILEABPATH (AbPath.jnew_2 _path _fileName))
        (setf _file (AbFile.jm_createAbFileFromAbPath_1 _FILEABPATH))
        (jm_delete_0 _file))))



