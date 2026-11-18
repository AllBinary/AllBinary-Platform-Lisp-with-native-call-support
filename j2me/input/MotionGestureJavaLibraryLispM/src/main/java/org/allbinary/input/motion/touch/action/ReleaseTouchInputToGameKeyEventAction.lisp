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
;;;; package org.allbinary.input.motion.touch.action

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ReleaseTouchInputToGameKeyEventAction (GameKeyCompleteMotionGestureInputEvent)
  ((f_NONE :initform nil)))

(defvar ReleaseTouchInputToGameKeyEventAction.jcell_instance :jnone)
(defun ReleaseTouchInputToGameKeyEventAction.jstatic_instance ()
  (when (eq ReleaseTouchInputToGameKeyEventAction.jcell_instance :jnone) (setf ReleaseTouchInputToGameKeyEventAction.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  ReleaseTouchInputToGameKeyEventAction.jcell_instance)
(defun (setf ReleaseTouchInputToGameKeyEventAction.jstatic_instance) (value) (setf ReleaseTouchInputToGameKeyEventAction.jcell_instance value))

    
(defun ReleaseTouchInputToGameKeyEventAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (ReleaseTouchInputToGameKeyEventAction.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (ReleaseTouchInputToGameKeyEventAction.jstatic_instance) (ReleaseTouchInputToGameKeyEventAction.jnew_0))))
        (return-from jreturn (ReleaseTouchInputToGameKeyEventAction.jstatic_instance)))))

    
(defun ReleaseTouchInputToGameKeyEventAction.jnew_0 ()
  (let ((this (make-instance 'ReleaseTouchInputToGameKeyEventAction)))
    (setf (slot-value this 'f_NONE) (slot-value (GameKeyFactory.jm_getInstance_0) 'f_NONE))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        nil
        (handler-case (progn
            (jm_setGameKey_1 this (slot-value this 'f_NONE))
            (jm_setGameKeyEvent_1 this (jm_getInstanceForInput_2 (GameKeyEventFactory.jm_getInstance_0) this (slot-value this 'f_NONE))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_CONSTRUCTOR) _e)))))
    this))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this ReleaseTouchInputToGameKeyEventAction))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



