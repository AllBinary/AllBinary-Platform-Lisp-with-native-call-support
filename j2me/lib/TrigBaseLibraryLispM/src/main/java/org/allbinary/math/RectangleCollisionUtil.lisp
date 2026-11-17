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
;;;; package org.allbinary.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RectangleCollisionUtil (JObject)
  ())

(defvar RectangleCollisionUtil.jcell_instance :jnone)
(defun RectangleCollisionUtil.jstatic_instance ()
  (when (eq RectangleCollisionUtil.jcell_instance :jnone) (setf RectangleCollisionUtil.jcell_instance (RectangleCollisionUtil.jnew_0)))
  RectangleCollisionUtil.jcell_instance)

    
(defun RectangleCollisionUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (RectangleCollisionUtil.jstatic_instance)))))

    
(defun RectangleCollisionUtil.jnew_0 ()
  (let ((this (make-instance 'RectangleCollisionUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_isCollision_8) (defgeneric jm_isCollision_8 (this p1 p2 p3 p4 p5 p6 p7 p8)))
(defmethod jm_isCollision_8 ((this RectangleCollisionUtil) _rectX1 _rectY1 _rectX2 _rectY2 _rect2X1 _rect2Y1 _rect2X2 _rect2Y2)
  (declare (ignorable this _rectX1 _rectY1 _rectX2 _rectY2 _rect2X1 _rect2Y1 _rect2X2 _rect2Y2))
  (let ()
    (block jreturn
        (if (or (or (or (>= _rect2X1 _rectX2) (>= _rect2Y1 _rectY2)) (<= _rect2X2 _rectX1)) (<= _rect2Y2 _rectY1))
            (progn
            (return-from jreturn nil))
            (progn
            (return-from jreturn t))))))

    
(unless (fboundp 'jm_isInside_6) (defgeneric jm_isInside_6 (this p1 p2 p3 p4 p5 p6)))
(defmethod jm_isInside_6 ((this RectangleCollisionUtil) _rectX1 _rectY1 _rectX2 _rectY2 _x _y)
  (declare (ignorable this _rectX1 _rectY1 _rectX2 _rectY2 _x _y))
  (let ()
    (block jreturn
        (if (or (or (or (>= _x _rectX2) (>= _y _rectY2)) (<= _x _rectX1)) (<= _y _rectY1))
            (progn
            (return-from jreturn nil))
            (progn
            (return-from jreturn t))))))



