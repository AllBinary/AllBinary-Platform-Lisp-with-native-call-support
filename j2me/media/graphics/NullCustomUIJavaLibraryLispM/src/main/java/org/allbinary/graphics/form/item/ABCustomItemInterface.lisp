;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.form.item

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ABCustomItemInterface (JObject)
  ())

(defun ABCustomItemInterface.jnew_0 ()
  (let ((this (make-instance 'ABCustomItemInterface)))
    this))

    
(unless (fboundp 'jm_getMinimumWidth_0) (defgeneric jm_getMinimumWidth_0 (this)))
(defmethod jm_getMinimumWidth_0 ((this ABCustomItemInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getMinimumWidth")))

    
(unless (fboundp 'jm_getMinimumHeight_0) (defgeneric jm_getMinimumHeight_0 (this)))
(defmethod jm_getMinimumHeight_0 ((this ABCustomItemInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getMinimumHeight")))

    
(unless (fboundp 'jm_getLabel_0) (defgeneric jm_getLabel_0 (this)))
(defmethod jm_getLabel_0 ((this ABCustomItemInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getLabel")))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this ABCustomItemInterface) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (error (JR.newException "AbstractMethodError" "paintXY")))

    
(unless (fboundp 'jm_paintUnselected_3) (defgeneric jm_paintUnselected_3 (this p1 p2 p3)))
(defmethod jm_paintUnselected_3 ((this ABCustomItemInterface) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (error (JR.newException "AbstractMethodError" "paintUnselected")))



