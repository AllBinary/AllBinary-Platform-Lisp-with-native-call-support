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

(defclass TouchMotionGestureFactory (JObject)
  ((f_LEFT :initform nil)
   (f_RIGHT :initform nil)
   (f_UP :initform nil)
   (f_DOWN :initform nil)
   (f_PRESSED :initform nil)
   (f_RELEASED :initform nil)
   (f_DIAGONAL_DOWN_RIGHT :initform nil)
   (f_DIAGONAL_DOWN_LEFT :initform nil)
   (f_DIAGONAL_UP_RIGHT :initform nil)
   (f_DIAGONAL_UP_LEFT :initform nil)
   (f_SCROLL_UP :initform nil)
   (f_SCROLL_DOWN :initform nil)
   (f_NO_MOTION :initform nil)
   (f_LAST_MOTION :initform nil)))

(defvar TouchMotionGestureFactory.jcell_instance :jnone)
(defun TouchMotionGestureFactory.jstatic_instance ()
  (when (eq TouchMotionGestureFactory.jcell_instance :jnone) (setf TouchMotionGestureFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  TouchMotionGestureFactory.jcell_instance)
(defun (setf TouchMotionGestureFactory.jstatic_instance) (value) (setf TouchMotionGestureFactory.jcell_instance value))

    
(defun TouchMotionGestureFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (TouchMotionGestureFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (TouchMotionGestureFactory.jstatic_instance) (TouchMotionGestureFactory.jnew_0))))
        (return-from jreturn (TouchMotionGestureFactory.jstatic_instance)))))

    
(defun TouchMotionGestureFactory.jnew_0 ()
  (let ((this (make-instance 'TouchMotionGestureFactory)))
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  (let (_MAX)
  (declare (ignorable _MAX))
    (block jreturn
        (setf _MAX (slot-value (InputFactory.jm_getInstance_0) 'f_MAX))
        (setf (slot-value this 'f_LEFT) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 3)) "Left Touch"))
        (setf (slot-value this 'f_RIGHT) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 4)) "Right Touch"))
        (setf (slot-value this 'f_UP) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 5)) "Up Touch"))
        (setf (slot-value this 'f_DOWN) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 6)) "Down Touch"))
        (setf (slot-value this 'f_PRESSED) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 7)) "Screen Press"))
        (setf (slot-value this 'f_RELEASED) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 8)) "Released"))
        (setf (slot-value this 'f_DIAGONAL_DOWN_RIGHT) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 9)) "Diagonal Dn R"))
        (setf (slot-value this 'f_DIAGONAL_DOWN_LEFT) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 10)) "Diagonal Dn L"))
        (setf (slot-value this 'f_DIAGONAL_UP_RIGHT) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 11)) "Diagonal Up R"))
        (setf (slot-value this 'f_DIAGONAL_UP_LEFT) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 12)) "Diagonal Up L"))
        (setf (slot-value this 'f_SCROLL_UP) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 13)) "Scroll Up"))
        (setf (slot-value this 'f_SCROLL_DOWN) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 14)) "Scroll Down"))
        (setf (slot-value this 'f_NO_MOTION) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 2)) "No Motion"))
        (setf (slot-value this 'f_LAST_MOTION) (MotionGestureInput.jnew_2 (JR.i32 (- _MAX 19)) "Last Motion"))))
    this))



