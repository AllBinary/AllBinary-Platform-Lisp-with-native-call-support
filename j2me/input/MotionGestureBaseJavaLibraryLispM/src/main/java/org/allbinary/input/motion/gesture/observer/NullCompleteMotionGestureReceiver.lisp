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
;;;; package org.allbinary.input.motion.gesture.observer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullCompleteMotionGestureReceiver (JObject)
  ((f_logUtil :initform nil)))

    
(defun NullCompleteMotionGestureReceiver.jnew_0 ()
  (let ((this (make-instance 'NullCompleteMotionGestureReceiver)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (jm_putF_3 (slot-value this 'f_logUtil) "Null Gesture Reciever" this (slot-value _commonStrings 'f_CONSTRUCTOR))))
    this))

    
(unless (fboundp 'jm_onMotionGestureCompleted_1) (defgeneric jm_onMotionGestureCompleted_1 (this p1)))
(defmethod jm_onMotionGestureCompleted_1 ((this NullCompleteMotionGestureReceiver) _list)
  (declare (ignorable this _list))
  (let ()
    (block jreturn nil)))



