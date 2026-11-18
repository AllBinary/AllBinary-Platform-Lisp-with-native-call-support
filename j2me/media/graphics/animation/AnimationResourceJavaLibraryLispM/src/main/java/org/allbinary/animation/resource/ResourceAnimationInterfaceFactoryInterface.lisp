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
;;;; package org.allbinary.animation.resource

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ResourceAnimationInterfaceFactoryInterface (JObject)
  ())

(defun ResourceAnimationInterfaceFactoryInterface.jnew_0 ()
  (let ((this (make-instance 'ResourceAnimationInterfaceFactoryInterface)))
    this))

    
(unless (fboundp 'jm_getBasicAnimationInterfaceFactoryInstance_1) (defgeneric jm_getBasicAnimationInterfaceFactoryInstance_1 (this p1)))
(defmethod jm_getBasicAnimationInterfaceFactoryInstance_1 ((this ResourceAnimationInterfaceFactoryInterface) _resource)
  (declare (ignorable this _resource))
  (error (JR.newException "AbstractMethodError" "getBasicAnimationInterfaceFactoryInstance")))



