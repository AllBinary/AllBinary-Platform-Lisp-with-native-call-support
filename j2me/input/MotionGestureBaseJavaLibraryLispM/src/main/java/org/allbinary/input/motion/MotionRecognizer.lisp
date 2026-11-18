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

(defclass MotionRecognizer (JObject)
  ())

(defun MotionRecognizer.jnew_0 ()
  (let ((this (make-instance 'MotionRecognizer)))
    this))

    
(unless (fboundp 'jm_processStartMotionEvent_4) (defgeneric jm_processStartMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processStartMotionEvent_4 ((this MotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processEndMotionEvent_4) (defgeneric jm_processEndMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processEndMotionEvent_4 ((this MotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processDraggedMotionEvent_4) (defgeneric jm_processDraggedMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processDraggedMotionEvent_4 ((this MotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let ()
    (block jreturn nil)))



