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
;;;; package org.allbinary.logic.system.hardware

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HardwareInterface (JObject)
  ())

(defun HardwareInterface.jnew_0 ()
  (let ((this (make-instance 'HardwareInterface)))
    this))

    
(unless (fboundp 'jm_getComponent_1) (defgeneric jm_getComponent_1 (this p1)))
(defmethod jm_getComponent_1 ((this HardwareInterface) _index)
  (declare (ignorable this _index))
  (error (JR.newException "AbstractMethodError" "getComponent")))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this HardwareInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "toString")))

    
(unless (fboundp 'jm_compareTo_1) (defgeneric jm_compareTo_1 (this p1)))
(defmethod jm_compareTo_1 ((this HardwareInterface) _hardwareInterface)
  (declare (ignorable this _hardwareInterface))
  (error (JR.newException "AbstractMethodError" "compareTo")))

    
(unless (fboundp 'jm_difference_1) (defgeneric jm_difference_1 (this p1)))
(defmethod jm_difference_1 ((this HardwareInterface) _hardwareInterface)
  (declare (ignorable this _hardwareInterface))
  (error (JR.newException "AbstractMethodError" "difference")))



