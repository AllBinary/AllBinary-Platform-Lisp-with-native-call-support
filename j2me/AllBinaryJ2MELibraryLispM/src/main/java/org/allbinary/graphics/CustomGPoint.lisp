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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CustomGPoint (GPoint)
  ((f_cx :initform 0)
   (f_cy :initform 0)
   (f_cz :initform 0)))

(defvar CustomGPoint.jcell_NULL_CUSTOM_POINT :jnone)
(defun CustomGPoint.jstatic_NULL_CUSTOM_POINT ()
  (when (eq CustomGPoint.jcell_NULL_CUSTOM_POINT :jnone) (setf CustomGPoint.jcell_NULL_CUSTOM_POINT (CustomGPoint.jnew_3 0 0 0)))
  CustomGPoint.jcell_NULL_CUSTOM_POINT)
(defun (setf CustomGPoint.jstatic_NULL_CUSTOM_POINT) (value) (setf CustomGPoint.jcell_NULL_CUSTOM_POINT value))

    
(defun CustomGPoint.jm_getInstance_1 (_point)
  (declare (ignorable _point))
  (let ()
    (block jreturn
        (return-from jreturn (CustomGPoint.jnew_3 (jm_getX_0 _point) (jm_getY_0 _point) (jm_getZ_0 _point))))))

    
(defun CustomGPoint.jm_getInstance3_2 (_x _y)
  (declare (ignorable _x _y))
  (let ()
    (block jreturn
        (return-from jreturn (CustomGPoint.jnew_3 _x _y 3)))))

    
(defun CustomGPoint.jnew_3 (_x _y _z)
  (declare (ignorable _x _y _z))
  (let ((this (make-instance 'CustomGPoint)))
    
    
    
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_setX_1) (defgeneric jm_setX_1 (this p1)))
(defmethod jm_setX_1 ((this CustomGPoint) _x)
  (declare (ignorable this _x))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_cx) _x))))

    
(unless (fboundp 'jm_getX_0) (defgeneric jm_getX_0 (this)))
(defmethod jm_getX_0 ((this CustomGPoint))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_cx)))))

    
(unless (fboundp 'jm_setY_1) (defgeneric jm_setY_1 (this p1)))
(defmethod jm_setY_1 ((this CustomGPoint) _y)
  (declare (ignorable this _y))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_cy) _y))))

    
(unless (fboundp 'jm_getY_0) (defgeneric jm_getY_0 (this)))
(defmethod jm_getY_0 ((this CustomGPoint))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_cy)))))

    
(unless (fboundp 'jm_setZ_1) (defgeneric jm_setZ_1 (this p1)))
(defmethod jm_setZ_1 ((this CustomGPoint) _z)
  (declare (ignorable this _z))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_cz) _z))))

    
(unless (fboundp 'jm_getZ_0) (defgeneric jm_getZ_0 (this)))
(defmethod jm_getZ_0 ((this CustomGPoint))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_cz)))))



