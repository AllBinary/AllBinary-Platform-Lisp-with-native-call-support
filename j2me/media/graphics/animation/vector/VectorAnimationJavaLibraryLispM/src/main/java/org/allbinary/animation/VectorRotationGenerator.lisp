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

(defclass VectorRotationGenerator (JObject)
  ((f_logUtil :initform nil)
   (f_vectorAnimationUtil :initform nil)
   (f_angleFactory :initform nil)))

(defvar VectorRotationGenerator.jcell_instance :jnone)
(defun VectorRotationGenerator.jstatic_instance ()
  (when (eq VectorRotationGenerator.jcell_instance :jnone) (setf VectorRotationGenerator.jcell_instance (VectorRotationGenerator.jnew_0)))
  VectorRotationGenerator.jcell_instance)
(defun (setf VectorRotationGenerator.jstatic_instance) (value) (setf VectorRotationGenerator.jcell_instance value))

    
(defun VectorRotationGenerator.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (VectorRotationGenerator.jstatic_instance)))))

    
(defun VectorRotationGenerator.jnew_0 ()
  (let ((this (make-instance 'VectorRotationGenerator)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_vectorAnimationUtil) (VectorAnimationUtil.jm_getInstance_0))
    (setf (slot-value this 'f_angleFactory) (AngleFactory.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this VectorRotationGenerator) _vectorRotationInfo)
  (declare (ignorable this _vectorRotationInfo))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getInstanceFrames_4 this (jm_getWidth_0 _vectorRotationInfo) (jm_getHeight_0 _vectorRotationInfo) (jm_getPoints_0 _vectorRotationInfo) (jm_getTotalFrames_0 _vectorRotationInfo))))))

    
(unless (fboundp 'jm_getInstanceFrames_4) (defgeneric jm_getInstanceFrames_4 (this p1 p2 p3 p4)))
(defmethod jm_getInstanceFrames_4 ((this VectorRotationGenerator) _width _height _points _frames)
  (declare (ignorable this _width _height _points _frames))
  (let (_totalAngle _angleIncrement _pointsBasicArrayList _pointBasicArrayList _pointFactory _size _index _newPoints _commonStrings)
  (declare (ignorable _totalAngle _angleIncrement _pointsBasicArrayList _pointBasicArrayList _pointFactory _size _index _newPoints _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _totalAngle (slot-value (slot-value this 'f_angleFactory) 'f_TOTAL_ANGLE))
            (setf _angleIncrement (JR.idiv _totalAngle _frames))
            (setf _pointsBasicArrayList (BasicArrayListS.jnew_1 (JR.idiv _totalAngle _angleIncrement)))
            (setf _pointBasicArrayList (BasicArrayListS.jnew_1 (length _points)))
            (setf _pointFactory (PointFactory.jm_getInstance_0))
            (setf _size (length _points))
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (jm_add_1 _pointBasicArrayList (jm_createXY_2 _pointFactory (aref (aref _points _index) 0) (aref (aref _points _index) 1))))
                    (setf _index (JR.i32 (+ _index 1))))))
            (setf _index 0)
            (block jbreak (loop while (< _index _totalAngle) do
                    (block jcontinue
                (jm_add_1 _pointsBasicArrayList (jm_getListAtAngle_4 this _width _height _pointBasicArrayList (jm_getAt_1 (slot-value this 'f_angleFactory) _index)))
                (setf _index (JR.i32 (+ _index _angleIncrement))))))
            (setf _newPoints (jm_toAnimationArrayFromListOfPointListWithPointsPerFrame_2 (slot-value this 'f_vectorAnimationUtil) _pointsBasicArrayList (jm_size_0 _pointBasicArrayList)))
            (return-from jreturn _newPoints))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_GET_INSTANCE) _e)
            (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_INT_ARRAY_ARRAY_ARRAY)))))))

    
(unless (fboundp 'jm_getListAtAngle_4) (defgeneric jm_getListAtAngle_4 (this p1 p2 p3 p4)))
(defmethod jm_getListAtAngle_4 ((this VectorRotationGenerator) _width _height _pointBasicArrayList _angle)
  (declare (ignorable this _width _height _pointBasicArrayList _angle))
  (let (_graphicsPipe)
  (declare (ignorable _graphicsPipe))
    (block jreturn
        (setf _graphicsPipe (BasicGraphicsPipeline.jnew_1 _pointBasicArrayList))
        (jm_createMatrix_0 _graphicsPipe)
        (jm_translate_2 _graphicsPipe (JR.i32 (- (ash _width (- (logand 1 31))))) (JR.i32 (- (ash _height (- (logand 1 31))))))
        (jm_rotateToAngle_1 _graphicsPipe _angle)
        (jm_translate_2 _graphicsPipe (ash _width (- (logand 1 31))) (ash _height (- (logand 1 31))))
        (return-from jreturn (jm_getMatrix_0 _graphicsPipe)))))



