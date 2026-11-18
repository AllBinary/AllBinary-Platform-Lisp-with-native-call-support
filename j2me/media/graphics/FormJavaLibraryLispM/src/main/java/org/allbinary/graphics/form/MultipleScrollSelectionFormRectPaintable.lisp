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

(defclass MultipleScrollSelectionFormRectPaintable (Paintable)
  ((f_multipleScrollSelectionForm :initform nil)))

    
(defun MultipleScrollSelectionFormRectPaintable.jnew_1 (_multipleScrollSelectionForm)
  (declare (ignorable _multipleScrollSelectionForm))
  (let ((this (make-instance 'MultipleScrollSelectionFormRectPaintable)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_multipleScrollSelectionForm) _multipleScrollSelectionForm)))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this MultipleScrollSelectionFormRectPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_fillRect_1 (slot-value this 'f_multipleScrollSelectionForm) _graphics))))



