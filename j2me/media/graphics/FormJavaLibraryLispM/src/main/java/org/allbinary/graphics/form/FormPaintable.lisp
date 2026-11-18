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

(defclass FormPaintable (Paintable)
  ((f_form :initform nil)))

    
(defun FormPaintable.jnew_1 (_form)
  (declare (ignorable _form))
  (let ((this (make-instance 'FormPaintable)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_form) _form)))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this FormPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paint_1 (slot-value this 'f_form) _graphics))))

    
(unless (fboundp 'jm_getForm_0) (defgeneric jm_getForm_0 (this)))
(defmethod jm_getForm_0 ((this FormPaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_form)))))



