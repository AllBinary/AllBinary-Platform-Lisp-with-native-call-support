;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PaintableForm (ABCustomForm)
  ((f_canvasStrings :initform nil)
   (f_rectangle :initform nil)
   (f_x :initform 0)
   (f_y :initform 0)
   (f_formType :initform nil)))

(defvar PaintableForm.jcell_NULL_PAINTABLE_FORM :jnone)
(defun PaintableForm.jstatic_NULL_PAINTABLE_FORM ()
  (when (eq PaintableForm.jcell_NULL_PAINTABLE_FORM :jnone) (setf PaintableForm.jcell_NULL_PAINTABLE_FORM (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  PaintableForm.jcell_NULL_PAINTABLE_FORM)
(defun (setf PaintableForm.jstatic_NULL_PAINTABLE_FORM) (value) (setf PaintableForm.jcell_NULL_PAINTABLE_FORM value))

    
(defun PaintableForm.jm_getNullPaintableForm_0 ()
  (let ()
    (block jreturn
        (if (eq (PaintableForm.jstatic_NULL_PAINTABLE_FORM) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (PaintableForm.jstatic_NULL_PAINTABLE_FORM) (PaintableForm.jnew_4 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (JR.newArray nil 0) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLACK) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE)))))
        (return-from jreturn (PaintableForm.jstatic_NULL_PAINTABLE_FORM)))))

    
(defun PaintableForm.jnew_4 (_title _items _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _title _items _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'PaintableForm)))
    (setf (slot-value this 'f_canvasStrings) (CanvasStrings.jm_getInstance_0))
    (setf (slot-value this 'f_rectangle) (RectangleFactory.jstatic_SINGLETON))
    
    
    (setf (slot-value this 'f_formType) (slot-value (FormTypeFactory.jm_getInstance_0) 'f_NULL_FORM_TYPE))
  (let ()
    (block jreturn
        nil
        (jm_setSelectedIndex_1 this 0)))
    this))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this PaintableForm) _rectangle _formType)
  (declare (ignorable this _rectangle _formType))
  (let (_point)
  (declare (ignorable _point))
    (block jreturn
        (setf (slot-value this 'f_rectangle) _rectangle)
        (setf _point (jm_getPoint_0 (slot-value this 'f_rectangle)))
        (setf (slot-value this 'f_x) (jm_getX_0 _point))
        (setf (slot-value this 'f_y) (jm_getY_0 _point))
        (setf (slot-value this 'f_formType) _formType))))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this PaintableForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getWidth_0 (slot-value this 'f_rectangle))))))



