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

(defclass MotionGestureEvent (AllBinaryEventObject)
  ((f_motionGesture :initform nil)
   (f_id :initform 0)
   (f_previousPoint :initform nil)
   (f_currentPoint :initform nil)
   (f_commonLabels :initform nil)))

(defvar MotionGestureEvent.jcell_PREVIOUS :jnone)
(defun MotionGestureEvent.jstatic_PREVIOUS ()
  (when (eq MotionGestureEvent.jcell_PREVIOUS :jnone) (setf MotionGestureEvent.jcell_PREVIOUS " Previous: "))
  MotionGestureEvent.jcell_PREVIOUS)
(defun (setf MotionGestureEvent.jstatic_PREVIOUS) (value) (setf MotionGestureEvent.jcell_PREVIOUS value))

(defvar MotionGestureEvent.jcell_HASHCODE :jnone)
(defun MotionGestureEvent.jstatic_HASHCODE ()
  (when (eq MotionGestureEvent.jcell_HASHCODE :jnone) (setf MotionGestureEvent.jcell_HASHCODE " hashcode: "))
  MotionGestureEvent.jcell_HASHCODE)
(defun (setf MotionGestureEvent.jstatic_HASHCODE) (value) (setf MotionGestureEvent.jcell_HASHCODE value))

    
(defun MotionGestureEvent.jnew_3 (_source _id _motionGesture)
  (declare (ignorable _source _id _motionGesture))
  (let ((this (make-instance 'MotionGestureEvent)))
    (setf (slot-value this 'f_motionGesture) (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_NO_MOTION))
    
    (setf (slot-value this 'f_previousPoint) (slot-value (PointFactory.jm_getInstance_0) 'f_ZERO_ZERO))
    (setf (slot-value this 'f_currentPoint) (slot-value (PointFactory.jm_getInstance_0) 'f_ZERO_ZERO))
    (setf (slot-value this 'f_commonLabels) (CommonLabels.jm_getInstance_0))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_id) _id)
        (jm_setMotionGesture_1 this _motionGesture)))
    this))

    
(unless (fboundp 'jm_getMotionGesture_0) (defgeneric jm_getMotionGesture_0 (this)))
(defmethod jm_getMotionGesture_0 ((this MotionGestureEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_motionGesture)))))

    
(unless (fboundp 'jm_setMotionGesture_1) (defgeneric jm_setMotionGesture_1 (this p1)))
(defmethod jm_setMotionGesture_1 ((this MotionGestureEvent) _motionGesture)
  (declare (ignorable this _motionGesture))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_motionGesture) _motionGesture))))

    
(unless (fboundp 'jm_getPreviousPoint_0) (defgeneric jm_getPreviousPoint_0 (this)))
(defmethod jm_getPreviousPoint_0 ((this MotionGestureEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_previousPoint)))))

    
(unless (fboundp 'jm_setPreviousPoint_1) (defgeneric jm_setPreviousPoint_1 (this p1)))
(defmethod jm_setPreviousPoint_1 ((this MotionGestureEvent) _previousPoint)
  (declare (ignorable this _previousPoint))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_previousPoint) _previousPoint))))

    
(unless (fboundp 'jm_getCurrentPoint_0) (defgeneric jm_getCurrentPoint_0 (this)))
(defmethod jm_getCurrentPoint_0 ((this MotionGestureEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_currentPoint)))))

    
(unless (fboundp 'jm_setCurrentPoint_1) (defgeneric jm_setCurrentPoint_1 (this p1)))
(defmethod jm_setCurrentPoint_1 ((this MotionGestureEvent) _currentPoint)
  (declare (ignorable this _currentPoint))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_currentPoint) _currentPoint))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this MotionGestureEvent))
  (declare (ignorable this))
  (let (_stringBuffer _stringUtil)
  (declare (ignorable _stringBuffer _stringUtil))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _stringUtil (StringUtil.jm_getInstance_0))
        (jm_append_1 _stringBuffer (jm_toString_1 _stringUtil (slot-value this 'f_motionGesture)))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonLabels) 'f_CURRENT))
        (jm_append_1 _stringBuffer (jm_toString_1 _stringUtil (slot-value this 'f_currentPoint)))
        (jm_append_1 _stringBuffer (MotionGestureEvent.jstatic_PREVIOUS))
        (jm_append_1 _stringBuffer (jm_toString_1 _stringUtil (slot-value this 'f_previousPoint)))
        (jm_append_1 _stringBuffer (MotionGestureEvent.jstatic_HASHCODE))
        (jm_appendint_1 _stringBuffer (jm_hashCode_1 (TsUtil.jm_getInstance_0) this))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_getId_0) (defgeneric jm_getId_0 (this)))
(defmethod jm_getId_0 ((this MotionGestureEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_id)))))



