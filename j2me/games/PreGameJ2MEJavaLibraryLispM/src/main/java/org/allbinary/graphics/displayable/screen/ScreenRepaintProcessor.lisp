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

(defclass ScreenRepaintProcessor (Processor)
  ((f_displayable :initform nil)))

    
(defun ScreenRepaintProcessor.jnew_1 (_displayable)
  (declare (ignorable _displayable))
  (let ((this (make-instance 'ScreenRepaintProcessor)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_displayable) _displayable)))
    this))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this ScreenRepaintProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (ScreenRepaintUtil.jm_repaint_1 (slot-value this 'f_displayable)))))



