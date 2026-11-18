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

(defclass MotionGestureToMotionGestureActionAssociation (JObject)
  ((f_list :initform nil)
   (f_motionGestureAction :initform nil)))

    
(defun MotionGestureToMotionGestureActionAssociation.jnew_2 (_list _commandAction)
  (declare (ignorable _list _commandAction))
  (let ((this (make-instance 'MotionGestureToMotionGestureActionAssociation)))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_list) _list)
        (setf (slot-value this 'f_motionGestureAction) _commandAction)))
    this))

    
(unless (fboundp 'jm_getMotionGesture_0) (defgeneric jm_getMotionGesture_0 (this)))
(defmethod jm_getMotionGesture_0 ((this MotionGestureToMotionGestureActionAssociation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_list)))))

    
(unless (fboundp 'jm_setMotionGestures_1) (defgeneric jm_setMotionGestures_1 (this p1)))
(defmethod jm_setMotionGestures_1 ((this MotionGestureToMotionGestureActionAssociation) _list)
  (declare (ignorable this _list))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_list) _list))))

    
(unless (fboundp 'jm_getCommandAction_0) (defgeneric jm_getCommandAction_0 (this)))
(defmethod jm_getCommandAction_0 ((this MotionGestureToMotionGestureActionAssociation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_motionGestureAction)))))

    
(unless (fboundp 'jm_setMotionGestureAction_1) (defgeneric jm_setMotionGestureAction_1 (this p1)))
(defmethod jm_setMotionGestureAction_1 ((this MotionGestureToMotionGestureActionAssociation) _commandAction)
  (declare (ignorable this _commandAction))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_motionGestureAction) _commandAction))))

    
(unless (fboundp 'jm_isMotionGestureArrayEquals_1) (defgeneric jm_isMotionGestureArrayEquals_1 (this p1)))
(defmethod jm_isMotionGestureArrayEquals_1 ((this MotionGestureToMotionGestureActionAssociation) _aList)
  (declare (ignorable this _aList))
  (let (_size _i)
  (declare (ignorable _size _i))
    (block jreturn
        (setf _size (jm_size_0 _aList))
        (if (/= (jm_size_0 (slot-value this 'f_list)) _size)
            (progn
            (return-from jreturn nil)))
        (progn
            (setf _i (JR.i32 (- _size 1)))
            (block jbreak (loop while (>= _i 0) do
                (block jcontinue
            (if (not (eq (aref (slot-value _aList 'f_objectArray) _i) (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _i)))
                (progn
                (return-from jreturn nil))))
                (setf _i (JR.i32 (- _i 1))))))
        (return-from jreturn t))))



