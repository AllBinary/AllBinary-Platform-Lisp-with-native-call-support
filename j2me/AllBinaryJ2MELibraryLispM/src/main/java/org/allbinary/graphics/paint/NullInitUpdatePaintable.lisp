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

(defclass NullInitUpdatePaintable (InitUpdatePaintable)
  ())

(defvar NullInitUpdatePaintable.jcell_SINGLETON :jnone)
(defun NullInitUpdatePaintable.jstatic_SINGLETON ()
  (when (eq NullInitUpdatePaintable.jcell_SINGLETON :jnone) (setf NullInitUpdatePaintable.jcell_SINGLETON (NullInitUpdatePaintable.jnew_0)))
  NullInitUpdatePaintable.jcell_SINGLETON)
(defun (setf NullInitUpdatePaintable.jstatic_SINGLETON) (value) (setf NullInitUpdatePaintable.jcell_SINGLETON value))

    
(defun NullInitUpdatePaintable.jnew_0 ()
  (let ((this (make-instance 'NullInitUpdatePaintable)))
  (let ()
    (block jreturn nil))
    this))

    
(defun NullInitUpdatePaintable.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullInitUpdatePaintable.jstatic_SINGLETON)))))



