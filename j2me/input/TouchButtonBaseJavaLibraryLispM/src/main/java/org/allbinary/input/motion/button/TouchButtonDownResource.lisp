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

(defclass TouchButtonDownResource (TouchButtonResource)
  ())

(defvar TouchButtonDownResource.jcell_instance :jnone)
(defun TouchButtonDownResource.jstatic_instance ()
  (when (eq TouchButtonDownResource.jcell_instance :jnone) (setf TouchButtonDownResource.jcell_instance (TouchButtonDownResource.jnew_0)))
  TouchButtonDownResource.jcell_instance)
(defun (setf TouchButtonDownResource.jstatic_instance) (value) (setf TouchButtonDownResource.jcell_instance value))

    
(defun TouchButtonDownResource.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchButtonDownResource.jstatic_instance)))))

    
(defun TouchButtonDownResource.jnew_0 ()
  (let ((this (make-instance 'TouchButtonDownResource)))
  (let ()
    (block jreturn
        nil))
    this))



