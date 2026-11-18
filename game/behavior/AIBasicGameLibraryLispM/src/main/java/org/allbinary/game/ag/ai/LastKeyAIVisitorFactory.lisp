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

(defclass LastKeyAIVisitorFactory (JObject)
  ())

(defvar LastKeyAIVisitorFactory.jcell_instance :jnone)
(defun LastKeyAIVisitorFactory.jstatic_instance ()
  (when (eq LastKeyAIVisitorFactory.jcell_instance :jnone) (setf LastKeyAIVisitorFactory.jcell_instance (LastKeyAIVisitor.jnew_0)))
  LastKeyAIVisitorFactory.jcell_instance)
(defun (setf LastKeyAIVisitorFactory.jstatic_instance) (value) (setf LastKeyAIVisitorFactory.jcell_instance value))

(defun LastKeyAIVisitorFactory.jnew_0 ()
  (let ((this (make-instance 'LastKeyAIVisitorFactory)))
    this))

    
(defun LastKeyAIVisitorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LastKeyAIVisitorFactory.jstatic_instance)))))



