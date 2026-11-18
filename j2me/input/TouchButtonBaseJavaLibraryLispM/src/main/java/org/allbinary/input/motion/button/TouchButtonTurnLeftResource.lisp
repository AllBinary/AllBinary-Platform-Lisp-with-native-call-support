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

(defclass TouchButtonTurnLeftResource (TouchButtonResource)
  ())

(defvar TouchButtonTurnLeftResource.jcell_instance :jnone)
(defun TouchButtonTurnLeftResource.jstatic_instance ()
  (when (eq TouchButtonTurnLeftResource.jcell_instance :jnone) (setf TouchButtonTurnLeftResource.jcell_instance (TouchButtonTurnLeftResource.jnew_0)))
  TouchButtonTurnLeftResource.jcell_instance)
(defun (setf TouchButtonTurnLeftResource.jstatic_instance) (value) (setf TouchButtonTurnLeftResource.jcell_instance value))

    
(defun TouchButtonTurnLeftResource.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchButtonTurnLeftResource.jstatic_instance)))))

    
(defun TouchButtonTurnLeftResource.jnew_0 ()
  (let ((this (make-instance 'TouchButtonTurnLeftResource)))
  (let ()
    (block jreturn
        nil))
    this))



