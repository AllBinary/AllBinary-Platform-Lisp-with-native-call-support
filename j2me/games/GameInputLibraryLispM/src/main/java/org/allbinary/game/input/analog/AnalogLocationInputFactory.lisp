;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game.input.analog

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnalogLocationInputFactory (JObject)
  ((f_list :initform nil)))

(defvar AnalogLocationInputFactory.jcell_instance :jnone)
(defun AnalogLocationInputFactory.jstatic_instance ()
  (when (eq AnalogLocationInputFactory.jcell_instance :jnone) (setf AnalogLocationInputFactory.jcell_instance (AnalogLocationInputFactory.jnew_0)))
  AnalogLocationInputFactory.jcell_instance)
(defun (setf AnalogLocationInputFactory.jstatic_instance) (value) (setf AnalogLocationInputFactory.jcell_instance value))

    
(defun AnalogLocationInputFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AnalogLocationInputFactory.jstatic_instance)))))

    
(defun AnalogLocationInputFactory.jnew_0 ()
  (let ((this (make-instance 'AnalogLocationInputFactory)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_addPlayer_1) (defgeneric jm_addPlayer_1 (this p1)))
(defmethod jm_addPlayer_1 ((this AnalogLocationInputFactory) _playerInputId)
  (declare (ignorable this _playerInputId))
  (let (_analogLocationInput)
  (declare (ignorable _analogLocationInput))
    (block jreturn
        (setf _analogLocationInput (AnalogLocationInput.jstatic_NULL_ANALOG_LOCATION_INPUT))
        (if (< _playerInputId (jm_size_0 (slot-value this 'f_list)))
            (progn
            (setf _analogLocationInput (jm_get_1 (slot-value this 'f_list) _playerInputId))))
        (if (eq _analogLocationInput (AnalogLocationInput.jstatic_NULL_ANALOG_LOCATION_INPUT))
            (progn
            (setf _analogLocationInput (AnalogLocationInput.jnew_1 _playerInputId))
            (jm_add_1 (slot-value this 'f_list) _analogLocationInput))))))

    
(unless (fboundp 'jm_getInstanceForPlayer_1) (defgeneric jm_getInstanceForPlayer_1 (this p1)))
(defmethod jm_getInstanceForPlayer_1 ((this AnalogLocationInputFactory) _playerInputId)
  (declare (ignorable this _playerInputId))
  (let ()
    (block jreturn
        (return-from jreturn (jm_get_1 (slot-value this 'f_list) _playerInputId)))))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this AnalogLocationInputFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_list)))))



