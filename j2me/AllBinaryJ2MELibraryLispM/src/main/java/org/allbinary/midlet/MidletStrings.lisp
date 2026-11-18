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
;;;; package org.allbinary.midlet

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MidletStrings (JObject)
  ((f_COMMAND_ACTION :initform nil)))

(defvar MidletStrings.jcell_instance :jnone)
(defun MidletStrings.jstatic_instance ()
  (when (eq MidletStrings.jcell_instance :jnone) (setf MidletStrings.jcell_instance (MidletStrings.jnew_0)))
  MidletStrings.jcell_instance)
(defun (setf MidletStrings.jstatic_instance) (value) (setf MidletStrings.jcell_instance value))

(defun MidletStrings.jnew_0 ()
  (let ((this (make-instance 'MidletStrings)))
    (setf (slot-value this 'f_COMMAND_ACTION) "commandAction")
    this))

    
(defun MidletStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MidletStrings.jstatic_instance)))))



