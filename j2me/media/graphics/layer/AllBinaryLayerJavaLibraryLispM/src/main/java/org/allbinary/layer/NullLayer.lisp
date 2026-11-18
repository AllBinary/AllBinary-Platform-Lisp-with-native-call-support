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
;;;; package org.allbinary.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullLayer (Layer)
  ())

(defvar NullLayer.jcell_instance :jnone)
(defun NullLayer.jstatic_instance ()
  (when (eq NullLayer.jcell_instance :jnone) (setf NullLayer.jcell_instance (NullLayer.jnew_0)))
  NullLayer.jcell_instance)
(defun (setf NullLayer.jstatic_instance) (value) (setf NullLayer.jcell_instance value))

    
(defun NullLayer.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullLayer.jstatic_instance)))))

    
(defun NullLayer.jnew_0 ()
  (let ((this (make-instance 'NullLayer)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this NullLayer) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))



