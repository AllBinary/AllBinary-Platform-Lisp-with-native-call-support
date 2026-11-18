;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.form.item

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ABCustomItem (JObject)
  ())

(defvar ABCustomItem.jcell_NULL_CUSTOM_ITEM :jnone)
(defun ABCustomItem.jstatic_NULL_CUSTOM_ITEM ()
  (when (eq ABCustomItem.jcell_NULL_CUSTOM_ITEM :jnone) (setf ABCustomItem.jcell_NULL_CUSTOM_ITEM (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  ABCustomItem.jcell_NULL_CUSTOM_ITEM)
(defun (setf ABCustomItem.jstatic_NULL_CUSTOM_ITEM) (value) (setf ABCustomItem.jcell_NULL_CUSTOM_ITEM value))

    
(defun ABCustomItem.jm_getNullInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (ABCustomItem.jstatic_NULL_CUSTOM_ITEM) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (ABCustomItem.jstatic_NULL_CUSTOM_ITEM) (ABCustomItem.jnew_3 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLACK) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE)))))
        (return-from jreturn (ABCustomItem.jstatic_NULL_CUSTOM_ITEM)))))

    
(defun ABCustomItem.jnew_3 (_label _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _label _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'ABCustomItem)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_setOwner_1) (defgeneric jm_setOwner_1 (this p1)))
(defmethod jm_setOwner_1 ((this ABCustomItem) _owner)
  (declare (ignorable this _owner))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this ABCustomItem) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paintUnselected_3) (defgeneric jm_paintUnselected_3 (this p1 p2 p3)))
(defmethod jm_paintUnselected_3 ((this ABCustomItem) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isFocusable_0) (defgeneric jm_isFocusable_0 (this)))
(defmethod jm_isFocusable_0 ((this ABCustomItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_getLabel_0) (defgeneric jm_getLabel_0 (this)))
(defmethod jm_getLabel_0 ((this ABCustomItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_setLabel_1) (defgeneric jm_setLabel_1 (this p1)))
(defmethod jm_setLabel_1 ((this ABCustomItem) _label)
  (declare (ignorable this _label))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this ABCustomItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_setHeight_1) (defgeneric jm_setHeight_1 (this p1)))
(defmethod jm_setHeight_1 ((this ABCustomItem) _height)
  (declare (ignorable this _height))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getValue_0) (defgeneric jm_getValue_0 (this)))
(defmethod jm_getValue_0 ((this ABCustomItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0.0f0))))

    
(unless (fboundp 'jm_setValue_1) (defgeneric jm_setValue_1 (this p1)))
(defmethod jm_setValue_1 ((this ABCustomItem) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getMinimumWidth_0) (defgeneric jm_getMinimumWidth_0 (this)))
(defmethod jm_getMinimumWidth_0 ((this ABCustomItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_getMinimumHeight_0) (defgeneric jm_getMinimumHeight_0 (this)))
(defmethod jm_getMinimumHeight_0 ((this ABCustomItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_preMeasurement_1) (defgeneric jm_preMeasurement_1 (this p1)))
(defmethod jm_preMeasurement_1 ((this ABCustomItem) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))



