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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullDemoPaintable (JObject)
  ())

(defvar NullDemoPaintable.jcell_NULL_DEMO_PAINTABLE :jnone)
(defun NullDemoPaintable.jstatic_NULL_DEMO_PAINTABLE ()
  (when (eq NullDemoPaintable.jcell_NULL_DEMO_PAINTABLE :jnone) (setf NullDemoPaintable.jcell_NULL_DEMO_PAINTABLE (NullDemoPaintable.jnew_0)))
  NullDemoPaintable.jcell_NULL_DEMO_PAINTABLE)
(defun (setf NullDemoPaintable.jstatic_NULL_DEMO_PAINTABLE) (value) (setf NullDemoPaintable.jcell_NULL_DEMO_PAINTABLE value))

(defun NullDemoPaintable.jnew_0 ()
  (let ((this (make-instance 'NullDemoPaintable)))
    this))

    
(unless (fboundp 'jm_showGamePaintable_0) (defgeneric jm_showGamePaintable_0 (this)))
(defmethod jm_showGamePaintable_0 ((this NullDemoPaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



