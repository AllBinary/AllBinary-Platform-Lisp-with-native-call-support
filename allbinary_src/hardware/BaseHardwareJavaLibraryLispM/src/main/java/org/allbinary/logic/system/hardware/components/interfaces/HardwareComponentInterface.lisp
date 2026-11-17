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
;;;; package org.allbinary.logic.system.hardware.components.interfaces

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HardwareComponentInterface (JObject)
  ())

(defun HardwareComponentInterface.jnew_0 ()
  (let ((this (make-instance 'HardwareComponentInterface)))
    this))

    
(unless (fboundp 'jm_compareTo_1) (defgeneric jm_compareTo_1 (this p1)))
(defmethod jm_compareTo_1 ((this HardwareComponentInterface) _componentInterface)
  (declare (ignorable this _componentInterface))
  (error (JR.newException "AbstractMethodError" "compareTo")))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this HardwareComponentInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "toString")))



