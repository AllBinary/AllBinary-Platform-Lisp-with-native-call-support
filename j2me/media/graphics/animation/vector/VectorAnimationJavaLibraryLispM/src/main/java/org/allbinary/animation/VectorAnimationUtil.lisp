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
;;;; package org.allbinary.animation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass VectorAnimationUtil (JObject)
  ())

(defvar VectorAnimationUtil.jcell_instance :jnone)
(defun VectorAnimationUtil.jstatic_instance ()
  (when (eq VectorAnimationUtil.jcell_instance :jnone) (setf VectorAnimationUtil.jcell_instance (VectorAnimationUtil.jnew_0)))
  VectorAnimationUtil.jcell_instance)
(defun (setf VectorAnimationUtil.jstatic_instance) (value) (setf VectorAnimationUtil.jcell_instance value))

    
(defun VectorAnimationUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (VectorAnimationUtil.jstatic_instance)))))

    
(defun VectorAnimationUtil.jnew_0 ()
  (let ((this (make-instance 'VectorAnimationUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2) (defgeneric jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2 (this p1 p2)))
(defmethod jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2 ((this VectorAnimationUtil) _vector _pointsPerFrame)
  (declare (ignorable this _vector _pointsPerFrame))
  (let (_size _points _nextBasicArrayList _framePoints _pointIndex _index)
  (declare (ignorable _size _points _nextBasicArrayList _framePoints _pointIndex _index))
    (block jreturn
        (setf _size (jm_size_0 _vector))
        (setf _points (JR.newArray 0 _size _pointsPerFrame 2))
        (setf _nextBasicArrayList nil)
        (setf _framePoints nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _nextBasicArrayList (aref (slot-value _vector 'f_objectArray) _index))
            (setf _framePoints (jm_toFrameArrayFromPointBasicArrayList_1 this _nextBasicArrayList))
            (progn
                (setf _pointIndex 0)
                (block jbreak (loop while (< _pointIndex (length _framePoints)) do
                    (block jcontinue
                (setf (aref (aref (aref _points _index) _pointIndex) 0) (aref (aref _framePoints _pointIndex) 0))
                (setf (aref (aref (aref _points _index) _pointIndex) 1) (aref (aref _framePoints _pointIndex) 1)))
                    (setf _pointIndex (JR.i32 (+ _pointIndex 1)))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _points))))

    
(unless (fboundp 'jm_toAnimationArrayFromListOfPointList_1) (defgeneric jm_toAnimationArrayFromListOfPointList_1 (this p1)))
(defmethod jm_toAnimationArrayFromListOfPointList_1 ((this VectorAnimationUtil) _vector)
  (declare (ignorable this _vector))
  (let (_size _points _nextBasicArrayList _framePoints _pointIndex _index)
  (declare (ignorable _size _points _nextBasicArrayList _framePoints _pointIndex _index))
    (block jreturn
        (setf _size (jm_size_0 _vector))
        (setf _points (JR.newArray 0 _size 0 0))
        (setf _nextBasicArrayList nil)
        (setf _framePoints nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _nextBasicArrayList (aref (slot-value _vector 'f_objectArray) _index))
            (setf _framePoints (jm_toFrameArrayFromPointBasicArrayList_1 this _nextBasicArrayList))
            (setf (aref _points _index) (JR.newArray 0 (length _framePoints) 2))
            (progn
                (setf _pointIndex 0)
                (block jbreak (loop while (< _pointIndex (length _framePoints)) do
                    (block jcontinue
                (setf (aref (aref (aref _points _index) _pointIndex) 0) (aref (aref _framePoints _pointIndex) 0))
                (setf (aref (aref (aref _points _index) _pointIndex) 1) (aref (aref _framePoints _pointIndex) 1)))
                    (setf _pointIndex (JR.i32 (+ _pointIndex 1)))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _points))))

    
(unless (fboundp 'jm_toFrameArrayFromPointBasicArrayList_1) (defgeneric jm_toFrameArrayFromPointBasicArrayList_1 (this p1)))
(defmethod jm_toFrameArrayFromPointBasicArrayList_1 ((this VectorAnimationUtil) _list)
  (declare (ignorable this _list))
  (let (_points _size _nextPoint _index)
  (declare (ignorable _points _size _nextPoint _index))
    (block jreturn
        (setf _points (JR.newArray 0 (jm_size_0 _list) 2))
        (setf _size (jm_size_0 _list))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _nextPoint (aref (slot-value _list 'f_objectArray) _index))
            (setf (aref (aref _points _index) 0) (jm_getX_0 _nextPoint))
            (setf (aref (aref _points _index) 1) (jm_getY_0 _nextPoint)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _points))))



