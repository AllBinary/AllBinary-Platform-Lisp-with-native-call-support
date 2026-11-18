;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.thread

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullABRunnable (ABRunnable)
  ())

(defvar NullABRunnable.jcell_instance :jnone)
(defun NullABRunnable.jstatic_instance ()
  (when (eq NullABRunnable.jcell_instance :jnone) (setf NullABRunnable.jcell_instance (NullABRunnable.jnew_0)))
  NullABRunnable.jcell_instance)
(defun (setf NullABRunnable.jstatic_instance) (value) (setf NullABRunnable.jcell_instance value))

(defun NullABRunnable.jnew_0 ()
  (let ((this (make-instance 'NullABRunnable)))
    this))

    
(defun NullABRunnable.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullABRunnable.jstatic_instance)))))

    
(unless (fboundp 'jm_isRunning_0) (defgeneric jm_isRunning_0 (this)))
(defmethod jm_isRunning_0 ((this NullABRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))



