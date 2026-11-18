;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.business.advertisement

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameAdStateFactoryInterface (JObject)
  ())

(defun GameAdStateFactoryInterface.jnew_0 ()
  (let ((this (make-instance 'GameAdStateFactoryInterface)))
    this))

    
(unless (fboundp 'jm_getInstanceForApp_1) (defgeneric jm_getInstanceForApp_1 (this p1)))
(defmethod jm_getInstanceForApp_1 ((this GameAdStateFactoryInterface) _softwareInformation)
  (declare (ignorable this _softwareInformation))
  (error (JR.newException "AbstractMethodError" "getInstanceForApp")))



