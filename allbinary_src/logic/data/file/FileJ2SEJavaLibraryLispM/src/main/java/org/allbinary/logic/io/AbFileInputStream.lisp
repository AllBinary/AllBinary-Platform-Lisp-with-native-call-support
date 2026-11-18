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

(defclass AbFileInputStream (FileInputStream)
  ())

    
(defun AbFileInputStream.jnew_1 (_name)
  (declare (ignorable _name))
  (let ((this (make-instance 'AbFileInputStream)))
  (let ()
    (block jreturn
        nil))
    this))

    
(defun AbFileInputStream.jm_createFromAbFile_1 (_file)
  (declare (ignorable _file))
  (let ()
    (block jreturn
        (return-from jreturn (AbFileInputStream.jnew_1 (jm_getPath_0 (AbFileNativeUtil.jm_get_1 _file)))))))

    
(defun AbFileInputStream.jm_createFromFile_1 (_file)
  (declare (ignorable _file))
  (let ()
    (block jreturn
        (return-from jreturn (AbFileInputStream.jnew_1 (jm_getPath_0 _file))))))



