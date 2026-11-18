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

(defclass DisplayPointScalar (JObject)
  ())

(defvar DisplayPointScalar.jcell_instance :jnone)
(defun DisplayPointScalar.jstatic_instance ()
  (when (eq DisplayPointScalar.jcell_instance :jnone) (setf DisplayPointScalar.jcell_instance (DisplayPointScalar.jnew_0)))
  DisplayPointScalar.jcell_instance)
(defun (setf DisplayPointScalar.jstatic_instance) (value) (setf DisplayPointScalar.jcell_instance value))

(defun DisplayPointScalar.jnew_0 ()
  (let ((this (make-instance 'DisplayPointScalar)))
    this))

    
(defun DisplayPointScalar.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DisplayPointScalar.jstatic_instance)))))

    
(unless (fboundp 'jm_processX_1) (defgeneric jm_processX_1 (this p1)))
(defmethod jm_processX_1 ((this DisplayPointScalar) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (return-from jreturn _value))))

    
(unless (fboundp 'jm_processY_1) (defgeneric jm_processY_1 (this p1)))
(defmethod jm_processY_1 ((this DisplayPointScalar) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (return-from jreturn _value))))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this DisplayPointScalar) _point)
  (declare (ignorable this _point))
  (let ()
    (block jreturn
        (return-from jreturn _point))))



