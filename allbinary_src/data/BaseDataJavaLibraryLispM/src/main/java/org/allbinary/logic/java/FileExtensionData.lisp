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
;;;; package org.allbinary.logic.java

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FileExtensionData (JObject)
  ((f_DOT_JAVA_SOURCE :initform nil)
   (f_JAVA_SOURCE :initform nil)))

(defvar FileExtensionData.jcell_instance :jnone)
(defun FileExtensionData.jstatic_instance ()
  (when (eq FileExtensionData.jcell_instance :jnone) (setf FileExtensionData.jcell_instance (FileExtensionData.jnew_0)))
  FileExtensionData.jcell_instance)

    
(defun FileExtensionData.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FileExtensionData.jstatic_instance)))))

    
(defun FileExtensionData.jnew_0 ()
  (let ((this (make-instance 'FileExtensionData)))
    (setf (slot-value this 'f_DOT_JAVA_SOURCE) ".java")
    (setf (slot-value this 'f_JAVA_SOURCE) "java")
  (let ()
    (block jreturn nil))
    this))



