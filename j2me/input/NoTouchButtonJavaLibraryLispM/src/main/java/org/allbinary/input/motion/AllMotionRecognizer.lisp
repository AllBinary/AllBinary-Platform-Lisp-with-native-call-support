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

(defclass AllMotionRecognizer (JObject)
  ((f_id :initform 0)))

(defvar AllMotionRecognizer.jcell_index :jnone)
(defun AllMotionRecognizer.jstatic_index ()
  (when (eq AllMotionRecognizer.jcell_index :jnone) (setf AllMotionRecognizer.jcell_index 0))
  AllMotionRecognizer.jcell_index)
(defun (setf AllMotionRecognizer.jstatic_index) (value) (setf AllMotionRecognizer.jcell_index value))

    
(defun AllMotionRecognizer.jnew_0 ()
  (let ((this (make-instance 'AllMotionRecognizer)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_id) (prog1 (AllMotionRecognizer.jstatic_index) (setf (AllMotionRecognizer.jstatic_index) (JR.i32 (+ (AllMotionRecognizer.jstatic_index) 1)))))))
    this))

    
(unless (fboundp 'jm_processStartMotionEvent_4) (defgeneric jm_processStartMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processStartMotionEvent_4 ((this AllMotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processEndMotionEvent_4) (defgeneric jm_processEndMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processEndMotionEvent_4 ((this AllMotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processDraggedMotionEvent_4) (defgeneric jm_processDraggedMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processDraggedMotionEvent_4 ((this AllMotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processMovedMotionEvent_4) (defgeneric jm_processMovedMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processMovedMotionEvent_4 ((this AllMotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processScrolledMotionEvent_4) (defgeneric jm_processScrolledMotionEvent_4 (this p1 p2 p3 p4)))
(defmethod jm_processScrolledMotionEvent_4 ((this AllMotionRecognizer) _x _y _deviceId _modifiers)
  (declare (ignorable this _x _y _deviceId _modifiers))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getId_0) (defgeneric jm_getId_0 (this)))
(defmethod jm_getId_0 ((this AllMotionRecognizer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_id)))))



