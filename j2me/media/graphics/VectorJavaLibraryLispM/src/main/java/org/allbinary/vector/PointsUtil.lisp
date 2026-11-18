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
;;;; package org.allbinary.vector

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PointsUtil (JObject)
  ())

(defvar PointsUtil.jcell_instance :jnone)
(defun PointsUtil.jstatic_instance ()
  (when (eq PointsUtil.jcell_instance :jnone) (setf PointsUtil.jcell_instance (PointsUtil.jnew_0)))
  PointsUtil.jcell_instance)
(defun (setf PointsUtil.jstatic_instance) (value) (setf PointsUtil.jcell_instance value))

(defun PointsUtil.jnew_0 ()
  (let ((this (make-instance 'PointsUtil)))
    this))

    
(defun PointsUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PointsUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_adjustXY_3) (defgeneric jm_adjustXY_3 (this p1 p2 p3)))
(defmethod jm_adjustXY_3 ((this PointsUtil) _points _x _y)
  (declare (ignorable this _points _x _y))
  (let (_size _newPoints _size2 _index2 _index)
  (declare (ignorable _size _newPoints _size2 _index2 _index))
    (block jreturn
        (setf _size (length _points))
        (setf _newPoints (JR.newArray 0 _size 0 0))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _size2 (length (aref _points _index)))
            (setf (aref _newPoints _index) (JR.newArray 0 _size2 2))
            (progn
                (setf _index2 0)
                (block jbreak (loop while (< _index2 _size2) do
                    (block jcontinue
                (if (not (eq (aref (aref (aref _points _index) _index2) 0) 1000))
                    (progn
                    (setf (aref (aref (aref _newPoints _index) _index2) 0) (JR.i32 (+ (aref (aref (aref _points _index) _index2) 0) _x)))
                    (setf (aref (aref (aref _newPoints _index) _index2) 1) (JR.i32 (+ (aref (aref (aref _points _index) _index2) 1) _y))))
                    (progn
                    (setf (aref (aref (aref _newPoints _index) _index2) 0) 1000)
                    (setf (aref (aref (aref _newPoints _index) _index2) 1) 1000))))
                    (setf _index2 (JR.i32 (+ _index2 1)))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _newPoints))))

    
(unless (fboundp 'jm_adjust_2) (defgeneric jm_adjust_2 (this p1 p2)))
(defmethod jm_adjust_2 ((this PointsUtil) _points _both)
  (declare (ignorable this _points _both))
  (let ()
    (block jreturn
        (return-from jreturn (jm_adjust_3 this _points _both _both)))))

    
(unless (fboundp 'jm_adjust_3) (defgeneric jm_adjust_3 (this p1 p2 p3)))
(defmethod jm_adjust_3 ((this PointsUtil) _points _x _y)
  (declare (ignorable this _points _x _y))
  (let (_newPoints _index2)
  (declare (ignorable _newPoints _index2))
    (block jreturn
        (setf _newPoints (JR.newArray 0 (length _points) 2))
        (progn
            (setf _index2 0)
            (block jbreak (loop while (< _index2 (length _points)) do
                (block jcontinue
            (if (not (eq (aref (aref _points _index2) 0) 1000))
                (progn
                (setf (aref (aref _newPoints _index2) 0) (JR.i32 (+ (aref (aref _points _index2) 0) _x)))
                (setf (aref (aref _newPoints _index2) 1) (JR.i32 (+ (aref (aref _points _index2) 1) _y))))
                (progn
                (setf (aref (aref _newPoints _index2) 0) 1000)
                (setf (aref (aref _newPoints _index2) 1) 1000))))
                (setf _index2 (JR.i32 (+ _index2 1))))))
        (return-from jreturn _newPoints))))



