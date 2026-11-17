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
;;;; package org.allbinary.logic.system.os

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NoOperatingSystem (GenericOperatingSystem)
  ())

(defvar NoOperatingSystem.jcell_NO_OPERATING_SYSTEM :jnone)
(defun NoOperatingSystem.jstatic_NO_OPERATING_SYSTEM ()
  (when (eq NoOperatingSystem.jcell_NO_OPERATING_SYSTEM :jnone) (setf NoOperatingSystem.jcell_NO_OPERATING_SYSTEM (GenericOperatingSystem.jnew_0)))
  NoOperatingSystem.jcell_NO_OPERATING_SYSTEM)

    
(defun NoOperatingSystem.jnew_0 ()
  (let ((this (make-instance 'NoOperatingSystem)))
  (let ()
    (block jreturn nil))
    this))



