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
;;;; package org.allbinary.game.ag.ai

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ThrustAIVisitorFactory (JObject)
  ())

(defvar ThrustAIVisitorFactory.jcell_instance :jnone)
(defun ThrustAIVisitorFactory.jstatic_instance ()
  (when (eq ThrustAIVisitorFactory.jcell_instance :jnone) (setf ThrustAIVisitorFactory.jcell_instance (ThrustAIVisitor.jnew_0)))
  ThrustAIVisitorFactory.jcell_instance)
(defun (setf ThrustAIVisitorFactory.jstatic_instance) (value) (setf ThrustAIVisitorFactory.jcell_instance value))

(defun ThrustAIVisitorFactory.jnew_0 ()
  (let ((this (make-instance 'ThrustAIVisitorFactory)))
    this))

    
(defun ThrustAIVisitorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ThrustAIVisitorFactory.jstatic_instance)))))



