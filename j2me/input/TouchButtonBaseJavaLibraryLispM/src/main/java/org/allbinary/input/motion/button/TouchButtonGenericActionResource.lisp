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

(defclass TouchButtonGenericActionResource (TouchButtonResource)
  ())

(defvar TouchButtonGenericActionResource.jcell_instance :jnone)
(defun TouchButtonGenericActionResource.jstatic_instance ()
  (when (eq TouchButtonGenericActionResource.jcell_instance :jnone) (setf TouchButtonGenericActionResource.jcell_instance (TouchButtonGenericActionResource.jnew_0)))
  TouchButtonGenericActionResource.jcell_instance)
(defun (setf TouchButtonGenericActionResource.jstatic_instance) (value) (setf TouchButtonGenericActionResource.jcell_instance value))

    
(defun TouchButtonGenericActionResource.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchButtonGenericActionResource.jstatic_instance)))))

    
(defun TouchButtonGenericActionResource.jnew_0 ()
  (let ((this (make-instance 'TouchButtonGenericActionResource)))
  (let ()
    (block jreturn
        nil))
    this))



