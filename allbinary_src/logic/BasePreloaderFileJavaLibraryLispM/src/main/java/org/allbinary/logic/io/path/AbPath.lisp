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
;;;; package org.allbinary.logic.io.path

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AbPath (JObject)
  ((f_commonSeps :initform nil)
   (f_abPathData :initform nil)
   (f_abPathUtil :initform nil)
   (f_EMPTY_STRING :initform nil)
   (f_schema :initform nil)
   (f_path :initform nil)
   (f_nameP :initform nil)
   (f_hasSchemaP :initform nil)
   (f_numberOfSeps :initform 0)))

(defvar AbPath.jcell_NETWORK_SEP :jnone)
(defun AbPath.jstatic_NETWORK_SEP ()
  (when (eq AbPath.jcell_NETWORK_SEP :jnone) (setf AbPath.jcell_NETWORK_SEP ":/"))
  AbPath.jcell_NETWORK_SEP)
(defun (setf AbPath.jstatic_NETWORK_SEP) (value) (setf AbPath.jcell_NETWORK_SEP value))

    
(defun AbPath.jm_createAbPath_0 ()
  (let (_EMPTY_STRING)
  (declare (ignorable _EMPTY_STRING))
    (block jreturn
        (handler-case (progn
            (setf _EMPTY_STRING (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
            (return-from jreturn (AbPath.jnew_2 _EMPTY_STRING _EMPTY_STRING)))
            (error (_ex) (declare (ignorable _ex))
            (error (JR.newException "RuntimeException")))))))

    
(defun AbPath.jnew_2 (_aPath _name)
  (declare (ignorable _aPath _name))
  (let ((this (make-instance 'AbPath)))
    (setf (slot-value this 'f_commonSeps) (CommonSeps.jm_getInstance_0))
    (setf (slot-value this 'f_abPathData) (AbPathData.jm_getInstance_0))
    (setf (slot-value this 'f_abPathUtil) (PathUtil.jm_getInstance_0))
    (setf (slot-value this 'f_EMPTY_STRING) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_schema) (slot-value this 'f_EMPTY_STRING))
    (setf (slot-value this 'f_path) (slot-value this 'f_EMPTY_STRING))
    (setf (slot-value this 'f_nameP) (slot-value this 'f_EMPTY_STRING))
    (setf (slot-value this 'f_hasSchemaP) nil)
    (setf (slot-value this 'f_numberOfSeps) 0)
  (let (_stringValidationUtil)
  (declare (ignorable _stringValidationUtil))
    (block jreturn
        (setf _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (if (not (jm_isEmpty_1 _stringValidationUtil _aPath))
            (progn
            (setf (slot-value this 'f_schema) (jm_getSchema_1 this _aPath))
            (setf (slot-value this 'f_nameP) _name)
            (setf (slot-value this 'f_path) (jm_adjustEnd_1 (slot-value this 'f_abPathUtil) (jm_adjust_1 (slot-value this 'f_abPathUtil) (jm_getPathFromPath_1 this _aPath)))))
            (progn
            (jm_init_0 this)
            (if (not (jm_isEmpty_1 _stringValidationUtil _name))
                (progn
                (setf (slot-value this 'f_nameP) _name)))))))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this AbPath))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_schema) (slot-value this 'f_EMPTY_STRING))
        (jm_setPath_1 this (slot-value (slot-value this 'f_abPathData) 'f_SEPARATOR))
        (setf (slot-value this 'f_nameP) (slot-value this 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_getSchema_1) (defgeneric jm_getSchema_1 (this p1)))
(defmethod jm_getSchema_1 ((this AbPath) _aPath)
  (declare (ignorable this _aPath))
  (let (_beginIndex)
  (declare (ignorable _beginIndex))
    (block jreturn
        (setf _beginIndex (JR.indexOf _aPath (slot-value (slot-value this 'f_commonSeps) 'f_COLON)))
        (if (>= _beginIndex 0)
            (progn
            (setf (slot-value this 'f_hasSchemaP) t)
            (return-from jreturn (JR.substring _aPath 0 _beginIndex))))
        (setf (slot-value this 'f_hasSchemaP) nil)
        (return-from jreturn (slot-value this 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_hasSchema_0) (defgeneric jm_hasSchema_0 (this)))
(defmethod jm_hasSchema_0 ((this AbPath))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_hasSchemaP)))))

    
(unless (fboundp 'jm_getPathFromPath_1) (defgeneric jm_getPathFromPath_1 (this p1)))
(defmethod jm_getPathFromPath_1 ((this AbPath) _aPath)
  (declare (ignorable this _aPath))
  (let (_filePathData _tempPath _beginIndex)
  (declare (ignorable _filePathData _tempPath _beginIndex))
    (block jreturn
        (setf _filePathData (FilePathData.jm_getInstance_0))
        (setf _tempPath _aPath)
        (if (not (jm_hasSchema_0 this))
            (progn
            (setf _tempPath (jm_adjustStart_1 (slot-value this 'f_abPathUtil) _tempPath)))
            (progn
            (setf _beginIndex (JR.indexOf _tempPath (slot-value (slot-value this 'f_commonSeps) 'f_COLON)))
            (if (>= _beginIndex 0)
                (progn
                (setf _beginIndex (JR.i32 (+ _beginIndex 1)))
                (block jbreak (loop while (or (eq (JR.charAt _tempPath _beginIndex) (slot-value (slot-value this 'f_abPathData) 'f_SEPARATORCHAR)) (eq (JR.charAt _tempPath _beginIndex) (slot-value _filePathData 'f_SEPARATORCHAR))) do
                        (block jcontinue
                    (setf _beginIndex (JR.i32 (+ _beginIndex 1)))
                    (setf (slot-value this 'f_numberOfSeps) (JR.i32 (+ (slot-value this 'f_numberOfSeps) 1)))
                    (if (> (slot-value this 'f_numberOfSeps) 2)
                        (progn
                        (error (JR.newException "Exception" "Should Not Have More Than Two Seps")))))))
                (setf _tempPath (JR.substring _tempPath _beginIndex (length _tempPath)))))))
        (return-from jreturn _tempPath))))

    
(unless (fboundp 'jm_setName_1) (defgeneric jm_setName_1 (this p1)))
(defmethod jm_setName_1 ((this AbPath) _name)
  (declare (ignorable this _name))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_nameP) _name))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this AbPath))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_nameP)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this AbPath))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (if (jm_hasSchema_0 this)
            (progn
            (jm_append_1 _stringBuffer (slot-value this 'f_schema))
            (jm_append_1 _stringBuffer (AbPath.jstatic_NETWORK_SEP))))
        (jm_append_1 _stringBuffer (jm_getPath_0 this))
        (jm_append_1 _stringBuffer (slot-value this 'f_nameP))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_toFileSystemString_0) (defgeneric jm_toFileSystemString_0 (this)))
(defmethod jm_toFileSystemString_0 ((this AbPath))
  (declare (ignorable this))
  (let (_filePathData _stringBuffer)
  (declare (ignorable _filePathData _stringBuffer))
    (block jreturn
        (if (jm_hasSchema_0 this)
            (progn
            (setf _filePathData (FilePathData.jm_getInstance_0))
            (setf _stringBuffer (StringMaker.jnew_0))
            (jm_append_1 _stringBuffer (slot-value this 'f_schema))
            (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonSeps) 'f_COLON))
            (jm_append_1 _stringBuffer (slot-value _filePathData 'f_PATH_START))
            (jm_append_1 _stringBuffer (FilePathUtil.jm_adjust_1 (jm_getPath_0 this)))
            (jm_append_1 _stringBuffer (slot-value this 'f_nameP))
            (return-from jreturn (jm_toString_0 _stringBuffer)))
            (progn
            (return-from jreturn (JR.concat (JR.str (FilePathUtil.jm_adjust_1 (jm_getPath_0 this))) (slot-value this 'f_nameP))))))))

    
(unless (fboundp 'jm_getPath_0) (defgeneric jm_getPath_0 (this)))
(defmethod jm_getPath_0 ((this AbPath))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_path)))))

    
(unless (fboundp 'jm_setPath_1) (defgeneric jm_setPath_1 (this p1)))
(defmethod jm_setPath_1 ((this AbPath) _path)
  (declare (ignorable this _path))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_path) _path))))



