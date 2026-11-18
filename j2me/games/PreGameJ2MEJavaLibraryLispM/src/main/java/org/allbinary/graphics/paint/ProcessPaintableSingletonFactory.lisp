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
;;;; package org.allbinary.graphics.paint

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ProcessPaintableSingletonFactory (JObject)
  ())

(defvar ProcessPaintableSingletonFactory.jcell_SINGLETON :jnone)
(defun ProcessPaintableSingletonFactory.jstatic_SINGLETON ()
  (when (eq ProcessPaintableSingletonFactory.jcell_SINGLETON :jnone) (setf ProcessPaintableSingletonFactory.jcell_SINGLETON (ProcessPaintable.jnew_0)))
  ProcessPaintableSingletonFactory.jcell_SINGLETON)
(defun (setf ProcessPaintableSingletonFactory.jstatic_SINGLETON) (value) (setf ProcessPaintableSingletonFactory.jcell_SINGLETON value))

    
(defun ProcessPaintableSingletonFactory.jnew_0 ()
  (let ((this (make-instance 'ProcessPaintableSingletonFactory)))
  (let ()
    (block jreturn nil))
    this))

    
(defun ProcessPaintableSingletonFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ProcessPaintableSingletonFactory.jstatic_SINGLETON)))))



