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
;;;; package org.allbinary.logic.io.file

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AbFile (JObject)
  ((f_file :initform nil)))

(defvar AbFile.jcell_NULL_FILE :jnone)
(defun AbFile.jstatic_NULL_FILE ()
  (when (eq AbFile.jcell_NULL_FILE :jnone) (setf AbFile.jcell_NULL_FILE (AbFile.jm_createAbFileFromRawPath_1 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))))
  AbFile.jcell_NULL_FILE)
(defun (setf AbFile.jstatic_NULL_FILE) (value) (setf AbFile.jcell_NULL_FILE value))

    
(defun AbFile.jm_createAbFileWithChild_2 (_file _childPathName)
  (declare (ignorable _file _childPathName))
  (let ()
    (block jreturn
        (return-from jreturn (AbFile.jnew_1 (File.jnew_2 (jm_getFile_0 _file) _childPathName))))))

    
(defun AbFile.jm_createAbFile_1 (_filePath)
  (declare (ignorable _filePath))
  (let ()
    (block jreturn
        (return-from jreturn (AbFile.jnew_1 (File.jnew_1 (jm_toFileSystemString_0 (AbPath.jnew_2 _filePath (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))))))

    
(defun AbFile.jm_createAbFilePathAndName_2 (_filePath _fileName)
  (declare (ignorable _filePath _fileName))
  (let ()
    (block jreturn
        (return-from jreturn (AbFile.jnew_1 (File.jnew_2 (jm_toFileSystemString_0 (AbPath.jnew_2 _filePath (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))) _fileName))))))

    
(defun AbFile.jm_createAbFileFromAbPath_1 (_abPath)
  (declare (ignorable _abPath))
  (let ()
    (block jreturn
        (return-from jreturn (AbFile.jnew_1 (File.jnew_1 (jm_toFileSystemString_0 _abPath)))))))

    
(defun AbFile.jm_createAbFileFromRawPath_1 (_filePath)
  (declare (ignorable _filePath))
  (let ()
    (block jreturn
        (return-from jreturn (AbFile.jnew_1 (File.jnew_1 _filePath))))))

    
(defun AbFile.jnew_1 (_file)
  (declare (ignorable _file))
  (let ((this (make-instance 'AbFile)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_file) _file)))
    this))

    
(unless (fboundp 'jm_getFile_0) (defgeneric jm_getFile_0 (this)))
(defmethod jm_getFile_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_file)))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getName_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_getParent_0) (defgeneric jm_getParent_0 (this)))
(defmethod jm_getParent_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getParent_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_getParentFile_0) (defgeneric jm_getParentFile_0 (this)))
(defmethod jm_getParentFile_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getParentFile_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_getPath_0) (defgeneric jm_getPath_0 (this)))
(defmethod jm_getPath_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getPath_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_isAbsolute_0) (defgeneric jm_isAbsolute_0 (this)))
(defmethod jm_isAbsolute_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isAbsolute_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_getAbsolutePath_0) (defgeneric jm_getAbsolutePath_0 (this)))
(defmethod jm_getAbsolutePath_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getAbsolutePath_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_getAbsoluteFile_0) (defgeneric jm_getAbsoluteFile_0 (this)))
(defmethod jm_getAbsoluteFile_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getAbsoluteFile_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_getCanonicalPath_0) (defgeneric jm_getCanonicalPath_0 (this)))
(defmethod jm_getCanonicalPath_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getCanonicalPath_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_getCanonicalFile_0) (defgeneric jm_getCanonicalFile_0 (this)))
(defmethod jm_getCanonicalFile_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getCanonicalFile_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_toURI_0) (defgeneric jm_toURI_0 (this)))
(defmethod jm_toURI_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toURI_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_canRead_0) (defgeneric jm_canRead_0 (this)))
(defmethod jm_canRead_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_canRead_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_canWrite_0) (defgeneric jm_canWrite_0 (this)))
(defmethod jm_canWrite_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_canWrite_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_exists_0) (defgeneric jm_exists_0 (this)))
(defmethod jm_exists_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_exists_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_isDirectory_0) (defgeneric jm_isDirectory_0 (this)))
(defmethod jm_isDirectory_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isDirectory_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_isFile_0) (defgeneric jm_isFile_0 (this)))
(defmethod jm_isFile_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isFile_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_isHidden_0) (defgeneric jm_isHidden_0 (this)))
(defmethod jm_isHidden_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isHidden_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_lastModified_0) (defgeneric jm_lastModified_0 (this)))
(defmethod jm_lastModified_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_lastModified_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_length_0) (defgeneric jm_length_0 (this)))
(defmethod jm_length_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_length_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_createNewFile_0) (defgeneric jm_createNewFile_0 (this)))
(defmethod jm_createNewFile_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_createNewFile_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_delete_0) (defgeneric jm_delete_0 (this)))
(defmethod jm_delete_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_delete_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_deleteOnExit_0) (defgeneric jm_deleteOnExit_0 (this)))
(defmethod jm_deleteOnExit_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_deleteOnExit_0 (slot-value this 'f_file)))))

    
(unless (fboundp 'jm_list_0) (defgeneric jm_list_0 (this)))
(defmethod jm_list_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_list_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_listWithFilter_1) (defgeneric jm_listWithFilter_1 (this p1)))
(defmethod jm_listWithFilter_1 ((this AbFile) _filter)
  (declare (ignorable this _filter))
  (let ()
    (block jreturn
        (return-from jreturn (jm_list_1 (slot-value this 'f_file) _filter)))))

    
(unless (fboundp 'jm_listFiles_0) (defgeneric jm_listFiles_0 (this)))
(defmethod jm_listFiles_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_listFiles_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_listFilesFileNameFilter_1) (defgeneric jm_listFilesFileNameFilter_1 (this p1)))
(defmethod jm_listFilesFileNameFilter_1 ((this AbFile) _filter)
  (declare (ignorable this _filter))
  (let ()
    (block jreturn
        (return-from jreturn (jm_listFiles_1 (slot-value this 'f_file) _filter)))))

    
(unless (fboundp 'jm_listFilesFileFilter_1) (defgeneric jm_listFilesFileFilter_1 (this p1)))
(defmethod jm_listFilesFileFilter_1 ((this AbFile) _filter)
  (declare (ignorable this _filter))
  (let ()
    (block jreturn
        (return-from jreturn (jm_listFiles_1 (slot-value this 'f_file) _filter)))))

    
(unless (fboundp 'jm_mkdir_0) (defgeneric jm_mkdir_0 (this)))
(defmethod jm_mkdir_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_mkdir_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_mkdirs_0) (defgeneric jm_mkdirs_0 (this)))
(defmethod jm_mkdirs_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_mkdirs_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_renameTo_1) (defgeneric jm_renameTo_1 (this p1)))
(defmethod jm_renameTo_1 ((this AbFile) _dest)
  (declare (ignorable this _dest))
  (let ()
    (block jreturn
        (return-from jreturn (jm_renameTo_1 (slot-value this 'f_file) (jm_getFile_0 _dest))))))

    
(unless (fboundp 'jm_setLastModified_1) (defgeneric jm_setLastModified_1 (this p1)))
(defmethod jm_setLastModified_1 ((this AbFile) _time)
  (declare (ignorable this _time))
  (let ()
    (block jreturn
        (return-from jreturn (jm_setLastModified_1 (slot-value this 'f_file) _time)))))

    
(unless (fboundp 'jm_setReadOnly_0) (defgeneric jm_setReadOnly_0 (this)))
(defmethod jm_setReadOnly_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_setReadOnly_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_setWritable_2) (defgeneric jm_setWritable_2 (this p1 p2)))
(defmethod jm_setWritable_2 ((this AbFile) _writable _ownerOnly)
  (declare (ignorable this _writable _ownerOnly))
  (let ()
    (block jreturn
        (return-from jreturn (jm_setExecutable_2 (slot-value this 'f_file) _writable _ownerOnly)))))

    
(unless (fboundp 'jm_setWritable_1) (defgeneric jm_setWritable_1 (this p1)))
(defmethod jm_setWritable_1 ((this AbFile) _writable)
  (declare (ignorable this _writable))
  (let ()
    (block jreturn
        (return-from jreturn (jm_setWritable_1 (slot-value this 'f_file) _writable)))))

    
(unless (fboundp 'jm_setReadable_2) (defgeneric jm_setReadable_2 (this p1 p2)))
(defmethod jm_setReadable_2 ((this AbFile) _readable _ownerOnly)
  (declare (ignorable this _readable _ownerOnly))
  (let ()
    (block jreturn
        (return-from jreturn (jm_setReadable_2 (slot-value this 'f_file) _readable _ownerOnly)))))

    
(unless (fboundp 'jm_setReadable_1) (defgeneric jm_setReadable_1 (this p1)))
(defmethod jm_setReadable_1 ((this AbFile) _readable)
  (declare (ignorable this _readable))
  (let ()
    (block jreturn
        (return-from jreturn (jm_setReadable_1 (slot-value this 'f_file) _readable)))))

    
(unless (fboundp 'jm_setExecutable_2) (defgeneric jm_setExecutable_2 (this p1 p2)))
(defmethod jm_setExecutable_2 ((this AbFile) _executable _ownerOnly)
  (declare (ignorable this _executable _ownerOnly))
  (let ()
    (block jreturn
        (return-from jreturn (jm_setExecutable_2 (slot-value this 'f_file) _executable _ownerOnly)))))

    
(unless (fboundp 'jm_setExecutable_1) (defgeneric jm_setExecutable_1 (this p1)))
(defmethod jm_setExecutable_1 ((this AbFile) _executable)
  (declare (ignorable this _executable))
  (let ()
    (block jreturn
        (return-from jreturn (jm_setExecutable_1 (slot-value this 'f_file) _executable)))))

    
(unless (fboundp 'jm_canExecute_0) (defgeneric jm_canExecute_0 (this)))
(defmethod jm_canExecute_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_canExecute_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_getTotalSpace_0) (defgeneric jm_getTotalSpace_0 (this)))
(defmethod jm_getTotalSpace_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getTotalSpace_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_getFreeSpace_0) (defgeneric jm_getFreeSpace_0 (this)))
(defmethod jm_getFreeSpace_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getFreeSpace_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_getUsableSpace_0) (defgeneric jm_getUsableSpace_0 (this)))
(defmethod jm_getUsableSpace_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getUsableSpace_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_compareTo_1) (defgeneric jm_compareTo_1 (this p1)))
(defmethod jm_compareTo_1 ((this AbFile) _pathname)
  (declare (ignorable this _pathname))
  (let ()
    (block jreturn
        (return-from jreturn (jm_compareTo_1 (slot-value this 'f_file) _pathname)))))

    
(unless (fboundp 'jm_equals_1) (defgeneric jm_equals_1 (this p1)))
(defmethod jm_equals_1 ((this AbFile) _obj)
  (declare (ignorable this _obj))
  (let ()
    (block jreturn
        (return-from jreturn (jm_equalsNotstring_2 (TsUtil.jm_getInstance_0) (slot-value this 'f_file) _obj)))))

    
(unless (fboundp 'jm_hashCode_0) (defgeneric jm_hashCode_0 (this)))
(defmethod jm_hashCode_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_hashCode_0 (slot-value this 'f_file))))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this AbFile))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (slot-value this 'f_file))))))



