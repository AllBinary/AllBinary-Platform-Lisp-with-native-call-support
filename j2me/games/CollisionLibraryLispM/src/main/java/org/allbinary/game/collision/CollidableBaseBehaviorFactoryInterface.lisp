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
;;;; package org.allbinary.game.collision

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CollidableBaseBehaviorFactoryInterface (JObject)
  ())

(defun CollidableBaseBehaviorFactoryInterface.jnew_0 ()
  (let ((this (make-instance 'CollidableBaseBehaviorFactoryInterface)))
    this))

    
(unless (fboundp 'jm_createBehavior_0) (defgeneric jm_createBehavior_0 (this)))
(defmethod jm_createBehavior_0 ((this CollidableBaseBehaviorFactoryInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "createBehavior")))



