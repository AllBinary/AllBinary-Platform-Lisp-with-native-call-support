;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game.input.analog

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnalogLocationInput (JObject)
  ((f_playerId :initform 0)
   (f_customGPoint :initform nil)
   (f_rz :initform 0)
   (f_rightTrigger :initform 0)
   (f_leftTrigger :initform 0)))

(defvar AnalogLocationInput.jcell_NULL_ANALOG_LOCATION_INPUT :jnone)
(defun AnalogLocationInput.jstatic_NULL_ANALOG_LOCATION_INPUT ()
  (when (eq AnalogLocationInput.jcell_NULL_ANALOG_LOCATION_INPUT :jnone) (setf AnalogLocationInput.jcell_NULL_ANALOG_LOCATION_INPUT (AnalogLocationInput.jnew_1 (JR.i32 (- 1)))))
  AnalogLocationInput.jcell_NULL_ANALOG_LOCATION_INPUT)
(defun (setf AnalogLocationInput.jstatic_NULL_ANALOG_LOCATION_INPUT) (value) (setf AnalogLocationInput.jcell_NULL_ANALOG_LOCATION_INPUT value))

    
(defun AnalogLocationInput.jnew_1 (_playerId)
  (declare (ignorable _playerId))
  (let ((this (make-instance 'AnalogLocationInput)))
    
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_playerId) _playerId)
        (setf (slot-value this 'f_customGPoint) (CustomGPoint.jnew_3 0 0 0))))
    this))

    
(unless (fboundp 'jm_getPlayerId_0) (defgeneric jm_getPlayerId_0 (this)))
(defmethod jm_getPlayerId_0 ((this AnalogLocationInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_playerId)))))

    
(unless (fboundp 'jm_getCustomGPoint_0) (defgeneric jm_getCustomGPoint_0 (this)))
(defmethod jm_getCustomGPoint_0 ((this AnalogLocationInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_customGPoint)))))

    
(unless (fboundp 'jm_getRz_0) (defgeneric jm_getRz_0 (this)))
(defmethod jm_getRz_0 ((this AnalogLocationInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_rz)))))

    
(unless (fboundp 'jm_setRz_1) (defgeneric jm_setRz_1 (this p1)))
(defmethod jm_setRz_1 ((this AnalogLocationInput) _rz)
  (declare (ignorable this _rz))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_rz) _rz))))

    
(unless (fboundp 'jm_getRightTrigger_0) (defgeneric jm_getRightTrigger_0 (this)))
(defmethod jm_getRightTrigger_0 ((this AnalogLocationInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_rightTrigger)))))

    
(unless (fboundp 'jm_setRightTrigger_1) (defgeneric jm_setRightTrigger_1 (this p1)))
(defmethod jm_setRightTrigger_1 ((this AnalogLocationInput) _rightTrigger)
  (declare (ignorable this _rightTrigger))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_rightTrigger) _rightTrigger))))

    
(unless (fboundp 'jm_getLeftTrigger_0) (defgeneric jm_getLeftTrigger_0 (this)))
(defmethod jm_getLeftTrigger_0 ((this AnalogLocationInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_leftTrigger)))))

    
(unless (fboundp 'jm_setLeftTrigger_1) (defgeneric jm_setLeftTrigger_1 (this p1)))
(defmethod jm_setLeftTrigger_1 ((this AnalogLocationInput) _leftTrigger)
  (declare (ignorable this _leftTrigger))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_leftTrigger) _leftTrigger))))



