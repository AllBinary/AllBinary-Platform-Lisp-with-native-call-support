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
;;;; package org.allbinary.graphics.pipeline

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicGraphicsPipeline (JObject)
  ((f_pointBasicArrayList :initform nil)
   (f_noDecimalTrigTable :initform nil)))

    
(defun BasicGraphicsPipeline.jnew_1 (_points)
  (declare (ignorable _points))
  (let ((this (make-instance 'BasicGraphicsPipeline)))
    
    (setf (slot-value this 'f_noDecimalTrigTable) (NoDecimalTrigTable.jm_getInstance_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_pointBasicArrayList) _points)))
    this))

    
(unless (fboundp 'jm_setInitMatrix_1) (defgeneric jm_setInitMatrix_1 (this p1)))
(defmethod jm_setInitMatrix_1 ((this BasicGraphicsPipeline) _points)
  (declare (ignorable this _points))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_pointBasicArrayList) _points))))

    
(unless (fboundp 'jm_createMatrix_0) (defgeneric jm_createMatrix_0 (this)))
(defmethod jm_createMatrix_0 ((this BasicGraphicsPipeline))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_translate_2) (defgeneric jm_translate_2 (this p1 p2)))
(defmethod jm_translate_2 ((this BasicGraphicsPipeline) _x _y)
  (declare (ignorable this _x _y))
  (let (_newBasicArrayList _size _pointFactory _secondPoint _index)
  (declare (ignorable _newBasicArrayList _size _pointFactory _secondPoint _index))
    (block jreturn
        (setf _newBasicArrayList (BasicArrayListD.jnew_0))
        (setf _size (jm_size_0 (slot-value this 'f_pointBasicArrayList)))
        (setf _pointFactory (PointFactory.jm_getInstance_0))
        (setf _secondPoint nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _secondPoint (aref (slot-value (slot-value this 'f_pointBasicArrayList) 'f_objectArray) _index))
            (if (not (eq (jm_getX_0 _secondPoint) 1000))
                (progn
                (jm_add_1 _newBasicArrayList (jm_createXY_2 _pointFactory (JR.i32 (+ (jm_getX_0 _secondPoint) _x)) (JR.i32 (+ (jm_getY_0 _secondPoint) _y)))))
                (progn
                (jm_add_1 _newBasicArrayList _secondPoint))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf (slot-value this 'f_pointBasicArrayList) _newBasicArrayList))))

    
(unless (fboundp 'jm_rotateToAngle_1) (defgeneric jm_rotateToAngle_1 (this p1)))
(defmethod jm_rotateToAngle_1 ((this BasicGraphicsPipeline) _angle)
  (declare (ignorable this _angle))
  (let ()
    (block jreturn
        (jm_rotate_1 this (jm_getValue_0 _angle)))))

    
(unless (fboundp 'jm_rotate_1) (defgeneric jm_rotate_1 (this p1)))
(defmethod jm_rotate_1 ((this BasicGraphicsPipeline) _angle)
  (declare (ignorable this _angle))
  (let (_newBasicArrayList _secondPoint _y _secondX _secondY _point _pointFactory _size _sin _cos _index)
  (declare (ignorable _newBasicArrayList _secondPoint _y _secondX _secondY _point _pointFactory _size _sin _cos _index))
    (block jreturn
        (setf _newBasicArrayList (BasicArrayListD.jnew_0))
        (setf _secondPoint nil)
        (setf _y 0)
        (setf _secondX 0)
        (setf _secondY 0)
        (setf _point nil)
        (setf _pointFactory (PointFactory.jm_getInstance_0))
        (setf _size (jm_size_0 (slot-value this 'f_pointBasicArrayList)))
        (setf _sin 0)
        (setf _cos 0)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _secondPoint (aref (slot-value (slot-value this 'f_pointBasicArrayList) 'f_objectArray) _index))
            (if (not (eq (jm_getX_0 _secondPoint) 1000))
                (progn
                (setf _sin (jm_sin_1 (slot-value this 'f_noDecimalTrigTable) _angle))
                (setf _cos (jm_cos_1 (slot-value this 'f_noDecimalTrigTable) _angle))
                (setf _y (JR.i64 (* (jm_getY_0 _secondPoint) _sin)))
                (setf _secondX (JR.i64 (- (JR.i64 (* (jm_getX_0 _secondPoint) _cos)) _y)))
                (setf _secondY (JR.i32 (+ (JR.i64 (* (jm_getX_0 _secondPoint) _sin)) (JR.i64 (* (jm_getY_0 _secondPoint) _cos)))))
                (setf _point (jm_createXY_2 _pointFactory (JR.idiv (JR.i32 _secondX) 10000) (JR.idiv (JR.i32 _secondY) 10000)))
                (jm_add_1 _newBasicArrayList _point))
                (progn
                (jm_add_1 _newBasicArrayList _secondPoint))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf (slot-value this 'f_pointBasicArrayList) _newBasicArrayList))))

    
(unless (fboundp 'jm_mirror_1) (defgeneric jm_mirror_1 (this p1)))
(defmethod jm_mirror_1 ((this BasicGraphicsPipeline) _width)
  (declare (ignorable this _width))
  (let (_pointFactory _halfWidth _newBasicArrayList _secondPoint _newX _point _size _index)
  (declare (ignorable _pointFactory _halfWidth _newBasicArrayList _secondPoint _newX _point _size _index))
    (block jreturn
        (setf _pointFactory (PointFactory.jm_getInstance_0))
        (setf _halfWidth (ash _width (- (logand 1 31))))
        (setf _newBasicArrayList (BasicArrayListD.jnew_0))
        (setf _secondPoint nil)
        (setf _newX 0)
        (setf _point nil)
        (setf _size (jm_size_0 (slot-value this 'f_pointBasicArrayList)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _secondPoint (aref (slot-value (slot-value this 'f_pointBasicArrayList) 'f_objectArray) _index))
            (if (not (eq (jm_getX_0 _secondPoint) 1000))
                (progn
                (setf _newX 0)
                (if (> (jm_getX_0 _secondPoint) _halfWidth)
                    (progn
                    (setf _newX (JR.i32 (- _halfWidth (JR.i32 (- (jm_getX_0 _secondPoint) _halfWidth))))))
                    (progn
                    (setf _newX (JR.i32 (+ _halfWidth (JR.i32 (- _halfWidth (jm_getX_0 _secondPoint))))))))
                (setf _point (jm_createXY_2 _pointFactory _newX (jm_getY_0 _secondPoint)))
                (jm_add_1 _newBasicArrayList _point))
                (progn
                (jm_add_1 _newBasicArrayList _secondPoint))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf (slot-value this 'f_pointBasicArrayList) _newBasicArrayList))))

    
(unless (fboundp 'jm_getMatrix_0) (defgeneric jm_getMatrix_0 (this)))
(defmethod jm_getMatrix_0 ((this BasicGraphicsPipeline))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_pointBasicArrayList)))))



