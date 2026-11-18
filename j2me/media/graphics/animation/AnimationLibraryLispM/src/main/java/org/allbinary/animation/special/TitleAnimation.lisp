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
;;;; package org.allbinary.animation.special

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TitleAnimation (SpecialAnimation)
  ((f_systemWrapper :initform nil)
   (f_deltaX :initform 0.0f0)
   (f_deltaY :initform 0.0f0)
   (f_deltaZ :initform 0.0f0)
   (f_basicColorArray :initform nil)
   (f_dxArray :initform nil)
   (f_dyArray :initform nil)
   (f_widthP :initform 0)
   (f_animationInterfaceArray :initform nil)
   (f_sizeP :initform 0)
   (f_y :initform 0)
   (f_lastFrameStartTime :initform 0)
   (f_displayInfoSingleton :initform nil)
   (f_CLEAR_COLOR :initform nil)))

    
(defun TitleAnimation.jm_createAnimation_6 (_animationInterfaceArray _basicColorArray _dxArray _dyArray _y _width)
  (declare (ignorable _animationInterfaceArray _basicColorArray _dxArray _dyArray _y _width))
  (let ()
    (block jreturn
        (return-from jreturn (TitleAnimation.jnew_7 _animationInterfaceArray _basicColorArray _dxArray _dyArray _y _width (IndexedAnimationBehavior.jnew_2 1 250))))))

    
