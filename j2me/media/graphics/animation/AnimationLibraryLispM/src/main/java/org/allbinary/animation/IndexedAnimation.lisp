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

(defclass IndexedAnimation (Animation)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_animationBehaviorP :initform nil)))

    
(defun IndexedAnimation.jnew_1 (_animationBehavior)
  (declare (ignorable _animationBehavior))
  (let ((this (make-instance 'IndexedAnimation)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_animationBehaviorP) _animationBehavior)))
    this))

    
(unless (fboundp 'jm_getAnimationBehavior_0) (defgeneric jm_getAnimationBehavior_0 (this)))
(defmethod jm_getAnimationBehavior_0 ((this IndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_animationBehaviorP)))))

    
(unless (fboundp 'jm_reset_0) (defgeneric jm_reset_0 (this)))
(defmethod jm_reset_0 ((this IndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_reset_0 (slot-value this 'f_animationBehaviorP))
        (jm_setFrame_1 this 0))))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this IndexedAnimation) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getFrame_0) (defgeneric jm_getFrame_0 (this)))
(defmethod jm_getFrame_0 ((this IndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_getAnimationSize_0) (defgeneric jm_getAnimationSize_0 (this)))
(defmethod jm_getAnimationSize_0 ((this IndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this IndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_previousFrame_0) (defgeneric jm_previousFrame_0 (this)))
(defmethod jm_previousFrame_0 ((this IndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isLastFrame_0) (defgeneric jm_isLastFrame_0 (this)))
(defmethod jm_isLastFrame_0 ((this IndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (= (jm_getFrame_0 this) (JR.i32 (- (jm_getSize_0 this) 1)))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_setSequence_1) (defgeneric jm_setSequence_1 (this p1)))
(defmethod jm_setSequence_1 ((this IndexedAnimation) _sequence)
  (declare (ignorable this _sequence))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSequence_0) (defgeneric jm_getSequence_0 (this)))
(defmethod jm_getSequence_0 ((this IndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))

    
(unless (fboundp 'jm_setState_1) (defgeneric jm_setState_1 (this p1)))
(defmethod jm_setState_1 ((this IndexedAnimation) _indexedAnimation)
  (declare (ignorable this _indexedAnimation))
  (let ()
    (block jreturn
        (jm_setFrame_1 this (jm_getFrame_0 _indexedAnimation))
        (jm_setDx_1 this (jm_getDx_0 _indexedAnimation))
        (jm_setDy_1 this (jm_getDy_0 _indexedAnimation)))))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this IndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this IndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))



