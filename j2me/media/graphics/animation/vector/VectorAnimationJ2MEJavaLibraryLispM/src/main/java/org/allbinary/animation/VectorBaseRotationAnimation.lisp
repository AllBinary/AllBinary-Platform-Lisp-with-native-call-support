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

(defclass VectorBaseRotationAnimation (RotationAnimation)
  ((f_currentPoints :initform nil)))

    
(defun VectorBaseRotationAnimation.jnew_4 (_angleInfo _currentPoints _basicColor _animationBehavior)
  (declare (ignorable _angleInfo _currentPoints _basicColor _animationBehavior))
  (let ((this (make-instance 'VectorBaseRotationAnimation)))
    (setf (slot-value this 'f_currentPoints) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_INT_ARRAY_ARRAY_ARRAY))
  (let ()
    (block jreturn
        nil
        (jm_setPoints_1 this _currentPoints)
        (jm_setBasicColorP_1 this _basicColor)))
    this))

    
(unless (fboundp 'jm_getAnimationSize_0) (defgeneric jm_getAnimationSize_0 (this)))
(defmethod jm_getAnimationSize_0 ((this VectorBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSize_0 this)))))

    
(unless (fboundp 'jm_getFrame_0) (defgeneric jm_getFrame_0 (this)))
(defmethod jm_getFrame_0 ((this VectorBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this VectorBaseRotationAnimation) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (jm_setIndex_1 (slot-value this 'f_circularIndexUtil) _index))))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this VectorBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_next_0 (slot-value this 'f_circularIndexUtil)))))

    
(unless (fboundp 'jm_previousFrame_0) (defgeneric jm_previousFrame_0 (this)))
(defmethod jm_previousFrame_0 ((this VectorBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_previous_0 (slot-value this 'f_circularIndexUtil)))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this VectorBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (length (slot-value this 'f_currentPoints))))))

    
(unless (fboundp 'jm_setSequence_1) (defgeneric jm_setSequence_1 (this p1)))
(defmethod jm_setSequence_1 ((this VectorBaseRotationAnimation) _sequence)
  (declare (ignorable this _sequence))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSequence_0) (defgeneric jm_getSequence_0 (this)))
(defmethod jm_getSequence_0 ((this VectorBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this VectorBaseRotationAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let (_nextPointX _nextPointY _nextPoint _point _currentPointsFrame _size _index)
  (declare (ignorable _nextPointX _nextPointY _nextPoint _point _currentPointsFrame _size _index))
    (block jreturn
        (jm_setBasicColorP_2 (slot-value this 'f_basicSetColorUtil) _graphics (slot-value this 'f_basicColor))
        (handler-case (progn
            (setf _nextPointX 0)
            (setf _nextPointY 0)
            (setf _nextPoint nil)
            (setf _point nil)
            (setf _currentPointsFrame (aref (slot-value this 'f_currentPoints) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))
            (setf _size (length _currentPointsFrame))
            (setf _index (JR.i32 (- _size 2)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                    (block jcontinue
                (setf _nextPoint (aref _currentPointsFrame _index))
                (setf _point (aref _currentPointsFrame (JR.i32 (+ _index 1))))
                (setf _nextPointX (aref _nextPoint 0))
                (setf _nextPointY (aref _nextPoint 1))
                (if (/= _nextPointX 1000)
                    (progn
                    (jm_drawLine_4 _graphics (JR.i32 (+ (aref _point 0) _x)) (JR.i32 (+ (aref _point 1) _y)) (JR.i32 (+ _nextPointX _x)) (JR.i32 (+ _nextPointY _y))))
                    (progn
                    (setf _index (JR.i32 (- _index 1)))))))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "paintVectors" _e))))))

    
(unless (fboundp 'jm_getPoints_1) (defgeneric jm_getPoints_1 (this p1)))
(defmethod jm_getPoints_1 ((this VectorBaseRotationAnimation) _frame)
  (declare (ignorable this _frame))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_currentPoints) _frame)))))

    
(unless (fboundp 'jm_setPoints_1) (defgeneric jm_setPoints_1 (this p1)))
(defmethod jm_setPoints_1 ((this VectorBaseRotationAnimation) _currentPoints)
  (declare (ignorable this _currentPoints))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_currentPoints) _currentPoints)
        (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 (length (slot-value this 'f_currentPoints)))))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this VectorBaseRotationAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this VectorBaseRotationAnimation) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (call-next-method this _basicColor))))



