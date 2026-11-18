;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.form.item

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ABStringComponent (JObject)
  ())

(defvar ABStringComponent.jcell_NULL_STRING_COMPONENT :jnone)
(defun ABStringComponent.jstatic_NULL_STRING_COMPONENT ()
  (when (eq ABStringComponent.jcell_NULL_STRING_COMPONENT :jnone) (setf ABStringComponent.jcell_NULL_STRING_COMPONENT (ABStringComponent.jnew_2 (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLACK) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE))))
  ABStringComponent.jcell_NULL_STRING_COMPONENT)
(defun (setf ABStringComponent.jstatic_NULL_STRING_COMPONENT) (value) (setf ABStringComponent.jcell_NULL_STRING_COMPONENT value))

    
(unless (fboundp 'jm_getBackgroundBasicColor_0) (defgeneric jm_getBackgroundBasicColor_0 (this)))
(defmethod jm_getBackgroundBasicColor_0 ((this ABStringComponent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE)))))

    
(defun ABStringComponent.jnew_2 (_backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'ABStringComponent)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getForegroundBasicColor_0) (defgeneric jm_getForegroundBasicColor_0 (this)))
(defmethod jm_getForegroundBasicColor_0 ((this ABStringComponent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE)))))

    
(unless (fboundp 'jm_setForegroundBasicColor_1) (defgeneric jm_setForegroundBasicColor_1 (this p1)))
(defmethod jm_setForegroundBasicColor_1 ((this ABStringComponent) _foregroundBasicColor)
  (declare (ignorable this _foregroundBasicColor))
  (let ()
    (block jreturn nil)))



