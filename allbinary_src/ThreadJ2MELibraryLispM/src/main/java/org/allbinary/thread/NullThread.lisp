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

(defclass NullThread (JObject)
  ())

(defvar NullThread.jcell_NULL_THREAD :jnone)
(defun NullThread.jstatic_NULL_THREAD ()
  (when (eq NullThread.jcell_NULL_THREAD :jnone) (setf NullThread.jcell_NULL_THREAD (Thread.jnew_0)))
  NullThread.jcell_NULL_THREAD)
(defun (setf NullThread.jstatic_NULL_THREAD) (value) (setf NullThread.jcell_NULL_THREAD value))

(defun NullThread.jnew_0 ()
  (let ((this (make-instance 'NullThread)))
    this))



