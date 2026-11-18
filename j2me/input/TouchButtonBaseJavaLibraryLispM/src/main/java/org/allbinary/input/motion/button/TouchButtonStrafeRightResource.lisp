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

(defclass TouchButtonStrafeRightResource (TouchButtonResource)
  ())

(defvar TouchButtonStrafeRightResource.jcell_instance :jnone)
(defun TouchButtonStrafeRightResource.jstatic_instance ()
  (when (eq TouchButtonStrafeRightResource.jcell_instance :jnone) (setf TouchButtonStrafeRightResource.jcell_instance (TouchButtonStrafeRightResource.jnew_0)))
  TouchButtonStrafeRightResource.jcell_instance)
(defun (setf TouchButtonStrafeRightResource.jstatic_instance) (value) (setf TouchButtonStrafeRightResource.jcell_instance value))

    
(defun TouchButtonStrafeRightResource.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchButtonStrafeRightResource.jstatic_instance)))))

    
(defun TouchButtonStrafeRightResource.jnew_0 ()
  (let ((this (make-instance 'TouchButtonStrafeRightResource)))
  (let ()
    (block jreturn
        nil))
    this))



