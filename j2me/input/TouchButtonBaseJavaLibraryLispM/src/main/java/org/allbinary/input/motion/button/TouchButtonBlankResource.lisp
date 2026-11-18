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

(defclass TouchButtonBlankResource (TouchButtonResource)
  ())

(defvar TouchButtonBlankResource.jcell_instance :jnone)
(defun TouchButtonBlankResource.jstatic_instance ()
  (when (eq TouchButtonBlankResource.jcell_instance :jnone) (setf TouchButtonBlankResource.jcell_instance (TouchButtonBlankResource.jnew_0)))
  TouchButtonBlankResource.jcell_instance)
(defun (setf TouchButtonBlankResource.jstatic_instance) (value) (setf TouchButtonBlankResource.jcell_instance value))

    
(defun TouchButtonBlankResource.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchButtonBlankResource.jstatic_instance)))))

    
(defun TouchButtonBlankResource.jnew_0 ()
  (let ((this (make-instance 'TouchButtonBlankResource)))
  (let ()
    (block jreturn
        nil))
    this))



