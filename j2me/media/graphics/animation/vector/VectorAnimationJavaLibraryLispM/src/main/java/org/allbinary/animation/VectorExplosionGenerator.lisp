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

(defclass VectorExplosionGenerator (JObject)
  ((f_RANDOM :initform nil)
   (f_ROTATION :initform nil)
   (f_vectorAnimationUtil :initform nil)
   (f_randomRotationFactory :initform nil)))

(defvar VectorExplosionGenerator.jcell_instance :jnone)
(defun VectorExplosionGenerator.jstatic_instance ()
  (when (eq VectorExplosionGenerator.jcell_instance :jnone) (setf VectorExplosionGenerator.jcell_instance (VectorExplosionGenerator.jnew_0)))
  VectorExplosionGenerator.jcell_instance)
(defun (setf VectorExplosionGenerator.jstatic_instance) (value) (setf VectorExplosionGenerator.jcell_instance value))

    
(defun VectorExplosionGenerator.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (VectorExplosionGenerator.jstatic_instance)))))

    
(defun VectorExplosionGenerator.jnew_0 ()
  (let ((this (make-instance 'VectorExplosionGenerator)))
    (setf (slot-value this 'f_RANDOM) (VectorExplosionType.jnew_0))
    (setf (slot-value this 'f_ROTATION) (VectorExplosionType.jnew_0))
    (setf (slot-value this 'f_vectorAnimationUtil) (VectorAnimationUtil.jm_getInstance_0))
    (setf (slot-value this 'f_randomRotationFactory) (RandomRotationFactory.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_createList_3) (defgeneric jm_createList_3 (this p1 p2 p3)))
(defmethod jm_createList_3 ((this VectorExplosionGenerator) _list _howMuch _type)
  (declare (ignorable this _list _howMuch _type))
  (let (_point _size _points _index)
  (declare (ignorable _point _size _points _index))
    (block jreturn
        (setf _point nil)
        (setf _size (jm_size_0 _list))
        (setf _points (JR.newArray 0 _size 2))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _point (aref (slot-value _list 'f_objectArray) _index))
            (setf (aref (aref _points _index) 0) (jm_getX_0 _point))
            (setf (aref (aref _points _index) 1) (jm_getY_0 _point)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_createListFromPoints_4 this _list _points _howMuch _type)))))

    
(unless (fboundp 'jm_getInstance_3) (defgeneric jm_getInstance_3 (this p1 p2 p3)))
(defmethod jm_getInstance_3 ((this VectorExplosionGenerator) _points _howMuch _type)
  (declare (ignorable this _points _howMuch _type))
  (let (_pointsBasicArrayList _tempBasicArrayList _newPoints)
  (declare (ignorable _pointsBasicArrayList _tempBasicArrayList _newPoints))
    (block jreturn
        (setf _pointsBasicArrayList (jm_getInstanceStartFrame_4 this _points _howMuch _type t))
        (setf _tempBasicArrayList (aref (slot-value _pointsBasicArrayList 'f_objectArray) 0))
        (setf _newPoints (jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2 (slot-value this 'f_vectorAnimationUtil) _pointsBasicArrayList (jm_size_0 _tempBasicArrayList)))
        (return-from jreturn _newPoints))))

    
(unless (fboundp 'jm_getInstanceStartFrame_4) (defgeneric jm_getInstanceStartFrame_4 (this p1 p2 p3 p4)))
(defmethod jm_getInstanceStartFrame_4 ((this VectorExplosionGenerator) _points _howMuch _type _startFrame)
  (declare (ignorable this _points _howMuch _type _startFrame))
  (let (_pointsBasicArrayList _frameIndex _tempBasicArrayList _pointBasicArrayList)
  (declare (ignorable _pointsBasicArrayList _frameIndex _tempBasicArrayList _pointBasicArrayList))
    (block jreturn
        (handler-case (progn
            (setf _pointsBasicArrayList (BasicArrayListS.jnew_1 _howMuch))
            (jm_add_1 _pointsBasicArrayList (jm_createPointsBasicArrayList_1 this _points))
            (setf _frameIndex 0)
            (setf _tempBasicArrayList nil)
            (setf _pointBasicArrayList nil)
            (block jbreak (loop while (< _frameIndex _howMuch) do
                    (block jcontinue
                (setf _tempBasicArrayList (aref (slot-value _pointsBasicArrayList 'f_objectArray) _frameIndex))
                (setf _pointBasicArrayList (jm_createListFromPoints_4 this _tempBasicArrayList _points _howMuch _type))
                (jm_add_1 _pointsBasicArrayList _pointBasicArrayList)
                (setf _frameIndex (JR.i32 (+ _frameIndex 1))))))
            (if (not _startFrame)
                (progn
                (jm_removeAt_1 _pointsBasicArrayList 0)))
            (return-from jreturn _pointsBasicArrayList))
            (error (_e) (declare (ignorable _e))
            (error _e))))))

    
(unless (fboundp 'jm_createListFromPoints_4) (defgeneric jm_createListFromPoints_4 (this p1 p2 p3 p4)))
(defmethod jm_createListFromPoints_4 ((this VectorExplosionGenerator) _tempBasicArrayList _points _howMuch _type)
  (declare (ignorable this _tempBasicArrayList _points _howMuch _type))
  (let (_index _pointBasicArrayList _sectionBasicArrayList _size _index2)
  (declare (ignorable _index _pointBasicArrayList _sectionBasicArrayList _size _index2))
    (block jreturn
        (setf _index 0)
        (setf _pointBasicArrayList (BasicArrayListD.jnew_0))
        (setf _sectionBasicArrayList nil)
        (block jbreak (loop while (< _index (length _points)) do
                (block jcontinue
            (setf _sectionBasicArrayList (BasicArrayListD.jnew_0))
            (block jbreak (loop while (not (eq (aref (aref _points _index) 0) 1000)) do
                    (block jcontinue
                (jm_add_1 _sectionBasicArrayList (aref (slot-value _tempBasicArrayList 'f_objectArray) _index))
                (setf _index (JR.i32 (+ _index 1)))
                (if (>= _index (length _points))
                    (progn
                    (return-from jbreak))))))
            (setf _sectionBasicArrayList (RandomTranslation.jm_getInstance_2 _sectionBasicArrayList _howMuch))
            (if (eq _type (slot-value this 'f_ROTATION))
                (progn
                (setf _sectionBasicArrayList (jm_getInstanceList_2 (slot-value this 'f_randomRotationFactory) _sectionBasicArrayList _howMuch))))
            (setf _size (jm_size_0 _sectionBasicArrayList))
            (progn
                (setf _index2 0)
                (block jbreak (loop while (< _index2 _size) do
                    (block jcontinue
                (jm_add_1 _pointBasicArrayList (aref (slot-value _sectionBasicArrayList 'f_objectArray) _index2)))
                    (setf _index2 (JR.i32 (+ _index2 1))))))
            (if (>= _index (length _points))
                (progn
                (return-from jbreak))
                (if (eq (aref (aref _points _index) 0) 1000)
                (progn
                (jm_add_1 _pointBasicArrayList (aref (slot-value _tempBasicArrayList 'f_objectArray) _index))
                (setf _index (JR.i32 (+ _index 1)))))))))
        (return-from jreturn _pointBasicArrayList))))

    
(unless (fboundp 'jm_createPointsBasicArrayList_1) (defgeneric jm_createPointsBasicArrayList_1 (this p1)))
(defmethod jm_createPointsBasicArrayList_1 ((this VectorExplosionGenerator) _points)
  (declare (ignorable this _points))
  (let (_firstPointBasicArrayList _pointFactory _index)
  (declare (ignorable _firstPointBasicArrayList _pointFactory _index))
    (block jreturn
        (if (= (length _points) 0)
            (progn
            (error (JR.newException "Exception" "Not Points Provided"))))
        (setf _firstPointBasicArrayList (BasicArrayListS.jnew_1 (length _points)))
        (setf _pointFactory (PointFactory.jm_getInstance_0))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _points)) do
                (block jcontinue
            (jm_add_1 _firstPointBasicArrayList (jm_createXY_2 _pointFactory (aref (aref _points _index) 0) (aref (aref _points _index) 1))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _firstPointBasicArrayList))))



