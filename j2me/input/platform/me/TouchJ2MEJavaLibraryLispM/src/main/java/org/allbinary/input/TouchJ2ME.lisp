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
;;;; package org.allbinary.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;TouchJ2ME
(defclass TouchJ2ME (JObject)
  ((f_logUtil :initform nil)
   (f_DEVICE_ID :initform 0)
   (f_motionRecognizer :initform nil)))

    
(defun TouchJ2ME.jnew_0 ()
  (let ((this (make-instance 'TouchJ2ME)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_DEVICE_ID) 0)
    (setf (slot-value this 'f_motionRecognizer) (AllMotionRecognizer.jnew_0))
  (let (_motionGesturesHandler)
  (declare (ignorable _motionGesturesHandler))
    (block jreturn
        (setf _motionGesturesHandler (jm_getMotionGesturesHandler_0 (jm_getMotionGestureRecognizer_0 (slot-value this 'f_motionRecognizer))))
        (jm_addListenerInterface_1 _motionGesturesHandler (GameMotionGestureListener.jnew_1 (MotionGestureReceiveInterfaceFactory.jm_getInstance_0)))))
    this))

    
(unless (fboundp 'jm_pointerDragged_2) (defgeneric jm_pointerDragged_2 (this p1 p2)))
(defmethod jm_pointerDragged_2 ((this TouchJ2ME) _x _y)
  (declare (ignorable this _x _y))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (jm_processDraggedMotionEvent_4 (slot-value this 'f_motionRecognizer) _x _y (slot-value this 'f_DEVICE_ID) 0))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this "pointerDragged" _e))))))

    
(unless (fboundp 'jm_pointerPressed_2) (defgeneric jm_pointerPressed_2 (this p1 p2)))
(defmethod jm_pointerPressed_2 ((this TouchJ2ME) _x _y)
  (declare (ignorable this _x _y))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (jm_processStartMotionEvent_4 (slot-value this 'f_motionRecognizer) _x _y (slot-value this 'f_DEVICE_ID) 0))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this "pointerPressed" _e))))))

    
(unless (fboundp 'jm_pointerReleased_2) (defgeneric jm_pointerReleased_2 (this p1 p2)))
(defmethod jm_pointerReleased_2 ((this TouchJ2ME) _x _y)
  (declare (ignorable this _x _y))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (jm_processEndMotionEvent_4 (slot-value this 'f_motionRecognizer) _x _y (slot-value this 'f_DEVICE_ID) 0))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this "pointerReleased" _e))))))



