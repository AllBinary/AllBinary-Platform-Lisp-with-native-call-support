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
;;;; package org.allbinary.graphics.displayable.screen

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ScreenRepaintProcessorFactory (JObject)
  ())

(defvar ScreenRepaintProcessorFactory.jcell_instance :jnone)
(defun ScreenRepaintProcessorFactory.jstatic_instance ()
  (when (eq ScreenRepaintProcessorFactory.jcell_instance :jnone) (setf ScreenRepaintProcessorFactory.jcell_instance (ScreenRepaintProcessorFactory.jnew_0)))
  ScreenRepaintProcessorFactory.jcell_instance)
(defun (setf ScreenRepaintProcessorFactory.jstatic_instance) (value) (setf ScreenRepaintProcessorFactory.jcell_instance value))

    
(defun ScreenRepaintProcessorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ScreenRepaintProcessorFactory.jstatic_instance)))))

    
(defun ScreenRepaintProcessorFactory.jnew_0 ()
  (let ((this (make-instance 'ScreenRepaintProcessorFactory)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_create_1) (defgeneric jm_create_1 (this p1)))
(defmethod jm_create_1 ((this ScreenRepaintProcessorFactory) _displayable)
  (declare (ignorable this _displayable))
  (let ()
    (block jreturn
        (if (not (J2MEUtil.jm_isJ2ME_0))
            (progn
            (return-from jreturn (ScreenRepaintProcessor.jnew_1 _displayable)))
            (progn
            (return-from jreturn (Processor.jm_getInstance_0)))))))



