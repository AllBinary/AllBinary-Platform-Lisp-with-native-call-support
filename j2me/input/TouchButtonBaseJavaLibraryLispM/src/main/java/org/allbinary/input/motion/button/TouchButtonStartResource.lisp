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

(defclass TouchButtonStartResource (TouchButtonResource)
  ())

(defvar TouchButtonStartResource.jcell_instance :jnone)
(defun TouchButtonStartResource.jstatic_instance ()
  (when (eq TouchButtonStartResource.jcell_instance :jnone) (setf TouchButtonStartResource.jcell_instance (TouchButtonStartResource.jnew_0)))
  TouchButtonStartResource.jcell_instance)
(defun (setf TouchButtonStartResource.jstatic_instance) (value) (setf TouchButtonStartResource.jcell_instance value))

    
(defun TouchButtonStartResource.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchButtonStartResource.jstatic_instance)))))

    
(defun TouchButtonStartResource.jnew_0 ()
  (let ((this (make-instance 'TouchButtonStartResource)))
  (let ()
    (block jreturn
        nil))
    this))



