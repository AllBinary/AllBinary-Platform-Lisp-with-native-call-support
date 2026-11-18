;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.animation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnimationBehaviorFactory (JObject)
  ())

(defvar AnimationBehaviorFactory.jcell_instance :jnone)
(defun AnimationBehaviorFactory.jstatic_instance ()
  (when (eq AnimationBehaviorFactory.jcell_instance :jnone) (setf AnimationBehaviorFactory.jcell_instance (AnimationBehaviorFactory.jnew_0)))
  AnimationBehaviorFactory.jcell_instance)
(defun (setf AnimationBehaviorFactory.jstatic_instance) (value) (setf AnimationBehaviorFactory.jcell_instance value))

(defun AnimationBehaviorFactory.jnew_0 ()
  (let ((this (make-instance 'AnimationBehaviorFactory)))
    this))

    
(defun AnimationBehaviorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AnimationBehaviorFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getOrCreateInstance_0) (defgeneric jm_getOrCreateInstance_0 (this)))
(defmethod jm_getOrCreateInstance_0 ((this AnimationBehaviorFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (AnimationBehavior.jm_getInstance_0)))))



