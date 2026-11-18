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

(defclass NullReader (Reader)
  ())

(defvar NullReader.jcell_NULL_READER :jnone)
(defun NullReader.jstatic_NULL_READER ()
  (when (eq NullReader.jcell_NULL_READER :jnone) (setf NullReader.jcell_NULL_READER (NullReader.jnew_0)))
  NullReader.jcell_NULL_READER)
(defun (setf NullReader.jstatic_NULL_READER) (value) (setf NullReader.jcell_NULL_READER value))

(defun NullReader.jnew_0 ()
  (let ((this (make-instance 'NullReader)))
    this))

    
(unless (fboundp 'jm_read_0) (defgeneric jm_read_0 (this)))
(defmethod jm_read_0 ((this NullReader))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_read_3) (defgeneric jm_read_3 (this p1 p2 p3)))
(defmethod jm_read_3 ((this NullReader) _cbuf _off _len)
  (declare (ignorable this _cbuf _off _len))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_ready_0) (defgeneric jm_ready_0 (this)))
(defmethod jm_ready_0 ((this NullReader))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_skip_1) (defgeneric jm_skip_1 (this p1)))
(defmethod jm_skip_1 ((this NullReader) _n)
  (declare (ignorable this _n))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this NullReader))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



