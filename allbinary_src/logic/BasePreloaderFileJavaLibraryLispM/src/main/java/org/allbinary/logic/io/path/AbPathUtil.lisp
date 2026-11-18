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
;;;; package org.allbinary.logic.io.path

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AbPathUtil (JObject)
  ((f_NO_ABPATH :initform nil)))

(defvar AbPathUtil.jcell_instance :jnone)
(defun AbPathUtil.jstatic_instance ()
  (when (eq AbPathUtil.jcell_instance :jnone) (setf AbPathUtil.jcell_instance (AbPathUtil.jnew_0)))
  AbPathUtil.jcell_instance)
(defun (setf AbPathUtil.jstatic_instance) (value) (setf AbPathUtil.jcell_instance value))

(defun AbPathUtil.jnew_0 ()
  (let ((this (make-instance 'AbPathUtil)))
    (setf (slot-value this 'f_NO_ABPATH) (AbPath.jm_createAbPath_0))
    this))

    
(defun AbPathUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AbPathUtil.jstatic_instance)))))



