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
;;;; package org.allbinary.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NoAllBinarySensor (AllBinarySensor)
  ())

(defvar NoAllBinarySensor.jcell_instance :jnone)
(defun NoAllBinarySensor.jstatic_instance ()
  (when (eq NoAllBinarySensor.jcell_instance :jnone) (setf NoAllBinarySensor.jcell_instance (NoAllBinarySensor.jnew_0)))
  NoAllBinarySensor.jcell_instance)
(defun (setf NoAllBinarySensor.jstatic_instance) (value) (setf NoAllBinarySensor.jcell_instance value))

    
(defun NoAllBinarySensor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NoAllBinarySensor.jstatic_instance)))))

    
(defun NoAllBinarySensor.jnew_0 ()
  (let ((this (make-instance 'NoAllBinarySensor)))
  (let ()
    (block jreturn nil))
    this))



