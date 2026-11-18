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
;;;; package org.allbinary.logic.io

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullOutputStream (OutputStream)
  ())

(defvar NullOutputStream.jcell_NULL_OUTPUT_STREAM :jnone)
(defun NullOutputStream.jstatic_NULL_OUTPUT_STREAM ()
  (when (eq NullOutputStream.jcell_NULL_OUTPUT_STREAM :jnone) (setf NullOutputStream.jcell_NULL_OUTPUT_STREAM (NullOutputStream.jnew_0)))
  NullOutputStream.jcell_NULL_OUTPUT_STREAM)
(defun (setf NullOutputStream.jstatic_NULL_OUTPUT_STREAM) (value) (setf NullOutputStream.jcell_NULL_OUTPUT_STREAM value))

(defun NullOutputStream.jnew_0 ()
  (let ((this (make-instance 'NullOutputStream)))
    this))

    
(unless (fboundp 'jm_write_1) (defgeneric jm_write_1 (this p1)))
(defmethod jm_write_1 ((this NullOutputStream) _b)
  (declare (ignorable this _b))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_write_3) (defgeneric jm_write_3 (this p1 p2 p3)))
(defmethod jm_write_3 ((this NullOutputStream) _b _off _len)
  (declare (ignorable this _b _off _len))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this NullOutputStream))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



