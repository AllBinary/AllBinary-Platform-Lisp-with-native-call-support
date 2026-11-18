;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.form.item

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ABCustomGaugeItem (ABCustomItem)
  ())

(defvar ABCustomGaugeItem.jcell_NULL_GAUGE_ITEM :jnone)
(defun ABCustomGaugeItem.jstatic_NULL_GAUGE_ITEM ()
  (when (eq ABCustomGaugeItem.jcell_NULL_GAUGE_ITEM :jnone) (setf ABCustomGaugeItem.jcell_NULL_GAUGE_ITEM (ABCustomGaugeItem.jnew_5 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) 1 0 (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLACK) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE))))
  ABCustomGaugeItem.jcell_NULL_GAUGE_ITEM)
(defun (setf ABCustomGaugeItem.jstatic_NULL_GAUGE_ITEM) (value) (setf ABCustomGaugeItem.jcell_NULL_GAUGE_ITEM value))

    
(defun ABCustomGaugeItem.jnew_5 (_label _maxValue _initialValue _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _label _maxValue _initialValue _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'ABCustomGaugeItem)))
  (let ()
    (block jreturn
        nil))
    this))



