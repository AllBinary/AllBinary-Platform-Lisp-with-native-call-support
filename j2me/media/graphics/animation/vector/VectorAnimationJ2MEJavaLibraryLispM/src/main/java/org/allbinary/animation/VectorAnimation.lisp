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

(defclass VectorAnimation (IndexedAnimation)
  ((f_currentPoints :initform nil)
   (f_circularIndexUtil :initform nil)))

    
(defun VectorAnimation.jm_createVectorAnimation_3 (_currentPoints2 _basicColor _animationBehavior)
  (declare (ignorable _currentPoints2 _basicColor _animationBehavior))
  (let (_currentPoints _size _index)
  (declare (ignorable _currentPoints _size _index))
    (block jreturn
        (setf _currentPoints (JR.newArray 0 1 (length _currentPoints2) 2))
        (setf _size (length _currentPoints2))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf (aref (aref (aref _currentPoints 0) _index) 0) (aref (aref _currentPoints2 _index) 0))
            (setf (aref (aref (aref _currentPoints 0) _index) 1) (aref (aref _currentPoints2 _index) 1)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (VectorAnimation.jnew_3 _currentPoints _basicColor _animationBehavior)))))

    
(defun VectorAnimation.jnew_3 (_currentPoints _basicColor _animationBehavior)
  (declare (ignorable _currentPoints _basicColor _animationBehavior))
  (let ((this (make-instance 'VectorAnimation)))
    (setf (slot-value this 'f_currentPoints) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_INT_ARRAY_ARRAY_ARRAY))
    (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 0))
  (let ()
    (block jreturn
        nil
        (jm_setPoints_1 this _currentPoints)
        (jm_setBasicColorP_1 this _basicColor)))
    this))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this VectorAnimation) _basicColor)
  (declare (ignorable this _basicColor))
  (let (_changed)
  (declare (ignorable _changed))
    (block jreturn
        (setf _changed nil)
        (if (or (null (jm_getBasicColorP_0 this)) (not (eq (jm_intValue_0 (jm_getBasicColorP_0 this)) (jm_intValue_0 _basicColor))))
            (progn
            (setf _changed t)))
        (call-next-method this _basicColor)
        (if _changed
            (progn
            (jm_updateModifiers_0 this))))))

    
(unless (fboundp 'jm_changeBasicColor_1) (defgeneric jm_changeBasicColor_1 (this p1)))
(defmethod jm_changeBasicColor_1 ((this VectorAnimation) _basicColor)
  (declare (ignorable this _basicColor))
  (let (_changed)
  (declare (ignorable _changed))
    (block jreturn
        (setf _changed nil)
        (if (or (null (jm_getChangeBasicColor_0 this)) (not (eq (jm_intValue_0 (jm_getChangeBasicColor_0 this)) (jm_intValue_0 _basicColor))))
            (progn
            (setf _changed t)))
        (call-next-method this _basicColor)
        (if _changed
            (progn
            (jm_updateModifiers_0 this))))))

    
(unless (fboundp 'jm_setAlpha_1) (defgeneric jm_setAlpha_1 (this p1)))
(defmethod jm_setAlpha_1 ((this VectorAnimation) _alpha)
  (declare (ignorable this _alpha))
  (let (_changed)
  (declare (ignorable _changed))
    (block jreturn
        (setf _changed nil)
        (if (not (eq (slot-value this 'f_alphaP) _alpha))
            (progn
            (setf _changed t)))
        (call-next-method this _alpha)
        (if _changed
            (progn
            (jm_updateModifiers_0 this))))))

    
(unless (fboundp 'jm_setScale_2) (defgeneric jm_setScale_2 (this p1 p2)))
(defmethod jm_setScale_2 ((this VectorAnimation) _scaleX _scaleY)
  (declare (ignorable this _scaleX _scaleY))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setMaxScale_2) (defgeneric jm_setMaxScale_2 (this p1 p2)))
(defmethod jm_setMaxScale_2 ((this VectorAnimation) _maxScaleX _maxScaleY)
  (declare (ignorable this _maxScaleX _maxScaleY))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_updateModifiers_0) (defgeneric jm_updateModifiers_0 (this)))
(defmethod jm_updateModifiers_0 ((this VectorAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getAnimationSize_0) (defgeneric jm_getAnimationSize_0 (this)))
(defmethod jm_getAnimationSize_0 ((this VectorAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSize_0 this)))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this VectorAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (length (slot-value this 'f_currentPoints))))))

    
(unless (fboundp 'jm_setSequence_1) (defgeneric jm_setSequence_1 (this p1)))
(defmethod jm_setSequence_1 ((this VectorAnimation) _sequence)
  (declare (ignorable this _sequence))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSequence_0) (defgeneric jm_getSequence_0 (this)))
(defmethod jm_getSequence_0 ((this VectorAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this VectorAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_next_0 (slot-value this 'f_circularIndexUtil)))))

    
(unless (fboundp 'jm_previousFrame_0) (defgeneric jm_previousFrame_0 (this)))
(defmethod jm_previousFrame_0 ((this VectorAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_previous_0 (slot-value this 'f_circularIndexUtil)))))

    
(unless (fboundp 'jm_paintVectors_3) (defgeneric jm_paintVectors_3 (this p1 p2 p3)))
(defmethod jm_paintVectors_3 ((this VectorAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let (_nextPointX _nextPointY _nextPoint _point _currentPointsFrame _size _index)
  (declare (ignorable _nextPointX _nextPointY _nextPoint _point _currentPointsFrame _size _index))
    (block jreturn
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

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this VectorAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_setBasicColorP_2 (slot-value this 'f_basicSetColorUtil) _graphics (slot-value this 'f_basicColor))
        (jm_paintVectors_3 this _graphics _x _y))))

    
(unless (fboundp 'jm_getFrame_0) (defgeneric jm_getFrame_0 (this)))
(defmethod jm_getFrame_0 ((this VectorAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this VectorAnimation) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (jm_setIndex_1 (slot-value this 'f_circularIndexUtil) _index))))

    
(unless (fboundp 'jm_getPoints_1) (defgeneric jm_getPoints_1 (this p1)))
(defmethod jm_getPoints_1 ((this VectorAnimation) _frame)
  (declare (ignorable this _frame))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_currentPoints) _frame)))))

    
(unless (fboundp 'jm_setPoints_1) (defgeneric jm_setPoints_1 (this p1)))
(defmethod jm_setPoints_1 ((this VectorAnimation) _currentPoints)
  (declare (ignorable this _currentPoints))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_currentPoints) _currentPoints)
        (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 (length _currentPoints))))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this VectorAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))



