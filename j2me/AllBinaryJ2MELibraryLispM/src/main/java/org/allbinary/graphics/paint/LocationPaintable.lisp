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

(defclass LocationPaintable (JObject)
  ())

(defvar LocationPaintable.jcell_instance :jnone)
(defun LocationPaintable.jstatic_instance ()
  (when (eq LocationPaintable.jcell_instance :jnone) (setf LocationPaintable.jcell_instance (LocationPaintable.jnew_0)))
  LocationPaintable.jcell_instance)
(defun (setf LocationPaintable.jstatic_instance) (value) (setf LocationPaintable.jcell_instance value))

(defun LocationPaintable.jnew_0 ()
  (let ((this (make-instance 'LocationPaintable)))
    this))

    
(defun LocationPaintable.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LocationPaintable.jstatic_instance)))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this LocationPaintable) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn nil)))



