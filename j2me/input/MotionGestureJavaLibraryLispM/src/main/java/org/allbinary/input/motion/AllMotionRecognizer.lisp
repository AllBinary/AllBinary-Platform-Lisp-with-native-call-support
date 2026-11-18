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

(defclass AllMotionRecognizer (MotionRecognizer)
  ((f_logUtil :initform nil)
   (f_motionGestureRecognizer :initform nil)
   (f_touchButtonProcessing :initform nil)
   (f_touchButtonRecognizer :initform nil)
   (f_id :initform 0)
   (f_lastX :initform 0)
   (f_lastY :initform 0)))

(defvar AllMotionRecognizer.jcell_index :jnone)
(defun AllMotionRecognizer.jstatic_index ()
  (when (eq AllMotionRecognizer.jcell_index :jnone) (setf AllMotionRecognizer.jcell_index 0))
  AllMotionRecognizer.jcell_index)
(defun (setf AllMotionRecognizer.jstatic_index) (value) (setf AllMotionRecognizer.jcell_index value))

(defvar AllMotionRecognizer.jcell_pointCircularPool :jnone)
(defun AllMotionRecognizer.jstatic_pointCircularPool ()
  (when (eq AllMotionRecognizer.jcell_pointCircularPool :jnone) (setf AllMotionRecognizer.jcell_pointCircularPool (GPointCircularPool.jnew_1 40)))
  AllMotionRecognizer.jcell_pointCircularPool)
(defun (setf AllMotionRecognizer.jstatic_pointCircularPool) (value) (setf AllMotionRecognizer.jcell_pointCircularPool value))

    
(defun AllMotionRecognizer.jnew_0 ()
  (let ((this (make-instance 'AllMotionRecognizer)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    (setf (slot-value this 'f_touchButtonProcessing) nil)
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_id) (prog1 (AllMotionRecognizer.jstatic_index) (setf (AllMotionRecognizer.jstatic_index) (JR.i32 (+ (AllMotionRecognizer.jstatic_index) 1)))))
        (setf (slot-value this 'f_motionGestureRecognizer) (MotionGestureRecognizer.jnew_1 (slot-value this 'f_id)))
        (setf (slot-value this 'f_touchButtonRecognizer) (TouchButtonRecognizer.jnew_0))))
    this))

    
(unless (fboundp 'jm_processStartMotionEvent_4) (defgeneric jm_processStartMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processStartMotionEvent_4 ((this AllMotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let (_point)
  (declare (ignorable _point))
    (block jreturn
        (if (jm_pressTouchButtonInput_3 (slot-value this 'f_touchButtonRecognizer) _x _y _deviceId)
            (progn
            (setf (slot-value this 'f_touchButtonProcessing) t)))
        (if (not (slot-value this 'f_touchButtonProcessing))
            (progn
            (setf _point (jm_getNextInstance_0 (AllMotionRecognizer.jstatic_pointCircularPool)))
            (jm_setX_1 _point _x)
            (jm_setY_1 _point _y)
            (jm_processPressedMotionEvent_3 (slot-value this 'f_motionGestureRecognizer) _point _deviceId _modifiers))))))

    
(unless (fboundp 'jm_processEndMotionEvent_4) (defgeneric jm_processEndMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processEndMotionEvent_4 ((this AllMotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let (_point)
  (declare (ignorable _point))
    (block jreturn
        (if (jm_releaseTouchButtonInput_3 (slot-value this 'f_touchButtonRecognizer) _x _y _deviceId)
            (progn
            nil))
        (if (not (slot-value this 'f_touchButtonProcessing))
            (progn
            (setf _point (jm_getNextInstance_0 (AllMotionRecognizer.jstatic_pointCircularPool)))
            (jm_setX_1 _point _x)
            (jm_setY_1 _point _y)
            (jm_processReleasedMotionEvent_3 (slot-value this 'f_motionGestureRecognizer) _point _deviceId _modifiers)))
        (if (slot-value this 'f_touchButtonProcessing)
            (progn
            (setf (slot-value this 'f_touchButtonProcessing) nil))))))

    
(unless (fboundp 'jm_processDraggedMotionEvent_4) (defgeneric jm_processDraggedMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processDraggedMotionEvent_4 ((this AllMotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let (_point)
  (declare (ignorable _point))
    (block jreturn
        (if (slot-value this 'f_touchButtonProcessing)
            (progn
            (jm_pressTouchButtonInput_3 (slot-value this 'f_touchButtonRecognizer) _x _y _deviceId)))
        (if (not (slot-value this 'f_touchButtonProcessing))
            (progn
            (setf _point (jm_getNextInstance_0 (AllMotionRecognizer.jstatic_pointCircularPool)))
            (jm_setX_1 _point _x)
            (jm_setY_1 _point _y)
            (jm_processDraggedMotionEvent_3 (slot-value this 'f_motionGestureRecognizer) _point _deviceId _modifiers))))))

    
(unless (fboundp 'jm_processMovedMotionEvent_4) (defgeneric jm_processMovedMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processMovedMotionEvent_4 ((this AllMotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let (_point)
  (declare (ignorable _point))
    (block jreturn
        (if (or (/= _x (slot-value this 'f_lastX)) (/= _y (slot-value this 'f_lastY)))
            (progn
            (setf (slot-value this 'f_lastX) _x)
            (setf (slot-value this 'f_lastY) _y)
            (setf _point (jm_getNextInstance_0 (AllMotionRecognizer.jstatic_pointCircularPool)))
            (jm_setX_1 _point _x)
            (jm_setY_1 _point _y)
            (jm_processMovedMotionEvent_3 (slot-value this 'f_motionGestureRecognizer) _point _deviceId _modifiers))))))

    
(unless (fboundp 'jm_processScrolledMotionEvent_4) (defgeneric jm_processScrolledMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processScrolledMotionEvent_4 ((this AllMotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let (_point)
  (declare (ignorable _point))
    (block jreturn
        (setf _point (jm_getNextInstance_0 (AllMotionRecognizer.jstatic_pointCircularPool)))
        (jm_setX_1 _point _x)
        (jm_setY_1 _point _y)
        (jm_processScrolledMotionEvent_3 (slot-value this 'f_motionGestureRecognizer) _point _deviceId _modifiers))))

    
(unless (fboundp 'jm_getMotionGestureRecognizer_0) (defgeneric jm_getMotionGestureRecognizer_0 (this)))
(defmethod jm_getMotionGestureRecognizer_0 ((this AllMotionRecognizer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_motionGestureRecognizer)))))



