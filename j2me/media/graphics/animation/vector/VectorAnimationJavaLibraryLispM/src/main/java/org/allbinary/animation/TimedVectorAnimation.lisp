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

(defclass TimedVectorAnimation (VectorAnimation)
  ((f_timeElapsedHelper :initform nil)))

    
(defun TimedVectorAnimation.jnew_3 (_currentPoints _basicColor _animationBehavior)
  (declare (ignorable _currentPoints _basicColor _animationBehavior))
  (let ((this (make-instance 'TimedVectorAnimation)))
    (setf (slot-value this 'f_timeElapsedHelper) (TimeDelayHelper.jnew_1 200))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this TimedVectorAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (jm_isTime_1 (slot-value this 'f_timeElapsedHelper) (slot-value (GameTickTimeDelayHelperFactory.jm_getInstance_0) 'f_startTime))
            (progn
            (call-next-method this))))))



