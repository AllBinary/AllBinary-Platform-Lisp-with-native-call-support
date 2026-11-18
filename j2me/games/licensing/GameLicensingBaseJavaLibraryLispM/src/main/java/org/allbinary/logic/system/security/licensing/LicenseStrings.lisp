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
;;;; package org.allbinary.logic.system.security.licensing

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LicenseStrings (JObject)
  ((f_LOCKED :initform nil)))

(defvar LicenseStrings.jcell_instance :jnone)
(defun LicenseStrings.jstatic_instance ()
  (when (eq LicenseStrings.jcell_instance :jnone) (setf LicenseStrings.jcell_instance (LicenseStrings.jnew_0)))
  LicenseStrings.jcell_instance)
(defun (setf LicenseStrings.jstatic_instance) (value) (setf LicenseStrings.jcell_instance value))

(defun LicenseStrings.jnew_0 ()
  (let ((this (make-instance 'LicenseStrings)))
    (setf (slot-value this 'f_LOCKED) "Demo Locked Feature")
    this))

    
(defun LicenseStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LicenseStrings.jstatic_instance)))))



