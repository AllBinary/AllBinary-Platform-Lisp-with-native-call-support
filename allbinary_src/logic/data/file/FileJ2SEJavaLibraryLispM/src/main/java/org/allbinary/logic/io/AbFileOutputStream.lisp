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

(defclass AbFileOutputStream (FileOutputStream)
  ())

    
(defun AbFileOutputStream.jm_createFromAbFile_1 (_file)
  (declare (ignorable _file))
  (let ()
    (block jreturn
        (return-from jreturn (AbFileOutputStream.jnew_2 (jm_getPath_0 _file) nil)))))

    
(defun AbFileOutputStream.jm_createFromAbFileAppend_2 (_file _append)
  (declare (ignorable _file _append))
  (let ()
    (block jreturn
        (return-from jreturn (AbFileOutputStream.jnew_2 (jm_getPath_0 _file) _append)))))

    
(defun AbFileOutputStream.jm_createFromFilePath_1 (_name)
  (declare (ignorable _name))
  (let ()
    (block jreturn
        (return-from jreturn (AbFileOutputStream.jnew_2 _name nil)))))

    
(defun AbFileOutputStream.jm_createFromFilePathAppend_2 (_name _append)
  (declare (ignorable _name _append))
  (let ()
    (block jreturn
        (return-from jreturn (AbFileOutputStream.jnew_2 _name _append)))))

    
(defun AbFileOutputStream.jnew_2 (_name _append)
  (declare (ignorable _name _append))
  (let ((this (make-instance 'AbFileOutputStream)))
  (let ()
    (block jreturn
        nil))
    this))



