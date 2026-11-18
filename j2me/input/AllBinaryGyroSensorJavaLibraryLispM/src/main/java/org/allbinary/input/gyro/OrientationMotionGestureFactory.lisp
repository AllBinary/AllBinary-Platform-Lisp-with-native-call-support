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
;;;; package org.allbinary.input.gyro

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OrientationMotionGestureFactory (JObject)
  ((f_LEFT :initform nil)
   (f_RIGHT :initform nil)
   (f_UP :initform nil)
   (f_DOWN :initform nil)
   (f_ROLL_LEFT :initform nil)
   (f_ROLL_RIGHT :initform nil)))

(defvar OrientationMotionGestureFactory.jcell_instance :jnone)
(defun OrientationMotionGestureFactory.jstatic_instance ()
  (when (eq OrientationMotionGestureFactory.jcell_instance :jnone) (setf OrientationMotionGestureFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  OrientationMotionGestureFactory.jcell_instance)
(defun (setf OrientationMotionGestureFactory.jstatic_instance) (value) (setf OrientationMotionGestureFactory.jcell_instance value))

    
(defun OrientationMotionGestureFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (OrientationMotionGestureFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (OrientationMotionGestureFactory.jstatic_instance) (OrientationMotionGestureFactory.jnew_0))))
        (return-from jreturn (OrientationMotionGestureFactory.jstatic_instance)))))

    
(defun OrientationMotionGestureFactory.jnew_0 ()
  (let ((this (make-instance 'OrientationMotionGestureFactory)))
    
    
    
    
    
    
  (let (_MAX)
  (declare (ignorable _MAX))
    (block jreturn
        (setf _MAX (slot-value (InputFactory.jm_getInstance_0) 'f_MAX))
        (setf (slot-value this 'f_LEFT) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 20)) "Left Orient"))
        (setf (slot-value this 'f_RIGHT) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 21)) "Right Orient"))
        (setf (slot-value this 'f_UP) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 22)) "Up Orient"))
        (setf (slot-value this 'f_DOWN) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 23)) "Down Orient"))
        (setf (slot-value this 'f_ROLL_LEFT) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 24)) "Roll Left"))
        (setf (slot-value this 'f_ROLL_RIGHT) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 25)) "Roll Right"))))
    this))



