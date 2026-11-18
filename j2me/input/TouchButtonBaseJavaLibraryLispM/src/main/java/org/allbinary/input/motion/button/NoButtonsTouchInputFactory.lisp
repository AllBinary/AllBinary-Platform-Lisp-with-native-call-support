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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NoButtonsTouchInputFactory (JObject)
  ())

(defvar NoButtonsTouchInputFactory.jcell_instance :jnone)
(defun NoButtonsTouchInputFactory.jstatic_instance ()
  (when (eq NoButtonsTouchInputFactory.jcell_instance :jnone) (setf NoButtonsTouchInputFactory.jcell_instance (BaseTouchInput.jnew_0)))
  NoButtonsTouchInputFactory.jcell_instance)
(defun (setf NoButtonsTouchInputFactory.jstatic_instance) (value) (setf NoButtonsTouchInputFactory.jcell_instance value))

(defun NoButtonsTouchInputFactory.jnew_0 ()
  (let ((this (make-instance 'NoButtonsTouchInputFactory)))
    this))

    
(defun NoButtonsTouchInputFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NoButtonsTouchInputFactory.jstatic_instance)))))



