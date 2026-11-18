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

(defclass DataOutputStreamFactory (JObject)
  ())

(defvar DataOutputStreamFactory.jcell_instance :jnone)
(defun DataOutputStreamFactory.jstatic_instance ()
  (when (eq DataOutputStreamFactory.jcell_instance :jnone) (setf DataOutputStreamFactory.jcell_instance (DataOutputStreamFactory.jnew_0)))
  DataOutputStreamFactory.jcell_instance)
(defun (setf DataOutputStreamFactory.jstatic_instance) (value) (setf DataOutputStreamFactory.jcell_instance value))

(defun DataOutputStreamFactory.jnew_0 ()
  (let ((this (make-instance 'DataOutputStreamFactory)))
    this))

    
(defun DataOutputStreamFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DataOutputStreamFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getInstanceForAbFile_1) (defgeneric jm_getInstanceForAbFile_1 (this p1)))
(defmethod jm_getInstanceForAbFile_1 ((this DataOutputStreamFactory) _file)
  (declare (ignorable this _file))
  (let (_idFileOutputStream _idOutData)
  (declare (ignorable _idFileOutputStream _idOutData))
    (block jreturn
        (setf _idFileOutputStream (AbFileOutputStream.jm_createFromAbFile_1 _file))
        (setf _idOutData (AbDataOutputStream.jnew_1 _idFileOutputStream))
        (return-from jreturn _idOutData))))

    
(unless (fboundp 'jm_getInstance_2) (defgeneric jm_getInstance_2 (this p1 p2)))
(defmethod jm_getInstance_2 ((this DataOutputStreamFactory) _filePath _fileName)
  (declare (ignorable this _filePath _fileName))
  (let (_fileStreamFactory _fileOutputStream _idOutData)
  (declare (ignorable _fileStreamFactory _fileOutputStream _idOutData))
    (block jreturn
        (setf _fileStreamFactory (FileStreamFactory.jm_getInstance_0))
        (setf _fileOutputStream (jm_getFileOutputStreamInstance_2 _fileStreamFactory _filePath _fileName))
        (setf _idOutData (AbDataOutputStream.jnew_1 _fileOutputStream))
        (return-from jreturn _idOutData))))



