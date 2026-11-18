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

(defclass VectorMirrorGenerator (JObject)
  ((f_logUtil :initform nil)
   (f_vectorAnimationUtil :initform nil)))

(defvar VectorMirrorGenerator.jcell_instance :jnone)
(defun VectorMirrorGenerator.jstatic_instance ()
  (when (eq VectorMirrorGenerator.jcell_instance :jnone) (setf VectorMirrorGenerator.jcell_instance (VectorMirrorGenerator.jnew_0)))
  VectorMirrorGenerator.jcell_instance)
(defun (setf VectorMirrorGenerator.jstatic_instance) (value) (setf VectorMirrorGenerator.jcell_instance value))

    
(defun VectorMirrorGenerator.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (VectorMirrorGenerator.jstatic_instance)))))

    
(defun VectorMirrorGenerator.jnew_0 ()
  (let ((this (make-instance 'VectorMirrorGenerator)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_vectorAnimationUtil) (VectorAnimationUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getInstance_2) (defgeneric jm_getInstance_2 (this p1 p2)))
(defmethod jm_getInstance_2 ((this VectorMirrorGenerator) (_points vector) (_width integer))
  (declare (ignorable this _points _width))
  (let (_pointFactory _pointBasicArrayList _nextPoints _size2 _size _pointsBasicArrayList _index _frame _newPoints _commonStrings)
  (declare (ignorable _pointFactory _pointBasicArrayList _nextPoints _size2 _size _pointsBasicArrayList _index _frame _newPoints _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _pointFactory (PointFactory.jm_getInstance_0))
            (setf _pointBasicArrayList nil)
            (setf _nextPoints nil)
            (setf _size2 0)
            (setf _size (length _points))
            (setf _pointsBasicArrayList (BasicArrayListS.jnew_1 _size))
            (progn
                (setf _frame 0)
                (block jbreak (loop while (< _frame _size) do
                    (block jcontinue
                (setf _nextPoints (aref _points _frame))
                (setf _size2 (length _nextPoints))
                (setf _pointBasicArrayList (BasicArrayListS.jnew_1 _size2))
                (progn
                    (setf _index 0)
                    (block jbreak (loop while (< _index _size2) do
                        (block jcontinue
                    (jm_add_1 _pointBasicArrayList (jm_createXY_2 _pointFactory (aref (aref _nextPoints _index) 0) (aref (aref _nextPoints _index) 1))))
                        (setf _index (JR.i32 (+ _index 1))))))
                (jm_add_1 _pointsBasicArrayList _pointBasicArrayList))
                    (setf _frame (JR.i32 (+ _frame 1))))))
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index (length _points)) do
                    (block jcontinue
                (jm_add_1 _pointsBasicArrayList (jm_getInstance_2 this (aref (slot-value _pointsBasicArrayList 'f_objectArray) _index) _width)))
                    (setf _index (JR.i32 (+ _index 1))))))
            (setf _newPoints (jm_toAnimationArrayFromListOfPointList_1 (slot-value this 'f_vectorAnimationUtil) _pointsBasicArrayList))
            (return-from jreturn _newPoints))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_GET_INSTANCE) _e)
            (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_INT_ARRAY_ARRAY_ARRAY)))))))

    
(unless (fboundp 'jm_getInstance_2) (defgeneric jm_getInstance_2 (this p1 p2)))
(defmethod jm_getInstance_2 ((this VectorMirrorGenerator) (_pointBasicArrayList t) (_width integer))
  (declare (ignorable this _pointBasicArrayList _width))
  (let (_graphicsPipe)
  (declare (ignorable _graphicsPipe))
    (block jreturn
        (setf _graphicsPipe (BasicGraphicsPipeline.jnew_1 _pointBasicArrayList))
        (jm_createMatrix_0 _graphicsPipe)
        (jm_mirror_1 _graphicsPipe _width)
        (return-from jreturn (jm_getMatrix_0 _graphicsPipe)))))



