;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.form.item

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ABTextItem (CustomCustomItem)
  ())

    
(defun ABTextItem.jnew_5 (_label _layout _altText _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _label _layout _altText _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'ABTextItem)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_keyPressed_1) (defgeneric jm_keyPressed_1 (this p1)))
(defmethod jm_keyPressed_1 ((this ABTextItem) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paintUnselected_3) (defgeneric jm_paintUnselected_3 (this p1 p2 p3)))
(defmethod jm_paintUnselected_3 ((this ABTextItem) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getLabelStringComponent_0) (defgeneric jm_getLabelStringComponent_0 (this)))
(defmethod jm_getLabelStringComponent_0 ((this ABTextItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (ABStringComponent.jstatic_NULL_STRING_COMPONENT)))))

    
(unless (fboundp 'jm_getMinimumWidth_0) (defgeneric jm_getMinimumWidth_0 (this)))
(defmethod jm_getMinimumWidth_0 ((this ABTextItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_getMinimumHeight_0) (defgeneric jm_getMinimumHeight_0 (this)))
(defmethod jm_getMinimumHeight_0 ((this ABTextItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_getLabel_0) (defgeneric jm_getLabel_0 (this)))
(defmethod jm_getLabel_0 ((this ABTextItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this ABTextItem) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (call-next-method this _graphics _x _y))))



