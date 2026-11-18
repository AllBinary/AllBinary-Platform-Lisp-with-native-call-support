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

(defclass StatePaintableFactory (JObject)
  ())

(defvar StatePaintableFactory.jcell_instance :jnone)
(defun StatePaintableFactory.jstatic_instance ()
  (when (eq StatePaintableFactory.jcell_instance :jnone) (setf StatePaintableFactory.jcell_instance (StatePaintable.jnew_0)))
  StatePaintableFactory.jcell_instance)
(defun (setf StatePaintableFactory.jstatic_instance) (value) (setf StatePaintableFactory.jcell_instance value))

(defun StatePaintableFactory.jnew_0 ()
  (let ((this (make-instance 'StatePaintableFactory)))
    this))

    
(defun StatePaintableFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (StatePaintableFactory.jstatic_instance)))))



