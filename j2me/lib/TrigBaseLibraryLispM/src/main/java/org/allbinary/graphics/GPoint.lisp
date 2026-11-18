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

(defclass GPoint (JObject)
  ((f_x :initform 0)
   (f_y :initform 0)
   (f_z :initform 0)))

(defvar GPoint.jcell_POINT_LABEL :jnone)
(defun GPoint.jstatic_POINT_LABEL ()
  (when (eq GPoint.jcell_POINT_LABEL :jnone) (setf GPoint.jcell_POINT_LABEL "Point: "))
  GPoint.jcell_POINT_LABEL)
(defun (setf GPoint.jstatic_POINT_LABEL) (value) (setf GPoint.jcell_POINT_LABEL value))

    
(defun GPoint.jm_getInstance_1 (_point)
  (declare (ignorable _point))
  (let ()
    (block jreturn
        (return-from jreturn (GPoint.jnew_3 (jm_getX_0 _point) (jm_getY_0 _point) (jm_getZ_0 _point))))))

    
(defun GPoint.jnew_3 (_x _y _z)
  (declare (ignorable _x _y _z))
  (let ((this (make-instance 'GPoint)))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_x) _x)
        (setf (slot-value this 'f_y) _y)
        (setf (slot-value this 'f_z) _z)))
    this))

    
(unless (fboundp 'jm_getX_0) (defgeneric jm_getX_0 (this)))
(defmethod jm_getX_0 ((this GPoint))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_x)))))

    
(unless (fboundp 'jm_getY_0) (defgeneric jm_getY_0 (this)))
(defmethod jm_getY_0 ((this GPoint))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_y)))))

    
(unless (fboundp 'jm_getZ_0) (defgeneric jm_getZ_0 (this)))
(defmethod jm_getZ_0 ((this GPoint))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_z)))))

    
(unless (fboundp 'jm_getRawX_0) (defgeneric jm_getRawX_0 (this)))
(defmethod jm_getRawX_0 ((this GPoint))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_x)))))

    
(unless (fboundp 'jm_getRawY_0) (defgeneric jm_getRawY_0 (this)))
(defmethod jm_getRawY_0 ((this GPoint))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_y)))))

    
(unless (fboundp 'jm_getRawZ_0) (defgeneric jm_getRawZ_0 (this)))
(defmethod jm_getRawZ_0 ((this GPoint))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_z)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this GPoint))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (GPoint.jm_toStringStatic_3 (jm_getX_0 this) (jm_getY_0 this) (jm_getZ_0 this))))))

    
(defun GPoint.jm_toStringStatic_3 (_x _y _z)
  (declare (ignorable _x _y _z))
  (let (_stringBuffer _positionStrings)
  (declare (ignorable _stringBuffer _positionStrings))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _positionStrings (PositionStrings.jm_getInstance_0))
        (jm_append_1 _stringBuffer (GPoint.jstatic_POINT_LABEL))
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_X_LABEL))
        (jm_appendint_1 _stringBuffer _x)
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_Y_LABEL))
        (jm_appendint_1 _stringBuffer _y)
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_Z_LABEL))
        (jm_appendint_1 _stringBuffer _z)
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



