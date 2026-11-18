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
;;;; package org.allbinary.time

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LicenseStupidTimerFactory (JObject)
  ())

(defvar LicenseStupidTimerFactory.jcell_instance :jnone)
(defun LicenseStupidTimerFactory.jstatic_instance ()
  (when (eq LicenseStupidTimerFactory.jcell_instance :jnone) (setf LicenseStupidTimerFactory.jcell_instance (StupidTimer.jnew_0)))
  LicenseStupidTimerFactory.jcell_instance)
(defun (setf LicenseStupidTimerFactory.jstatic_instance) (value) (setf LicenseStupidTimerFactory.jcell_instance value))

(defun LicenseStupidTimerFactory.jnew_0 ()
  (let ((this (make-instance 'LicenseStupidTimerFactory)))
    this))

    
(defun LicenseStupidTimerFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LicenseStupidTimerFactory.jstatic_instance)))))



