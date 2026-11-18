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
;;;; package org.allbinary.input.motion.gesture

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TrackballMotionGestureFactory (JObject)
  ((f_LEFT :initform nil)
   (f_RIGHT :initform nil)
   (f_UP :initform nil)
   (f_DOWN :initform nil)))

(defvar TrackballMotionGestureFactory.jcell_instance :jnone)
(defun TrackballMotionGestureFactory.jstatic_instance ()
  (when (eq TrackballMotionGestureFactory.jcell_instance :jnone) (setf TrackballMotionGestureFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  TrackballMotionGestureFactory.jcell_instance)
(defun (setf TrackballMotionGestureFactory.jstatic_instance) (value) (setf TrackballMotionGestureFactory.jcell_instance value))

    
(defun TrackballMotionGestureFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (TrackballMotionGestureFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (TrackballMotionGestureFactory.jstatic_instance) (TrackballMotionGestureFactory.jnew_0))))
        (return-from jreturn (TrackballMotionGestureFactory.jstatic_instance)))))

    
(defun TrackballMotionGestureFactory.jnew_0 ()
  (let ((this (make-instance 'TrackballMotionGestureFactory)))
    
    
    
    
  (let (_MAX)
  (declare (ignorable _MAX))
    (block jreturn
        (setf _MAX (slot-value (InputFactory.jm_getInstance_0) 'f_MAX))
        (setf (slot-value this 'f_LEFT) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 26)) "L Trackball"))
        (setf (slot-value this 'f_RIGHT) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 27)) "R Trackball"))
        (setf (slot-value this 'f_UP) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 28)) "Up Trackball"))
        (setf (slot-value this 'f_DOWN) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 29)) "D Trackball"))))
    this))



