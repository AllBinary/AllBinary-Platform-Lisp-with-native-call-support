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

(defclass AbFileInterface (JObject)
  ())

(defun AbFileInterface.jnew_0 ()
  (let ((this (make-instance 'AbFileInterface)))
    this))

    
(unless (fboundp 'jm_canRead_0) (defgeneric jm_canRead_0 (this)))
(defmethod jm_canRead_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "canRead")))

    
(unless (fboundp 'jm_canWrite_0) (defgeneric jm_canWrite_0 (this)))
(defmethod jm_canWrite_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "canWrite")))

    
(unless (fboundp 'jm_createNewFile_0) (defgeneric jm_createNewFile_0 (this)))
(defmethod jm_createNewFile_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "createNewFile")))

    
(unless (fboundp 'jm_delete_0) (defgeneric jm_delete_0 (this)))
(defmethod jm_delete_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "delete")))

    
(unless (fboundp 'jm_deleteOnExit_0) (defgeneric jm_deleteOnExit_0 (this)))
(defmethod jm_deleteOnExit_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "deleteOnExit")))

    
(unless (fboundp 'jm_exists_0) (defgeneric jm_exists_0 (this)))
(defmethod jm_exists_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "exists")))

    
(unless (fboundp 'jm_getAbsolutePath_0) (defgeneric jm_getAbsolutePath_0 (this)))
(defmethod jm_getAbsolutePath_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getAbsolutePath")))

    
(unless (fboundp 'jm_getCanonicalPath_0) (defgeneric jm_getCanonicalPath_0 (this)))
(defmethod jm_getCanonicalPath_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getCanonicalPath")))

    
(unless (fboundp 'jm_getParent_0) (defgeneric jm_getParent_0 (this)))
(defmethod jm_getParent_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getParent")))

    
(unless (fboundp 'jm_getPath_0) (defgeneric jm_getPath_0 (this)))
(defmethod jm_getPath_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getPath")))

    
(unless (fboundp 'jm_isAbsolute_0) (defgeneric jm_isAbsolute_0 (this)))
(defmethod jm_isAbsolute_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isAbsolute")))

    
(unless (fboundp 'jm_isDirectory_0) (defgeneric jm_isDirectory_0 (this)))
(defmethod jm_isDirectory_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isDirectory")))

    
(unless (fboundp 'jm_isFile_0) (defgeneric jm_isFile_0 (this)))
(defmethod jm_isFile_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isFile")))

    
(unless (fboundp 'jm_isHidden_0) (defgeneric jm_isHidden_0 (this)))
(defmethod jm_isHidden_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isHidden")))

    
(unless (fboundp 'jm_lastModified_0) (defgeneric jm_lastModified_0 (this)))
(defmethod jm_lastModified_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "lastModified")))

    
(unless (fboundp 'jm_length_0) (defgeneric jm_length_0 (this)))
(defmethod jm_length_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "length")))

    
(unless (fboundp 'jm_list_0) (defgeneric jm_list_0 (this)))
(defmethod jm_list_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "list")))

    
(unless (fboundp 'jm_listWithFilter_1) (defgeneric jm_listWithFilter_1 (this p1)))
(defmethod jm_listWithFilter_1 ((this AbFileInterface) _filter)
  (declare (ignorable this _filter))
  (error (JR.newException "AbstractMethodError" "listWithFilter")))

    
(unless (fboundp 'jm_mkdir_0) (defgeneric jm_mkdir_0 (this)))
(defmethod jm_mkdir_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "mkdir")))

    
(unless (fboundp 'jm_mkdirs_0) (defgeneric jm_mkdirs_0 (this)))
(defmethod jm_mkdirs_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "mkdirs")))

    
(unless (fboundp 'jm_setLastModified_1) (defgeneric jm_setLastModified_1 (this p1)))
(defmethod jm_setLastModified_1 ((this AbFileInterface) _time)
  (declare (ignorable this _time))
  (error (JR.newException "AbstractMethodError" "setLastModified")))

    
(unless (fboundp 'jm_setReadOnly_0) (defgeneric jm_setReadOnly_0 (this)))
(defmethod jm_setReadOnly_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "setReadOnly")))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "toString")))

    
(unless (fboundp 'jm_toURI_0) (defgeneric jm_toURI_0 (this)))
(defmethod jm_toURI_0 ((this AbFileInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "toURI")))



