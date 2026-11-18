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
;;;; package org.allbinary.android.view

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinaryRenderer (JObject)
  ())

(defvar AllBinaryRenderer.jcell_instance :jnone)
(defun AllBinaryRenderer.jstatic_instance ()
  (when (eq AllBinaryRenderer.jcell_instance :jnone) (setf AllBinaryRenderer.jcell_instance (AllBinaryRenderer.jnew_0)))
  AllBinaryRenderer.jcell_instance)
(defun (setf AllBinaryRenderer.jstatic_instance) (value) (setf AllBinaryRenderer.jcell_instance value))

(defun AllBinaryRenderer.jnew_0 ()
  (let ((this (make-instance 'AllBinaryRenderer)))
    this))

    
(defun AllBinaryRenderer.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AllBinaryRenderer.jstatic_instance)))))

    
(unless (fboundp 'jm_setRunnable_1) (defgeneric jm_setRunnable_1 (this p1)))
(defmethod jm_setRunnable_1 ((this AllBinaryRenderer) _runnable)
  (declare (ignorable this _runnable))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_clearRunnable_0) (defgeneric jm_clearRunnable_0 (this)))
(defmethod jm_clearRunnable_0 ((this AllBinaryRenderer))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



