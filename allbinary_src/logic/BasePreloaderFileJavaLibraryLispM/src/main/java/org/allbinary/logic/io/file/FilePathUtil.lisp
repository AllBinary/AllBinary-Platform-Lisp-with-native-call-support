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

;Used to correct user input for paths
(defclass FilePathUtil (JObject)
  ())

    
(defun FilePathUtil.jnew_0 ()
  (let ((this (make-instance 'FilePathUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(defun FilePathUtil.jm_adjust_1 (_path)
  (declare (ignorable _path))
  (let (_abPathData _stringValidationUtil _filePathData)
  (declare (ignorable _abPathData _stringValidationUtil _filePathData))
    (block jreturn
        (setf _abPathData (AbPathData.jm_getInstance_0))
        (setf _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (setf _filePathData (FilePathData.jm_getInstance_0))
        (if (jm_isEmpty_1 _stringValidationUtil _path)
            (progn
            (return-from jreturn (slot-value _filePathData 'f_PATH_START))))
        (setf _path (JR.replace _path (slot-value _abPathData 'f_SEPARATORCHAR) (slot-value _filePathData 'f_SEPARATORCHAR)))
        (return-from jreturn _path))))



