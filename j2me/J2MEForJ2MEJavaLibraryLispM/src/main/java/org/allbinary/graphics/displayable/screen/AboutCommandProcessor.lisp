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
;;;; package org.allbinary.graphics.displayable.screen

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AboutCommandProcessor (JObject)
  ())

(defvar AboutCommandProcessor.jcell_instance :jnone)
(defun AboutCommandProcessor.jstatic_instance ()
  (when (eq AboutCommandProcessor.jcell_instance :jnone) (setf AboutCommandProcessor.jcell_instance (AboutCommandProcessor.jnew_0)))
  AboutCommandProcessor.jcell_instance)
(defun (setf AboutCommandProcessor.jstatic_instance) (value) (setf AboutCommandProcessor.jcell_instance value))

(defun AboutCommandProcessor.jnew_0 ()
  (let ((this (make-instance 'AboutCommandProcessor)))
    this))

    
(defun AboutCommandProcessor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AboutCommandProcessor.jstatic_instance)))))

    
(unless (fboundp 'jm_process_3) (defgeneric jm_process_3 (this p1 p2 p3)))
(defmethod jm_process_3 ((this AboutCommandProcessor) _midletCommandListener _command _canvas)
  (declare (ignorable this _midletCommandListener _command _canvas))
  (let ()
    (block jreturn
        (jm_commandAction_2 _midletCommandListener _command _canvas))))



