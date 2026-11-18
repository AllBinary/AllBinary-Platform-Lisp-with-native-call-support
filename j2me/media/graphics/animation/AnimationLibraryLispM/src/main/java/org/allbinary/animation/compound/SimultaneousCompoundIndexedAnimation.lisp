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
;;;; package org.allbinary.animation.compound

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SimultaneousCompoundIndexedAnimation (IndexedAnimation)
  ((f_animationInterfaceArray :initform nil)))

    
(defun SimultaneousCompoundIndexedAnimation.jnew_2 (_animationInterfaceArray _animationBehavior)
  (declare (ignorable _animationInterfaceArray _animationBehavior))
  (let ((this (make-instance 'SimultaneousCompoundIndexedAnimation)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_animationInterfaceArray) _animationInterfaceArray)))
    this))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this SimultaneousCompoundIndexedAnimation) _frameIndex)
  (declare (ignorable this _frameIndex))
  (let (_indexedAnimation _index)
  (declare (ignorable _indexedAnimation _index))
    (block jreturn
        (setf _indexedAnimation nil)
        (progn
            (setf _index (length (slot-value this 'f_animationInterfaceArray)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _indexedAnimation (aref (slot-value this 'f_animationInterfaceArray) _index))
            (jm_setFrame_1 _indexedAnimation _frameIndex))))))))

    
(unless (fboundp 'jm_getFrame_0) (defgeneric jm_getFrame_0 (this)))
(defmethod jm_getFrame_0 ((this SimultaneousCompoundIndexedAnimation))
  (declare (ignorable this))
  (let (_indexedAnimation)
  (declare (ignorable _indexedAnimation))
    (block jreturn
        (setf _indexedAnimation (aref (slot-value this 'f_animationInterfaceArray) 0))
        (return-from jreturn (jm_getFrame_0 _indexedAnimation)))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this SimultaneousCompoundIndexedAnimation))
  (declare (ignorable this))
  (let (_indexedAnimation)
  (declare (ignorable _indexedAnimation))
    (block jreturn
        (setf _indexedAnimation (aref (slot-value this 'f_animationInterfaceArray) 0))
        (return-from jreturn (jm_getSize_0 _indexedAnimation)))))

    
(unless (fboundp 'jm_previousFrame_0) (defgeneric jm_previousFrame_0 (this)))
(defmethod jm_previousFrame_0 ((this SimultaneousCompoundIndexedAnimation))
  (declare (ignorable this))
  (let (_indexedAnimation _index)
  (declare (ignorable _indexedAnimation _index))
    (block jreturn
        (setf _indexedAnimation nil)
        (progn
            (setf _index (length (slot-value this 'f_animationInterfaceArray)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _indexedAnimation (aref (slot-value this 'f_animationInterfaceArray) _index))
            (jm_previousFrame_0 _indexedAnimation))))))))

    
(unless (fboundp 'jm_setSequence_1) (defgeneric jm_setSequence_1 (this p1)))
(defmethod jm_setSequence_1 ((this SimultaneousCompoundIndexedAnimation) _sequence)
  (declare (ignorable this _sequence))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSequence_0) (defgeneric jm_getSequence_0 (this)))
(defmethod jm_getSequence_0 ((this SimultaneousCompoundIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this SimultaneousCompoundIndexedAnimation))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (length (slot-value this 'f_animationInterfaceArray)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (jm_nextFrame_0 (aref (slot-value this 'f_animationInterfaceArray) _index)))))))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this SimultaneousCompoundIndexedAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let (_size _index)
  (declare (ignorable _size _index))
    (block jreturn
        (setf _size (length (slot-value this 'f_animationInterfaceArray)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_paintXY_3 (aref (slot-value this 'f_animationInterfaceArray) _index) _graphics _x _y))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_paintThreedXYZ_4) (defgeneric jm_paintThreedXYZ_4 (this p1 p2 p3 p4)))
(defmethod jm_paintThreedXYZ_4 ((this SimultaneousCompoundIndexedAnimation) _graphics _x _y _z)
  (declare (ignorable this _graphics _x _y _z))
  (let (_size _index)
  (declare (ignorable _size _index))
    (block jreturn
        (setf _size (length (slot-value this 'f_animationInterfaceArray)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_paintThreedXYZ_4 (aref (slot-value this 'f_animationInterfaceArray) _index) _graphics _x _y _z))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_getAnimationInterfaceArray_0) (defgeneric jm_getAnimationInterfaceArray_0 (this)))
(defmethod jm_getAnimationInterfaceArray_0 ((this SimultaneousCompoundIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_animationInterfaceArray)))))

    
(unless (fboundp 'jm_setAnimationInterfaceArray_1) (defgeneric jm_setAnimationInterfaceArray_1 (this p1)))
(defmethod jm_setAnimationInterfaceArray_1 ((this SimultaneousCompoundIndexedAnimation) _animationInterfaceArray)
  (declare (ignorable this _animationInterfaceArray))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_animationInterfaceArray) _animationInterfaceArray))))



