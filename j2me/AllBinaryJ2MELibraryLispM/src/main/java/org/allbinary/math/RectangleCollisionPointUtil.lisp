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

(defclass RectangleCollisionPointUtil (JObject)
  ())

    
(defun RectangleCollisionPointUtil.jnew_0 ()
  (let ((this (make-instance 'RectangleCollisionPointUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(defun RectangleCollisionPointUtil.jm_allPointsInside_5 (_rectX1 _rectY1 _rectX2 _rectY2 _list)
  (declare (ignorable _rectX1 _rectY1 _rectX2 _rectY2 _list))
  (let (_rectangleCollisionUtil _point _index)
  (declare (ignorable _rectangleCollisionUtil _point _index))
    (block jreturn
        (setf _rectangleCollisionUtil (RectangleCollisionUtil.jm_getInstance_0))
        (setf _point nil)
        (progn
            (setf _index (jm_size_0 _list))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _point (aref (slot-value _list 'f_objectArray) _index))
            (if (not (jm_isInside_6 _rectangleCollisionUtil _rectX1 _rectY1 _rectX2 _rectY2 (jm_getX_0 _point) (jm_getY_0 _point)))
                (progn
                (return-from jreturn nil)))))))
        (return-from jreturn t))))

    
(defun RectangleCollisionPointUtil.jm_allPointsInsideCell_7 (_rectX1 _rectY1 _rectX2 _rectY2 _list _xCellSize _yCellSize)
  (declare (ignorable _rectX1 _rectY1 _rectX2 _rectY2 _list _xCellSize _yCellSize))
  (let (_rectangleCollisionUtil _point _index)
  (declare (ignorable _rectangleCollisionUtil _point _index))
    (block jreturn
        (setf _rectangleCollisionUtil (RectangleCollisionUtil.jm_getInstance_0))
        (setf _point nil)
        (progn
            (setf _index (jm_size_0 _list))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _point (aref (slot-value _list 'f_objectArray) _index))
            (if (not (jm_isInside_6 _rectangleCollisionUtil _rectX1 _rectY1 _rectX2 _rectY2 (JR.i32 (* (jm_getX_0 _point) _xCellSize)) (JR.i32 (* (jm_getY_0 _point) _yCellSize))))
                (progn
                (return-from jreturn nil)))))))
        (return-from jreturn t))))



