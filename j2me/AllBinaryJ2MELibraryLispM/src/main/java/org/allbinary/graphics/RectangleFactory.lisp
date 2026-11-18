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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RectangleFactory (JObject)
  ())

(defvar RectangleFactory.jcell_SINGLETON :jnone)
(defun RectangleFactory.jstatic_SINGLETON ()
  (when (eq RectangleFactory.jcell_SINGLETON :jnone) (setf RectangleFactory.jcell_SINGLETON (Rectangle.jnew_3 (slot-value (PointFactory.jm_getInstance_0) 'f_ZERO_ZERO) 0 0)))
  RectangleFactory.jcell_SINGLETON)
(defun (setf RectangleFactory.jstatic_SINGLETON) (value) (setf RectangleFactory.jcell_SINGLETON value))

(defvar RectangleFactory.jcell_ARRAY_OF_ARRAYS :jnone)
(defun RectangleFactory.jstatic_ARRAY_OF_ARRAYS ()
  (when (eq RectangleFactory.jcell_ARRAY_OF_ARRAYS :jnone) (setf RectangleFactory.jcell_ARRAY_OF_ARRAYS (JR.newArray nil 0 0)))
  RectangleFactory.jcell_ARRAY_OF_ARRAYS)
(defun (setf RectangleFactory.jstatic_ARRAY_OF_ARRAYS) (value) (setf RectangleFactory.jcell_ARRAY_OF_ARRAYS value))

(defun RectangleFactory.jnew_0 ()
  (let ((this (make-instance 'RectangleFactory)))
    this))



