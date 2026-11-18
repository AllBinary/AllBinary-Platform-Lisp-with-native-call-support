;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ThreedResources (JObject)
  ())

(defvar ThreedResources.jcell_threedResources :jnone)
(defun ThreedResources.jstatic_threedResources ()
  (when (eq ThreedResources.jcell_threedResources :jnone) (setf ThreedResources.jcell_threedResources (ThreedResources.jnew_0)))
  ThreedResources.jcell_threedResources)
(defun (setf ThreedResources.jstatic_threedResources) (value) (setf ThreedResources.jcell_threedResources value))

(defun ThreedResources.jnew_0 ()
  (let ((this (make-instance 'ThreedResources)))
    this))

    
(defun ThreedResources.jm_getThreedResources_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ThreedResources.jstatic_threedResources)))))

    
(unless (fboundp 'jm_add_0) (defgeneric jm_add_0 (this)))
(defmethod jm_add_0 ((this ThreedResources))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



