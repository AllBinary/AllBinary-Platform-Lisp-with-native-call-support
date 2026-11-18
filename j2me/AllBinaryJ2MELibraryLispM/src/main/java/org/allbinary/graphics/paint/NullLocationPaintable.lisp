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

(defclass NullLocationPaintable (LocationPaintable)
  ())

(defvar NullLocationPaintable.jcell_instanceC :jnone)
(defun NullLocationPaintable.jstatic_instanceC ()
  (when (eq NullLocationPaintable.jcell_instanceC :jnone) (setf NullLocationPaintable.jcell_instanceC (NullLocationPaintable.jnew_0)))
  NullLocationPaintable.jcell_instanceC)
(defun (setf NullLocationPaintable.jstatic_instanceC) (value) (setf NullLocationPaintable.jcell_instanceC value))

(defun NullLocationPaintable.jnew_0 ()
  (let ((this (make-instance 'NullLocationPaintable)))
    this))

    
(defun NullLocationPaintable.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullLocationPaintable.jstatic_instanceC)))))



