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
;;;; package org.allbinary.graphics.paint

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullPaintable (Paintable)
  ())

(defvar NullPaintable.jcell_SINGLETON :jnone)
(defun NullPaintable.jstatic_SINGLETON ()
  (when (eq NullPaintable.jcell_SINGLETON :jnone) (setf NullPaintable.jcell_SINGLETON (NullPaintable.jnew_0)))
  NullPaintable.jcell_SINGLETON)
(defun (setf NullPaintable.jstatic_SINGLETON) (value) (setf NullPaintable.jcell_SINGLETON value))

    
(defun NullPaintable.jnew_0 ()
  (let ((this (make-instance 'NullPaintable)))
  (let ()
    (block jreturn nil))
    this))

    
(defun NullPaintable.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullPaintable.jstatic_SINGLETON)))))



