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
;;;; package org.allbinary.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LayerInterfaceFactoryInterface (JObject)
  ())

(defun LayerInterfaceFactoryInterface.jnew_0 ()
  (let ((this (make-instance 'LayerInterfaceFactoryInterface)))
    this))

    
(unless (fboundp 'jm_getNextInstance_4) (defgeneric jm_getNextInstance_4 (this p1 p2 p3 p4)))
(defmethod jm_getNextInstance_4 ((this LayerInterfaceFactoryInterface) _hashtable _x _y _z)
  (declare (ignorable this _hashtable _x _y _z))
  (error (JR.newException "AbstractMethodError" "getNextInstance")))



