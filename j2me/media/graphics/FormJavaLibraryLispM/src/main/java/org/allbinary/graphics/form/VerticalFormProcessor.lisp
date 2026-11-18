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
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass VerticalFormProcessor (Processor)
  ((f_scrollCurrentSelectionForm :initform nil)))

    
(defun VerticalFormProcessor.jnew_1 (_scrollCurrentSelectionForm)
  (declare (ignorable _scrollCurrentSelectionForm))
  (let ((this (make-instance 'VerticalFormProcessor)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_scrollCurrentSelectionForm) _scrollCurrentSelectionForm)))
    this))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this VerticalFormProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_processVerticalForm_0 (slot-value this 'f_scrollCurrentSelectionForm))
        (setf (slot-value (slot-value this 'f_scrollCurrentSelectionForm) 'f_processor) (Processor.jm_getInstance_0)))))



