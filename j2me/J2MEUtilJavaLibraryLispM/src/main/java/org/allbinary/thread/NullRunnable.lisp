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
;;;; package org.allbinary.thread

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullRunnable (ARunnable)
  ())

(defvar NullRunnable.jcell_instance :jnone)
(defun NullRunnable.jstatic_instance ()
  (when (eq NullRunnable.jcell_instance :jnone) (setf NullRunnable.jcell_instance (NullRunnable.jnew_0)))
  NullRunnable.jcell_instance)

    
(defun NullRunnable.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullRunnable.jstatic_instance)))))

    
(defun NullRunnable.jnew_0 ()
  (let ((this (make-instance 'NullRunnable)))
  (let ()
    (block jreturn nil))
    this))



