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

(defclass AbFileNativeUtil (JObject)
  ())

(defun AbFileNativeUtil.jnew_0 ()
  (let ((this (make-instance 'AbFileNativeUtil)))
    this))

    
(defun AbFileNativeUtil.jm_get_1 (_file)
  (declare (ignorable _file))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getFile_0 _file)))))



