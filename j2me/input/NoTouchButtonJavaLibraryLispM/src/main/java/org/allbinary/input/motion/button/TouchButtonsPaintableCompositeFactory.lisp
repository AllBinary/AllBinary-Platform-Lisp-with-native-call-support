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

(defclass TouchButtonsPaintableCompositeFactory (JObject)
  ())

(defun TouchButtonsPaintableCompositeFactory.jnew_0 ()
  (let ((this (make-instance 'TouchButtonsPaintableCompositeFactory)))
    this))

    
(defun TouchButtonsPaintableCompositeFactory.jm_getInstance_2 (_inputMappingInterface _basicColor)
  (declare (ignorable _inputMappingInterface _basicColor))
  (let ()
    (block jreturn
        (return-from jreturn (ProcessPaintable.jnew_0)))))



