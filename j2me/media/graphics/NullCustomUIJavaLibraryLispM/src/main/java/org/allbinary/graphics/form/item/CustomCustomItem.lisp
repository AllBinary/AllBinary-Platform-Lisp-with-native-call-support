;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.form.item

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CustomCustomItem (ABCustomItem)
  ((f_updateMyFontProcessor :initform nil)
   (f_myFontProcessor :initform nil)))

    
(defun CustomCustomItem.jnew_3 (_label _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _label _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'CustomCustomItem)))
    (setf (slot-value this 'f_updateMyFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this CustomCustomItem) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))



