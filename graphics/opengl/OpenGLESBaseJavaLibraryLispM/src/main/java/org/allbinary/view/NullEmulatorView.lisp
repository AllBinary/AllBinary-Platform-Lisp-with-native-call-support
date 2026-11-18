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
;;;; package org.allbinary.view

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullEmulatorView (JObject)
  ())

(defvar NullEmulatorView.jcell_NULL_EMULATOR_VIEW :jnone)
(defun NullEmulatorView.jstatic_NULL_EMULATOR_VIEW ()
  (when (eq NullEmulatorView.jcell_NULL_EMULATOR_VIEW :jnone) (setf NullEmulatorView.jcell_NULL_EMULATOR_VIEW (NullEmulatorView.jnew_0)))
  NullEmulatorView.jcell_NULL_EMULATOR_VIEW)
(defun (setf NullEmulatorView.jstatic_NULL_EMULATOR_VIEW) (value) (setf NullEmulatorView.jcell_NULL_EMULATOR_VIEW value))

(defun NullEmulatorView.jnew_0 ()
  (let ((this (make-instance 'NullEmulatorView)))
    this))

    
(unless (fboundp 'jm_setMidlet_1) (defgeneric jm_setMidlet_1 (this p1)))
(defmethod jm_setMidlet_1 ((this NullEmulatorView) _midlet)
  (declare (ignorable this _midlet))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onEmulatorInitComplete_1) (defgeneric jm_onEmulatorInitComplete_1 (this p1)))
(defmethod jm_onEmulatorInitComplete_1 ((this NullEmulatorView) _midletActivity)
  (declare (ignorable this _midletActivity))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onSetDisplayable_1) (defgeneric jm_onSetDisplayable_1 (this p1)))
(defmethod jm_onSetDisplayable_1 ((this NullEmulatorView) _displayable)
  (declare (ignorable this _displayable))
  (let ()
    (block jreturn nil)))



