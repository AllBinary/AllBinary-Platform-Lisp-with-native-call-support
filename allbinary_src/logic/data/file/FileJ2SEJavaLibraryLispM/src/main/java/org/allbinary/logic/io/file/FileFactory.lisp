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

(defclass FileFactory (JObject)
  ())

(defvar FileFactory.jcell_instance :jnone)
(defun FileFactory.jstatic_instance ()
  (when (eq FileFactory.jcell_instance :jnone) (setf FileFactory.jcell_instance (FileFactory.jnew_0)))
  FileFactory.jcell_instance)
(defun (setf FileFactory.jstatic_instance) (value) (setf FileFactory.jcell_instance value))

(defun FileFactory.jnew_0 ()
  (let ((this (make-instance 'FileFactory)))
    this))

    
(defun FileFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FileFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this FileFactory) _filePath)
  (declare (ignorable this _filePath))
  (let ()
    (block jreturn
        (return-from jreturn (AbFile.jm_createAbFileFromRawPath_1 _filePath)))))

    
(unless (fboundp 'jm_getInstance_2) (defgeneric jm_getInstance_2 (this p1 p2)))
(defmethod jm_getInstance_2 ((this FileFactory) _file _childFilePath)
  (declare (ignorable this _file _childFilePath))
  (let ()
    (block jreturn
        (return-from jreturn (AbFile.jm_createAbFileWithChild_2 _file _childFilePath)))))

    
(unless (fboundp 'jm_isFile_1) (defgeneric jm_isFile_1 (this p1)))
(defmethod jm_isFile_1 ((this FileFactory) _path)
  (declare (ignorable this _path))
  (let (_file)
  (declare (ignorable _file))
    (block jreturn
        (setf _file (AbFile.jm_createAbFile_1 _path))
        (if (jm_exists_0 _file)
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))