(defun TitleAnimation.jnew_7 (_animationInterfaceArray _basicColorArray _dxArray _dyArray _y _width _animationBehavior)
  (declare (ignorable _animationInterfaceArray _basicColorArray _dxArray _dyArray _y _width _animationBehavior))
  (let ((this (make-instance 'TitleAnimation)))
    (setf (slot-value this 'f_systemWrapper) (ABSystemWrapper.jm_getInstance_0))
    
    
    
    
    
    
    
    
    
    
    
    (setf (slot-value this 'f_displayInfoSingleton) (DisplayInfoSingleton.jm_getInstance_0))
    (setf (slot-value this 'f_CLEAR_COLOR) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_CLEAR_COLOR))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_lastFrameStartTime) (jm_currentTimeMillis_0 (slot-value this 'f_systemWrapper)))
        (setf (slot-value this 'f_animationInterfaceArray) _animationInterfaceArray)
        (setf (slot-value this 'f_sizeP) (length (slot-value this 'f_animationInterfaceArray)))
        (setf (slot-value this 'f_basicColorArray) _basicColorArray)
        (setf (slot-value this 'f_dxArray) _dxArray)
        (setf (slot-value this 'f_dyArray) _dyArray)
        (setf (slot-value this 'f_y) _y)
        (setf (slot-value this 'f_widthP) _width)
        (jm_reset_0 this)))
    this))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this TitleAnimation))
  (declare (ignorable this))
  (let (_currentTime _totalTimeElapsed _indexedAnimationBehavior)
  (declare (ignorable _currentTime _totalTimeElapsed _indexedAnimationBehavior))
    (block jreturn
        (setf _currentTime (jm_currentTimeMillis_0 (slot-value this 'f_systemWrapper)))
        (setf _totalTimeElapsed (JR.i64 (- _currentTime (slot-value this 'f_lastFrameStartTime))))
        (setf _indexedAnimationBehavior (jm_getAnimationBehavior_0 this))
        (if (> _totalTimeElapsed (slot-value _indexedAnimationBehavior 'f_frameDelayTime))
            (progn
            (jm_previousFrame_0 this)
            (setf (slot-value this 'f_lastFrameStartTime) _currentTime)))
        (if (eq (jm_getFrame_0 (aref (slot-value this 'f_animationInterfaceArray) 0)) 0)
            (progn
            (setf (slot-value _indexedAnimationBehavior 'f_loopIndex) (JR.i32 (+ (slot-value _indexedAnimationBehavior 'f_loopIndex) 1))))))))

    
(unless (fboundp 'jm_isComplete_0) (defgeneric jm_isComplete_0 (this)))
(defmethod jm_isComplete_0 ((this TitleAnimation))
  (declare (ignorable this))
  (let (_indexedAnimationBehavior)
  (declare (ignorable _indexedAnimationBehavior))
    (block jreturn
        (setf _indexedAnimationBehavior (jm_getAnimationBehavior_0 this))
        (if (or (or (eq (slot-value _indexedAnimationBehavior 'f_loopTotal) (JR.i32 (- 1))) (< (slot-value _indexedAnimationBehavior 'f_loopIndex) (slot-value _indexedAnimationBehavior 'f_loopTotal))) (/= (jm_getFrame_0 this) 0))
            (progn
            (return-from jreturn nil))
            (progn
            (return-from jreturn t))))))

    
(unless (fboundp 'jm_setSequence_1) (defgeneric jm_setSequence_1 (this p1)))
(defmethod jm_setSequence_1 ((this TitleAnimation) _sequence)
  (declare (ignorable this _sequence))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSequence_0) (defgeneric jm_getSequence_0 (this)))
(defmethod jm_getSequence_0 ((this TitleAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this TitleAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSize_0 (aref (slot-value this 'f_animationInterfaceArray) 0))))))

    
(unless (fboundp 'jm_getFrame_0) (defgeneric jm_getFrame_0 (this)))
(defmethod jm_getFrame_0 ((this TitleAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getFrame_0 (aref (slot-value this 'f_animationInterfaceArray) 0))))))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this TitleAnimation) _frame)
  (declare (ignorable this _frame))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (slot-value this 'f_sizeP)) do
                (block jcontinue
            (jm_setFrame_1 (aref (slot-value this 'f_animationInterfaceArray) _index) _frame))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_setLastFrame_0) (defgeneric jm_setLastFrame_0 (this)))
(defmethod jm_setLastFrame_0 ((this TitleAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setFrame_1 this (JR.i32 (- (jm_getSize_0 this) 1))))))

    
(unless (fboundp 'jm_reset_0) (defgeneric jm_reset_0 (this)))
(defmethod jm_reset_0 ((this TitleAnimation))
  (declare (ignorable this))
  (let (_indexedAnimationBehavior)
  (declare (ignorable _indexedAnimationBehavior))
    (block jreturn
        (jm_setLastFrame_0 this)
        (setf _indexedAnimationBehavior (jm_getAnimationBehavior_0 this))
        (jm_reset_0 _indexedAnimationBehavior))))

    
(unless (fboundp 'jm_previousFrame_0) (defgeneric jm_previousFrame_0 (this)))
(defmethod jm_previousFrame_0 ((this TitleAnimation))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (slot-value this 'f_sizeP)) do
                (block jcontinue
            (jm_previousFrame_0 (aref (slot-value this 'f_animationInterfaceArray) _index)))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_paintFrameXY_4) (defgeneric jm_paintFrameXY_4 (this p1 p2 p3 p4)))
(defmethod jm_paintFrameXY_4 ((this TitleAnimation) _graphics _frame _x _y)
  (declare (ignorable this _graphics _frame _x _y))
  (let ()
    (block jreturn
        (jm_setFrame_1 this _frame)
        (jm_paintXY_3 this _graphics _x _y))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this TitleAnimation) _graphics _ax _ay)
  (declare (ignorable this _graphics _ax _ay))
  (let (_x _deltaX _deltaY _index)
  (declare (ignorable _x _deltaX _deltaY _index))
    (block jreturn
        (setf _x 0)
        (if (/= (slot-value this 'f_widthP) (Integer.jstatic_MIN_VALUE))
            (progn
            (setf _x (JR.idiv (JR.i32 (- (jm_getLastWidth_0 (slot-value this 'f_displayInfoSingleton)) (slot-value this 'f_widthP))) 2))))
        (setf _deltaX 0)
        (setf _deltaY 0)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (slot-value this 'f_sizeP)) do
                (block jcontinue
            (setf _deltaX (JR.i32 (+ (aref (slot-value this 'f_dxArray) _index) _x)))
            (setf _deltaY (JR.i32 (+ (aref (slot-value this 'f_dyArray) _index) (slot-value this 'f_y))))
            (if (not (eq (aref (slot-value this 'f_basicColorArray) _index) (slot-value this 'f_CLEAR_COLOR)))
                (progn
                (jm_setBasicColorP_2 (slot-value this 'f_basicSetColorUtil) _graphics (aref (slot-value this 'f_basicColorArray) _index))))
            (jm_paintXY_3 (aref (slot-value this 'f_animationInterfaceArray) _index) _graphics _deltaX _deltaY))
                (setf _index (JR.i32 (+ _index 1)))))))))



