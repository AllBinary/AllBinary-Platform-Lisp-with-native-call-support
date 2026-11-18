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
;;;; package org.allbinary.logic.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ScaleFactorFactory (JObject)
  ((f_DEFAULT_SCALE_FACTOR :initform 0)
   (f_DEFAULT_SCALE_VALUE :initform 0)))

(defvar ScaleFactorFactory.jcell_instance :jnone)
(defun ScaleFactorFactory.jstatic_instance ()
  (when (eq ScaleFactorFactory.jcell_instance :jnone) (setf ScaleFactorFactory.jcell_instance (ScaleFactorFactory.jnew_0)))
  ScaleFactorFactory.jcell_instance)
(defun (setf ScaleFactorFactory.jstatic_instance) (value) (setf ScaleFactorFactory.jcell_instance value))

(defun ScaleFactorFactory.jnew_0 ()
  (let ((this (make-instance 'ScaleFactorFactory)))
    (setf (slot-value this 'f_DEFAULT_SCALE_FACTOR) 10)
    (setf (slot-value this 'f_DEFAULT_SCALE_VALUE) 1024)
    this))

    
(defun ScaleFactorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ScaleFactorFactory.jstatic_instance)))))



