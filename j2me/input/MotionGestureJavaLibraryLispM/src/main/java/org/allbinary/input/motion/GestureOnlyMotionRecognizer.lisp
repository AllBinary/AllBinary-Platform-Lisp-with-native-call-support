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
;;;; package org.allbinary.input.motion

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GestureOnlyMotionRecognizer (MotionRecognizer)
  ((f_motionGestureRecognizer :initform nil)
   (f_id :initform 0)))

(defvar GestureOnlyMotionRecognizer.jcell_index :jnone)
(defun GestureOnlyMotionRecognizer.jstatic_index ()
  (when (eq GestureOnlyMotionRecognizer.jcell_index :jnone) (setf GestureOnlyMotionRecognizer.jcell_index 0))
  GestureOnlyMotionRecognizer.jcell_index)
(defun (setf GestureOnlyMotionRecognizer.jstatic_index) (value) (setf GestureOnlyMotionRecognizer.jcell_index value))

(defvar GestureOnlyMotionRecognizer.jcell_pointCircularPool :jnone)
(defun GestureOnlyMotionRecognizer.jstatic_pointCircularPool ()
  (when (eq GestureOnlyMotionRecognizer.jcell_pointCircularPool :jnone) (setf GestureOnlyMotionRecognizer.jcell_pointCircularPool (GPointCircularPool.jnew_1 40)))
  GestureOnlyMotionRecognizer.jcell_pointCircularPool)
(defun (setf GestureOnlyMotionRecognizer.jstatic_pointCircularPool) (value) (setf GestureOnlyMotionRecognizer.jcell_pointCircularPool value))

    
(defun GestureOnlyMotionRecognizer.jnew_0 ()
  (let ((this (make-instance 'GestureOnlyMotionRecognizer)))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_id) (prog1 (GestureOnlyMotionRecognizer.jstatic_index) (setf (GestureOnlyMotionRecognizer.jstatic_index) (JR.i32 (+ (GestureOnlyMotionRecognizer.jstatic_index) 1)))))
        (setf (slot-value this 'f_motionGestureRecognizer) (MotionGestureRecognizer.jnew_1 (slot-value this 'f_id)))))
    this))

    
(unless (fboundp 'jm_processStartMotionEvent_4) (defgeneric jm_processStartMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processStartMotionEvent_4 ((this GestureOnlyMotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let (_point)
  (declare (ignorable _point))
    (block jreturn
        (setf _point (jm_getNextInstance_0 (GestureOnlyMotionRecognizer.jstatic_pointCircularPool)))
        (jm_setX_1 _point _x)
        (jm_setY_1 _point _y)
        (jm_processPressedMotionEvent_3 (slot-value this 'f_motionGestureRecognizer) _point _deviceId _modifiers))))

    
(unless (fboundp 'jm_processEndMotionEvent_4) (defgeneric jm_processEndMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processEndMotionEvent_4 ((this GestureOnlyMotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let (_point)
  (declare (ignorable _point))
    (block jreturn
        (setf _point (jm_getNextInstance_0 (GestureOnlyMotionRecognizer.jstatic_pointCircularPool)))
        (jm_setX_1 _point _x)
        (jm_setY_1 _point _y)
        (jm_processReleasedMotionEvent_3 (slot-value this 'f_motionGestureRecognizer) _point _deviceId _modifiers))))

    
(unless (fboundp 'jm_processDraggedMotionEvent_4) (defgeneric jm_processDraggedMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processDraggedMotionEvent_4 ((this GestureOnlyMotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let (_point)
  (declare (ignorable _point))
    (block jreturn
        (setf _point (jm_getNextInstance_0 (GestureOnlyMotionRecognizer.jstatic_pointCircularPool)))
        (jm_setX_1 _point _x)
        (jm_setY_1 _point _y)
        (jm_processDraggedMotionEvent_3 (slot-value this 'f_motionGestureRecognizer) _point _deviceId _modifiers))))



