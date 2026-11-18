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

(defclass OnlyTouchButtonRecognizer (MotionRecognizer)
  ((f_touchButtonRecognizer :initform nil)
   (f_touchButtonProcessing :initform nil)))

    
(defun OnlyTouchButtonRecognizer.jnew_0 ()
  (let ((this (make-instance 'OnlyTouchButtonRecognizer)))
    
    (setf (slot-value this 'f_touchButtonProcessing) nil)
  (let ()
    (block jreturn
        (setf (slot-value this 'f_touchButtonRecognizer) (TouchButtonRecognizer.jnew_0))))
    this))

    
(unless (fboundp 'jm_processStartMotionEvent_4) (defgeneric jm_processStartMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processStartMotionEvent_4 ((this OnlyTouchButtonRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let ()
    (block jreturn
        (if (jm_pressTouchButtonInput_3 (slot-value this 'f_touchButtonRecognizer) _x _y _deviceId)
            (progn
            (setf (slot-value this 'f_touchButtonProcessing) t))))))

    
(unless (fboundp 'jm_processEndMotionEvent_4) (defgeneric jm_processEndMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processEndMotionEvent_4 ((this OnlyTouchButtonRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let ()
    (block jreturn
        (if (slot-value this 'f_touchButtonProcessing)
            (progn
            (setf (slot-value this 'f_touchButtonProcessing) nil)))
        (if (jm_releaseTouchButtonInput_3 (slot-value this 'f_touchButtonRecognizer) _x _y _deviceId)
            (progn
            (return-from jreturn))))))

    
(unless (fboundp 'jm_processDraggedMotionEvent_4) (defgeneric jm_processDraggedMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processDraggedMotionEvent_4 ((this OnlyTouchButtonRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let ()
    (block jreturn
        (if (slot-value this 'f_touchButtonProcessing)
            (progn
            (jm_pressTouchButtonInput_3 (slot-value this 'f_touchButtonRecognizer) _x _y _deviceId))))))



