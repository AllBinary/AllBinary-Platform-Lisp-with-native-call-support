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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass InputProcessorFactory (JObject)
  ((f_inputProcessor :initform nil)))

(defvar InputProcessorFactory.jcell_instance :jnone)
(defun InputProcessorFactory.jstatic_instance ()
  (when (eq InputProcessorFactory.jcell_instance :jnone) (setf InputProcessorFactory.jcell_instance (InputProcessorFactory.jnew_0)))
  InputProcessorFactory.jcell_instance)
(defun (setf InputProcessorFactory.jstatic_instance) (value) (setf InputProcessorFactory.jcell_instance value))

(defun InputProcessorFactory.jnew_0 ()
  (let ((this (make-instance 'InputProcessorFactory)))
    (setf (slot-value this 'f_inputProcessor) (InputProcessor.jnew_0))
    this))

    
(defun InputProcessorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (InputProcessorFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getInputProcessor_0) (defgeneric jm_getInputProcessor_0 (this)))
(defmethod jm_getInputProcessor_0 ((this InputProcessorFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_inputProcessor)))))



