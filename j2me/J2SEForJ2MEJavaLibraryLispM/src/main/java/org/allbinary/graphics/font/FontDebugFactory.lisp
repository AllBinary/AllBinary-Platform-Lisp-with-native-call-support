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
;;;; package org.allbinary.graphics.font

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FontDebugFactory (JObject)
  ())

(defvar FontDebugFactory.jcell_instance :jnone)
(defun FontDebugFactory.jstatic_instance ()
  (when (eq FontDebugFactory.jcell_instance :jnone) (setf FontDebugFactory.jcell_instance (FontDebugFactory.jnew_0)))
  FontDebugFactory.jcell_instance)
(defun (setf FontDebugFactory.jstatic_instance) (value) (setf FontDebugFactory.jcell_instance value))

(defun FontDebugFactory.jnew_0 ()
  (let ((this (make-instance 'FontDebugFactory)))
    this))

    
(defun FontDebugFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FontDebugFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_setFont_2) (defgeneric jm_setFont_2 (this p1 p2)))
(defmethod jm_setFont_2 ((this FontDebugFactory) _font _graphics)
  (declare (ignorable this _font _graphics))
  (let ()
    (block jreturn
        (jm_setFont_1 _graphics _font))))



