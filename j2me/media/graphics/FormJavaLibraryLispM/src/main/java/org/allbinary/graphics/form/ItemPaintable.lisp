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
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ItemPaintable (JObject)
  ())

(defun ItemPaintable.jnew_0 ()
  (let ((this (make-instance 'ItemPaintable)))
    this))

    
(unless (fboundp 'jm_paint_4) (defgeneric jm_paint_4 (this p1 p2 p3 p4)))
(defmethod jm_paint_4 ((this ItemPaintable) _graphics _currentIndex _x _y)
  (declare (ignorable this _graphics _currentIndex _x _y))
  (let ()
    (block jreturn nil)))



