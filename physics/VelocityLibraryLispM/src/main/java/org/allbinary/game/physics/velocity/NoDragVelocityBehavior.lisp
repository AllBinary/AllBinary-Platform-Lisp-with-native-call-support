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
;;;; package org.allbinary.game.physics.velocity

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NoDragVelocityBehavior (VelocityBehaviorBase)
  ())

(defvar NoDragVelocityBehavior.jcell_instance :jnone)
(defun NoDragVelocityBehavior.jstatic_instance ()
  (when (eq NoDragVelocityBehavior.jcell_instance :jnone) (setf NoDragVelocityBehavior.jcell_instance (NoDragVelocityBehavior.jnew_0)))
  NoDragVelocityBehavior.jcell_instance)
(defun (setf NoDragVelocityBehavior.jstatic_instance) (value) (setf NoDragVelocityBehavior.jcell_instance value))

(defun NoDragVelocityBehavior.jnew_0 ()
  (let ((this (make-instance 'NoDragVelocityBehavior)))
    this))



