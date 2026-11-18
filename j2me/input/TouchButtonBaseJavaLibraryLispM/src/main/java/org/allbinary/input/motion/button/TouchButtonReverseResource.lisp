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

(defclass TouchButtonReverseResource (TouchButtonResource)
  ())

(defvar TouchButtonReverseResource.jcell_instance :jnone)
(defun TouchButtonReverseResource.jstatic_instance ()
  (when (eq TouchButtonReverseResource.jcell_instance :jnone) (setf TouchButtonReverseResource.jcell_instance (TouchButtonReverseResource.jnew_0)))
  TouchButtonReverseResource.jcell_instance)
(defun (setf TouchButtonReverseResource.jstatic_instance) (value) (setf TouchButtonReverseResource.jcell_instance value))

    
(defun TouchButtonReverseResource.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchButtonReverseResource.jstatic_instance)))))

    
(defun TouchButtonReverseResource.jnew_0 ()
  (let ((this (make-instance 'TouchButtonReverseResource)))
  (let ()
    (block jreturn
        nil))
    this))



