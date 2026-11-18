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
;;;; package org.allbinary.midlet

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MidletExitProcessor (Processor)
  ((f_midlet :initform nil)))

    
(defun MidletExitProcessor.jnew_1 (_midlet)
  (declare (ignorable _midlet))
  (let ((this (make-instance 'MidletExitProcessor)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_midlet) _midlet)))
    this))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this MidletExitProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (System.jm_exit_1 0))))



