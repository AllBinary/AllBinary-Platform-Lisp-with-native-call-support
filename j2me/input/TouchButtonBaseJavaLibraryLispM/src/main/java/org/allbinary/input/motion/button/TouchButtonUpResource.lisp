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

(defclass TouchButtonUpResource (TouchButtonResource)
  ())

(defvar TouchButtonUpResource.jcell_instance :jnone)
(defun TouchButtonUpResource.jstatic_instance ()
  (when (eq TouchButtonUpResource.jcell_instance :jnone) (setf TouchButtonUpResource.jcell_instance (TouchButtonUpResource.jnew_0)))
  TouchButtonUpResource.jcell_instance)
(defun (setf TouchButtonUpResource.jstatic_instance) (value) (setf TouchButtonUpResource.jcell_instance value))

    
(defun TouchButtonUpResource.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchButtonUpResource.jstatic_instance)))))

    
(defun TouchButtonUpResource.jnew_0 ()
  (let ((this (make-instance 'TouchButtonUpResource)))
  (let ()
    (block jreturn
        nil))
    this))



