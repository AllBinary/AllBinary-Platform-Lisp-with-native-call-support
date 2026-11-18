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

(defclass NullWriter (Writer)
  ())

(defvar NullWriter.jcell_NULL_WRITER :jnone)
(defun NullWriter.jstatic_NULL_WRITER ()
  (when (eq NullWriter.jcell_NULL_WRITER :jnone) (setf NullWriter.jcell_NULL_WRITER (NullWriter.jnew_0)))
  NullWriter.jcell_NULL_WRITER)
(defun (setf NullWriter.jstatic_NULL_WRITER) (value) (setf NullWriter.jcell_NULL_WRITER value))

(defun NullWriter.jnew_0 ()
  (let ((this (make-instance 'NullWriter)))
    this))

    
(unless (fboundp 'jm_write_1) (defgeneric jm_write_1 (this p1)))
(defmethod jm_write_1 ((this NullWriter) (_c integer))
  (declare (ignorable this _c))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_write_3) (defgeneric jm_write_3 (this p1 p2 p3)))
(defmethod jm_write_3 ((this NullWriter) (_cbuf vector) (_off integer) (_len integer))
  (declare (ignorable this _cbuf _off _len))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_write_1) (defgeneric jm_write_1 (this p1)))
(defmethod jm_write_1 ((this NullWriter) (_str string))
  (declare (ignorable this _str))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_write_3) (defgeneric jm_write_3 (this p1 p2 p3)))
(defmethod jm_write_3 ((this NullWriter) (_str string) (_off integer) (_len integer))
  (declare (ignorable this _str _off _len))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_flush_0) (defgeneric jm_flush_0 (this)))
(defmethod jm_flush_0 ((this NullWriter))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this NullWriter))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



