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

(defclass FilePathData (JObject)
  ((f_SEPARATORCHAR :initform 0)
   (f_PATH_START :initform nil)))

(defvar FilePathData.jcell_instance :jnone)
(defun FilePathData.jstatic_instance ()
  (when (eq FilePathData.jcell_instance :jnone) (setf FilePathData.jcell_instance (FilePathData.jnew_0)))
  FilePathData.jcell_instance)
(defun (setf FilePathData.jstatic_instance) (value) (setf FilePathData.jcell_instance value))

    
(defun FilePathData.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FilePathData.jstatic_instance)))))

    
(defun FilePathData.jnew_0 ()
  (let ((this (make-instance 'FilePathData)))
    (setf (slot-value this 'f_SEPARATORCHAR) (File.jstatic_separatorChar))
    (setf (slot-value this 'f_PATH_START) (File.jstatic_separator))
  (let ()
    (block jreturn
        (if (eq (File.jstatic_separatorChar) 92)
            (progn
            (setf (slot-value this 'f_PATH_START) (JR.concat (File.jstatic_separator) (File.jstatic_separator)))))))
    this))



