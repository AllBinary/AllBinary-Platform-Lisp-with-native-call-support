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

(defclass TouchButtonFireResource (TouchButtonResource)
  ())

(defvar TouchButtonFireResource.jcell_instance :jnone)
(defun TouchButtonFireResource.jstatic_instance ()
  (when (eq TouchButtonFireResource.jcell_instance :jnone) (setf TouchButtonFireResource.jcell_instance (TouchButtonFireResource.jnew_0)))
  TouchButtonFireResource.jcell_instance)
(defun (setf TouchButtonFireResource.jstatic_instance) (value) (setf TouchButtonFireResource.jcell_instance value))

    
(defun TouchButtonFireResource.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchButtonFireResource.jstatic_instance)))))

    
(defun TouchButtonFireResource.jnew_0 ()
  (let ((this (make-instance 'TouchButtonFireResource)))
  (let ()
    (block jreturn
        nil))
    this))



