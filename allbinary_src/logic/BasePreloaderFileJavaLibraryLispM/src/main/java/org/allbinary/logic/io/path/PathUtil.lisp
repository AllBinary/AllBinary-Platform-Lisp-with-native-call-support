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

;Used to correct user input for paths
(defclass PathUtil (JObject)
  ((f_abPathData :initform nil)
   (f_filePathData :initform nil)))

(defvar PathUtil.jcell_instance :jnone)
(defun PathUtil.jstatic_instance ()
  (when (eq PathUtil.jcell_instance :jnone) (setf PathUtil.jcell_instance (PathUtil.jnew_0)))
  PathUtil.jcell_instance)
(defun (setf PathUtil.jstatic_instance) (value) (setf PathUtil.jcell_instance value))

    
(defun PathUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PathUtil.jstatic_instance)))))

    
(defun PathUtil.jnew_0 ()
  (let ((this (make-instance 'PathUtil)))
    (setf (slot-value this 'f_abPathData) (AbPathData.jm_getInstance_0))
    (setf (slot-value this 'f_filePathData) (FilePathData.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getExtensionWithAbFilePath_1) (defgeneric jm_getExtensionWithAbFilePath_1 (this p1)))
(defmethod jm_getExtensionWithAbFilePath_1 ((this PathUtil) _abFilePath)
  (declare (ignorable this _abFilePath))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getExtension_1 (slot-value this 'f_abPathData) (jm_toString_0 _abFilePath))))))

    
(unless (fboundp 'jm_getExtensionWithAbPath_1) (defgeneric jm_getExtensionWithAbPath_1 (this p1)))
(defmethod jm_getExtensionWithAbPath_1 ((this PathUtil) _abPath)
  (declare (ignorable this _abPath))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getExtension_1 (slot-value this 'f_abPathData) (jm_toString_0 _abPath))))))

    
(unless (fboundp 'jm_getWithoutExtensionWithAbFilePath_1) (defgeneric jm_getWithoutExtensionWithAbFilePath_1 (this p1)))
(defmethod jm_getWithoutExtensionWithAbFilePath_1 ((this PathUtil) _abFilePath)
  (declare (ignorable this _abFilePath))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getWithoutExtension_1 this (jm_toString_0 _abFilePath))))))

    
(unless (fboundp 'jm_getWithoutExtensionWithAbPath_1) (defgeneric jm_getWithoutExtensionWithAbPath_1 (this p1)))
(defmethod jm_getWithoutExtensionWithAbPath_1 ((this PathUtil) _abPath)
  (declare (ignorable this _abPath))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getWithoutExtension_1 this (jm_toString_0 _abPath))))))

    
(unless (fboundp 'jm_getWithoutExtension_1) (defgeneric jm_getWithoutExtension_1 (this p1)))
(defmethod jm_getWithoutExtension_1 ((this PathUtil) _filePath)
  (declare (ignorable this _filePath))
  (let (_indexOfFileExtensionDelmiter _pathWithoutExtension)
  (declare (ignorable _indexOfFileExtensionDelmiter _pathWithoutExtension))
    (block jreturn
        (setf _indexOfFileExtensionDelmiter (jm_getExtensionIndex_1 (slot-value this 'f_abPathData) _filePath))
        (setf _pathWithoutExtension _filePath)
        (if (>= _indexOfFileExtensionDelmiter 0)
            (progn
            (setf _pathWithoutExtension (JR.substring _filePath 0 _indexOfFileExtensionDelmiter))))
        (return-from jreturn _pathWithoutExtension))))

    
(unless (fboundp 'jm_isValid_1) (defgeneric jm_isValid_1 (this p1)))
(defmethod jm_isValid_1 ((this PathUtil) _path)
  (declare (ignorable this _path))
  (let ()
    (block jreturn
        (if (jm_isValidStart_1 this _path)
            (progn
            (if (jm_isValidEnd_1 this _path)
                (progn
                (return-from jreturn t)))))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isValidStart_1) (defgeneric jm_isValidStart_1 (this p1)))
(defmethod jm_isValidStart_1 ((this PathUtil) _path)
  (declare (ignorable this _path))
  (let ()
    (block jreturn
        (if (or (eq (JR.charAt _path 0) (slot-value (slot-value this 'f_abPathData) 'f_SEPARATORCHAR)) (eq (JR.charAt _path 0) (char-code #\.)))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_isValidEnd_1) (defgeneric jm_isValidEnd_1 (this p1)))
(defmethod jm_isValidEnd_1 ((this PathUtil) _path)
  (declare (ignorable this _path))
  (let (_stringValidationUtil)
  (declare (ignorable _stringValidationUtil))
    (block jreturn
        (setf _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (if (jm_isEmpty_1 _stringValidationUtil _path)
            (progn
            (return-from jreturn nil)))
        (if (eq (JR.charAt _path (JR.i32 (- (length _path) 1))) (slot-value (slot-value this 'f_abPathData) 'f_SEPARATORCHAR))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_adjustStart_1) (defgeneric jm_adjustStart_1 (this p1)))
(defmethod jm_adjustStart_1 ((this PathUtil) _path)
  (declare (ignorable this _path))
  (let ()
    (block jreturn
        (if (not (jm_isValidStart_1 this _path))
            (progn
            (setf _path (JR.concat (JR.str (slot-value (slot-value this 'f_abPathData) 'f_SEPARATOR)) _path))))
        (return-from jreturn _path))))

    
(unless (fboundp 'jm_adjustEnd_1) (defgeneric jm_adjustEnd_1 (this p1)))
(defmethod jm_adjustEnd_1 ((this PathUtil) _path)
  (declare (ignorable this _path))
  (let ()
    (block jreturn
        (if (not (jm_isValidEnd_1 this _path))
            (progn
            (setf _path (JR.concat _path (JR.str (slot-value (slot-value this 'f_abPathData) 'f_SEPARATOR))))))
        (return-from jreturn _path))))

    
(unless (fboundp 'jm_adjust_1) (defgeneric jm_adjust_1 (this p1)))
(defmethod jm_adjust_1 ((this PathUtil) _path)
  (declare (ignorable this _path))
  (let (_stringValidationUtil)
  (declare (ignorable _stringValidationUtil))
    (block jreturn
        (setf _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (if (jm_isEmpty_1 _stringValidationUtil _path)
            (progn
            (return-from jreturn (slot-value (slot-value this 'f_abPathData) 'f_SEPARATOR))))
        (if (>= (JR.indexOf _path (JR.unescape "\\\\")) 0)
            (progn
            (setf _path (JR.replace _path 92 (slot-value (slot-value this 'f_abPathData) 'f_SEPARATORCHAR)))))
        (return-from jreturn _path))))

    
(unless (fboundp 'jm_removeNameFromPath_1) (defgeneric jm_removeNameFromPath_1 (this p1)))
(defmethod jm_removeNameFromPath_1 ((this PathUtil) _path)
  (declare (ignorable this _path))
  (let (_endIndex _pathWithoutName)
  (declare (ignorable _endIndex _pathWithoutName))
    (block jreturn
        (setf _endIndex (JR.lastIndexOf _path (slot-value (slot-value this 'f_abPathData) 'f_SEPARATOR)))
        (if (< _endIndex 0)
            (progn
            (setf _endIndex (JR.lastIndexOf _path (slot-value (slot-value this 'f_filePathData) 'f_SEPARATORCHAR)))))
        (if (< _endIndex 0)
            (progn
            (return-from jreturn (AbPath.jm_createAbPath_0))))
        (if (= (length _path) (JR.i32 (+ _endIndex 1)))
            (progn
            (return-from jreturn (jm_removeNameFromPath_1 this (JR.substring _path 0 (JR.i32 (- _endIndex 1))))))
            (progn
            (setf _pathWithoutName (JR.substring _path 0 _endIndex))
            (return-from jreturn (AbPath.jnew_2 _pathWithoutName (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))))))))



