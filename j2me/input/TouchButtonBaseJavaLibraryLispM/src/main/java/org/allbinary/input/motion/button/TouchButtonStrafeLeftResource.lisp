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

(defclass TouchButtonStrafeLeftResource (TouchButtonResource)
  ())

(defvar TouchButtonStrafeLeftResource.jcell_instance :jnone)
(defun TouchButtonStrafeLeftResource.jstatic_instance ()
  (when (eq TouchButtonStrafeLeftResource.jcell_instance :jnone) (setf TouchButtonStrafeLeftResource.jcell_instance (TouchButtonStrafeLeftResource.jnew_0)))
  TouchButtonStrafeLeftResource.jcell_instance)
(defun (setf TouchButtonStrafeLeftResource.jstatic_instance) (value) (setf TouchButtonStrafeLeftResource.jcell_instance value))

    
(defun TouchButtonStrafeLeftResource.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchButtonStrafeLeftResource.jstatic_instance)))))

    
(defun TouchButtonStrafeLeftResource.jnew_0 ()
  (let ((this (make-instance 'TouchButtonStrafeLeftResource)))
  (let ()
    (block jreturn
        nil))
    this))



