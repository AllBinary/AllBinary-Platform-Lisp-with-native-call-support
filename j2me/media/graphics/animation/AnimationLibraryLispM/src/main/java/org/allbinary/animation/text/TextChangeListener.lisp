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
;;;; package org.allbinary.animation.text

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TextChangeListener (JObject)
  ())

(defvar TextChangeListener.jcell_instance :jnone)
(defun TextChangeListener.jstatic_instance ()
  (when (eq TextChangeListener.jcell_instance :jnone) (setf TextChangeListener.jcell_instance (TextChangeListener.jnew_0)))
  TextChangeListener.jcell_instance)
(defun (setf TextChangeListener.jstatic_instance) (value) (setf TextChangeListener.jcell_instance value))

(defun TextChangeListener.jnew_0 ()
  (let ((this (make-instance 'TextChangeListener)))
    this))

    
(defun TextChangeListener.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TextChangeListener.jstatic_instance)))))

    
(unless (fboundp 'jm_onMeasure_0) (defgeneric jm_onMeasure_0 (this)))
(defmethod jm_onMeasure_0 ((this TextChangeListener))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



