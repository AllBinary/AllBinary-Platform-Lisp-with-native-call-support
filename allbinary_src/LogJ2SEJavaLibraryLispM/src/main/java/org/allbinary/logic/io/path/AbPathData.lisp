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

(defclass AbPathData (JObject)
  ((f_EXTENSION_SEP :initform nil)
   (f_SEPARATORCHAR :initform 0)
   (f_SEPARATOR :initform nil)))

(defvar AbPathData.jcell_instance :jnone)
(defun AbPathData.jstatic_instance ()
  (when (eq AbPathData.jcell_instance :jnone) (setf AbPathData.jcell_instance (AbPathData.jnew_0)))
  AbPathData.jcell_instance)

    
(defun AbPathData.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AbPathData.jstatic_instance)))))

    
(defun AbPathData.jnew_0 ()
  (let ((this (make-instance 'AbPathData)))
    (setf (slot-value this 'f_EXTENSION_SEP) (slot-value (CommonSeps.jm_getInstance_0) 'f_PERIOD))
    (setf (slot-value this 'f_SEPARATORCHAR) (char-code #\/))
    (setf (slot-value this 'f_SEPARATOR) (slot-value (CommonSeps.jm_getInstance_0) 'f_FORWARD_SLASH))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getExtensionIndex_1) (defgeneric jm_getExtensionIndex_1 (this p1)))
(defmethod jm_getExtensionIndex_1 ((this AbPathData) _filePath)
  (declare (ignorable this _filePath))
  (let (_indexOfFileExtensionDelmiter _indexOfLatDelimiter)
  (declare (ignorable _indexOfFileExtensionDelmiter _indexOfLatDelimiter))
    (block jreturn
        (setf _indexOfFileExtensionDelmiter (JR.lastIndexOf _filePath (slot-value this 'f_EXTENSION_SEP)))
        (setf _indexOfLatDelimiter (JR.lastIndexOf _filePath (slot-value this 'f_SEPARATORCHAR)))
        (if (< _indexOfFileExtensionDelmiter 0)
            (progn
            (return-from jreturn (JR.i32 (- 1)))))
        (if (< _indexOfFileExtensionDelmiter _indexOfLatDelimiter)
            (progn
            (return-from jreturn (JR.i32 (- 1)))))
        (return-from jreturn _indexOfFileExtensionDelmiter))))

    
(unless (fboundp 'jm_getExtensionWithDot_1) (defgeneric jm_getExtensionWithDot_1 (this p1)))
(defmethod jm_getExtensionWithDot_1 ((this AbPathData) _filePath)
  (declare (ignorable this _filePath))
  (let (_indexOfFileExtensionDelmiter _extension)
  (declare (ignorable _indexOfFileExtensionDelmiter _extension))
    (block jreturn
        (setf _indexOfFileExtensionDelmiter (jm_getExtensionIndex_1 this _filePath))
        (setf _extension (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
        (if (>= _indexOfFileExtensionDelmiter 0)
            (progn
            (setf _extension (JR.substring _filePath _indexOfFileExtensionDelmiter))))
        (return-from jreturn _extension))))

    
(unless (fboundp 'jm_getExtension_1) (defgeneric jm_getExtension_1 (this p1)))
(defmethod jm_getExtension_1 ((this AbPathData) _filePath)
  (declare (ignorable this _filePath))
  (let (_indexOfFileExtensionDelmiter _extension)
  (declare (ignorable _indexOfFileExtensionDelmiter _extension))
    (block jreturn
        (setf _indexOfFileExtensionDelmiter (jm_getExtensionIndex_1 this _filePath))
        (setf _extension (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
        (if (>= _indexOfFileExtensionDelmiter 0)
            (progn
            (setf _extension (JR.substring _filePath (JR.i32 (+ _indexOfFileExtensionDelmiter 1))))))
        (return-from jreturn _extension))))

    
(unless (fboundp 'jm_getNameFromPath_1) (defgeneric jm_getNameFromPath_1 (this p1)))
(defmethod jm_getNameFromPath_1 ((this AbPathData) _path)
  (declare (ignorable this _path))
  (let (_endIndex _categoryName)
  (declare (ignorable _endIndex _categoryName))
    (block jreturn
        (setf _endIndex (JR.lastIndexOf _path (slot-value this 'f_SEPARATORCHAR)))
        (if (< _endIndex 0)
            (progn
            (setf _endIndex (JR.lastIndexOf _path (slot-value (FilePathData.jm_getInstance_0) 'f_SEPARATORCHAR)))))
        (if (< _endIndex 0)
            (progn
            (return-from jreturn _path)))
        (if (= (length _path) (JR.i32 (+ _endIndex 1)))
            (progn
            (setf _categoryName (JR.substring _path 0 _endIndex))
            (return-from jreturn (jm_getNameFromPath_1 this _categoryName)))
            (progn
            (setf _categoryName (JR.substring _path (JR.i32 (+ _endIndex 1))))
            (return-from jreturn _categoryName))))))

    
(unless (fboundp 'jm_removeNameFromPath_1) (defgeneric jm_removeNameFromPath_1 (this p1)))
(defmethod jm_removeNameFromPath_1 ((this AbPathData) _path)
  (declare (ignorable this _path))
  (let (_endIndex _pathWithoutName)
  (declare (ignorable _endIndex _pathWithoutName))
    (block jreturn
        (setf _endIndex (JR.lastIndexOf _path (slot-value this 'f_SEPARATORCHAR)))
        (if (< _endIndex 0)
            (progn
            (setf _endIndex (JR.lastIndexOf _path (slot-value (FilePathData.jm_getInstance_0) 'f_SEPARATORCHAR)))))
        (if (< _endIndex 0)
            (progn
            (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))))
        (if (= (length _path) (JR.i32 (+ _endIndex 1)))
            (progn
            (return-from jreturn (jm_removeNameFromPath_1 this (JR.substring _path 0 (JR.i32 (- _endIndex 1))))))
            (progn
            (setf _pathWithoutName (JR.substring _path 0 _endIndex))
            (return-from jreturn _pathWithoutName))))))



