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

(defclass AnimationBehavior (JObject)
  ())

(defvar AnimationBehavior.jcell_instance :jnone)
(defun AnimationBehavior.jstatic_instance ()
  (when (eq AnimationBehavior.jcell_instance :jnone) (setf AnimationBehavior.jcell_instance (AnimationBehavior.jnew_0)))
  AnimationBehavior.jcell_instance)
(defun (setf AnimationBehavior.jstatic_instance) (value) (setf AnimationBehavior.jcell_instance value))

(defun AnimationBehavior.jnew_0 ()
  (let ((this (make-instance 'AnimationBehavior)))
    this))

    
(defun AnimationBehavior.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AnimationBehavior.jstatic_instance)))))

    
(unless (fboundp 'jm_reset_0) (defgeneric jm_reset_0 (this)))
(defmethod jm_reset_0 ((this AnimationBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



