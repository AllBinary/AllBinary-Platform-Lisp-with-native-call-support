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
;;;; package org.allbinary.input.motion.gesture.configuration

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MotionGestureConfiguration (JObject)
  ((f_diagonalMotionGestureAllowed :initform nil)
   (f_diagonalTolerance :initform 0)
   (f_minimumMotionGesture :initform 0)
   (f_button :initform nil)
   (f_color :initform nil)
   (f_executingActions :initform nil)
   (f_mouseButtonMask :initform 0)
   (f_activeCommands :initform nil)))

    
(defun MotionGestureConfiguration.jnew_0 ()
  (let ((this (make-instance 'MotionGestureConfiguration)))
    (setf (slot-value this 'f_diagonalMotionGestureAllowed) t)
    (setf (slot-value this 'f_diagonalTolerance) 7)
    (setf (slot-value this 'f_minimumMotionGesture) 9)
    (setf (slot-value this 'f_button) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_color) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLUE))
    (setf (slot-value this 'f_executingActions) t)
    (setf (slot-value this 'f_mouseButtonMask) 0)
    (setf (slot-value this 'f_activeCommands) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_addMotionGestureAction_2) (defgeneric jm_addMotionGestureAction_2 (this p1 p2)))
(defmethod jm_addMotionGestureAction_2 ((this MotionGestureConfiguration) _list _commandAction)
  (declare (ignorable this _list _commandAction))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_activeCommands) (MotionGestureToMotionGestureActionAssociation.jnew_2 _list _commandAction)))))

    
(unless (fboundp 'jm_clearMotionGestureAction_0) (defgeneric jm_clearMotionGestureAction_0 (this)))
(defmethod jm_clearMotionGestureAction_0 ((this MotionGestureConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_activeCommands)))))

    
(unless (fboundp 'jm_getAssociateCommandActionsList_0) (defgeneric jm_getAssociateCommandActionsList_0 (this)))
(defmethod jm_getAssociateCommandActionsList_0 ((this MotionGestureConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_activeCommands)))))

    
(unless (fboundp 'jm_isDiagonalMotionGestureAllowed_0) (defgeneric jm_isDiagonalMotionGestureAllowed_0 (this)))
(defmethod jm_isDiagonalMotionGestureAllowed_0 ((this MotionGestureConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_diagonalMotionGestureAllowed)))))

    
(unless (fboundp 'jm_isExecutingActionsAllowed_0) (defgeneric jm_isExecutingActionsAllowed_0 (this)))
(defmethod jm_isExecutingActionsAllowed_0 ((this MotionGestureConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_executingActions)))))

    
(unless (fboundp 'jm_setExecutingActionsAllowed_1) (defgeneric jm_setExecutingActionsAllowed_1 (this p1)))
(defmethod jm_setExecutingActionsAllowed_1 ((this MotionGestureConfiguration) _executingActionAllowed)
  (declare (ignorable this _executingActionAllowed))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_executingActions) _executingActionAllowed))))

    
(unless (fboundp 'jm_setDiagonalMotionGestureAllowed_1) (defgeneric jm_setDiagonalMotionGestureAllowed_1 (this p1)))
(defmethod jm_setDiagonalMotionGestureAllowed_1 ((this MotionGestureConfiguration) _diagonalMotionGestureAllowed)
  (declare (ignorable this _diagonalMotionGestureAllowed))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_diagonalMotionGestureAllowed) _diagonalMotionGestureAllowed))))

    
(unless (fboundp 'jm_getDiagonalTolerance_0) (defgeneric jm_getDiagonalTolerance_0 (this)))
(defmethod jm_getDiagonalTolerance_0 ((this MotionGestureConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_diagonalTolerance)))))

    
(unless (fboundp 'jm_setDiagonalTolerance_1) (defgeneric jm_setDiagonalTolerance_1 (this p1)))
(defmethod jm_setDiagonalTolerance_1 ((this MotionGestureConfiguration) _diagonalTolerance)
  (declare (ignorable this _diagonalTolerance))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_diagonalTolerance) _diagonalTolerance))))

    
(unless (fboundp 'jm_getMinimumMotionGesture_0) (defgeneric jm_getMinimumMotionGesture_0 (this)))
(defmethod jm_getMinimumMotionGesture_0 ((this MotionGestureConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_minimumMotionGesture)))))

    
(unless (fboundp 'jm_setMinimumMotionGesture_1) (defgeneric jm_setMinimumMotionGesture_1 (this p1)))
(defmethod jm_setMinimumMotionGesture_1 ((this MotionGestureConfiguration) _minimumMotionGesture)
  (declare (ignorable this _minimumMotionGesture))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_minimumMotionGesture) _minimumMotionGesture))))

    
(unless (fboundp 'jm_getButton_0) (defgeneric jm_getButton_0 (this)))
(defmethod jm_getButton_0 ((this MotionGestureConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_button)))))

    
(unless (fboundp 'jm_setButton_1) (defgeneric jm_setButton_1 (this p1)))
(defmethod jm_setButton_1 ((this MotionGestureConfiguration) _button)
  (declare (ignorable this _button))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_button) _button))))

    
(unless (fboundp 'jm_getColor_0) (defgeneric jm_getColor_0 (this)))
(defmethod jm_getColor_0 ((this MotionGestureConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_color)))))

    
(unless (fboundp 'jm_setColor_1) (defgeneric jm_setColor_1 (this p1)))
(defmethod jm_setColor_1 ((this MotionGestureConfiguration) _color)
  (declare (ignorable this _color))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_color) _color))))

    
(unless (fboundp 'jm_getMouseButtonMask_0) (defgeneric jm_getMouseButtonMask_0 (this)))
(defmethod jm_getMouseButtonMask_0 ((this MotionGestureConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_mouseButtonMask)))))

    
(unless (fboundp 'jm_setMouseButtonMask_1) (defgeneric jm_setMouseButtonMask_1 (this p1)))
(defmethod jm_setMouseButtonMask_1 ((this MotionGestureConfiguration) _mouseButtonMask)
  (declare (ignorable this _mouseButtonMask))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_mouseButtonMask) _mouseButtonMask))))



