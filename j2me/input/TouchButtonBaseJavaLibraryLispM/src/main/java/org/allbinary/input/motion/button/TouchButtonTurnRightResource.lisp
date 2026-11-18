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

(defclass TouchButtonTurnRightResource (TouchButtonResource)
  ())

(defvar TouchButtonTurnRightResource.jcell_instance :jnone)
(defun TouchButtonTurnRightResource.jstatic_instance ()
  (when (eq TouchButtonTurnRightResource.jcell_instance :jnone) (setf TouchButtonTurnRightResource.jcell_instance (TouchButtonTurnRightResource.jnew_0)))
  TouchButtonTurnRightResource.jcell_instance)
(defun (setf TouchButtonTurnRightResource.jstatic_instance) (value) (setf TouchButtonTurnRightResource.jcell_instance value))

    
(defun TouchButtonTurnRightResource.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchButtonTurnRightResource.jstatic_instance)))))

    
(defun TouchButtonTurnRightResource.jnew_0 ()
  (let ((this (make-instance 'TouchButtonTurnRightResource)))
  (let ()
    (block jreturn
        nil))
    this))



