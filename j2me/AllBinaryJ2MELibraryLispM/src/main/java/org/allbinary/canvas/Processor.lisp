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
;;;; package org.allbinary.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Processor (JObject)
  ())

(defvar Processor.jcell_SINGLETON :jnone)
(defun Processor.jstatic_SINGLETON ()
  (when (eq Processor.jcell_SINGLETON :jnone) (setf Processor.jcell_SINGLETON (Processor.jnew_0)))
  Processor.jcell_SINGLETON)
(defun (setf Processor.jstatic_SINGLETON) (value) (setf Processor.jcell_SINGLETON value))

(defun Processor.jnew_0 ()
  (let ((this (make-instance 'Processor)))
    this))

    
(defun Processor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (Processor.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this Processor))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processt_1) (defgeneric jm_processt_1 (this p1)))
(defmethod jm_processt_1 ((this Processor) _timeDelta)
  (declare (ignorable this _timeDelta))
  (let ()
    (block jreturn nil)))



