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

(defclass MotionEventFactory (JObject)
  ((f_source :initform nil)
   (f_id :initform 0)))

(defvar MotionEventFactory.jcell_index :jnone)
(defun MotionEventFactory.jstatic_index ()
  (when (eq MotionEventFactory.jcell_index :jnone) (setf MotionEventFactory.jcell_index 0))
  MotionEventFactory.jcell_index)
(defun (setf MotionEventFactory.jstatic_index) (value) (setf MotionEventFactory.jcell_index value))

    
(defun MotionEventFactory.jnew_2 (_source _id)
  (declare (ignorable _source _id))
  (let ((this (make-instance 'MotionEventFactory)))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_source) _source)
        (setf (slot-value this 'f_id) _id)
        (setf (MotionEventFactory.jstatic_index) (jm_getId_0 (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_LAST_MOTION)))))
    this))

    
(unless (fboundp 'jm_getInstance_0) (defgeneric jm_getInstance_0 (this)))
(defmethod jm_getInstance_0 ((this MotionEventFactory))
  (declare (ignorable this))
  (let (_inputFactory _input)
  (declare (ignorable _inputFactory _input))
    (block jreturn
        (setf _inputFactory (InputFactory.jm_getInstance_0))
        (setf _input (jm_getInstanceById_1 _inputFactory (prog1 (MotionEventFactory.jstatic_index) (setf (MotionEventFactory.jstatic_index) (JR.i32 (+ (MotionEventFactory.jstatic_index) 1))))))
        (if (eq _input (slot-value _inputFactory 'f_NO_INPUT))
            (progn
            (return-from jreturn (MotionGestureEvent.jnew_3 (slot-value this 'f_source) (slot-value this 'f_id) (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_NO_MOTION))))
            (progn
            (return-from jreturn (MotionGestureEvent.jnew_3 (slot-value this 'f_source) (slot-value this 'f_id) _input)))))))



