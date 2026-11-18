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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass InputFactory (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_KEY_CODE_LABEL :initform nil)
   (f_DEVICE_ID_LABEL :initform nil)
   (f_MAX :initform 0)
   (f_inputIntegerArray :initform nil)
   (f_NO_INPUT :initform nil)))

(defvar InputFactory.jcell_instance :jnone)
(defun InputFactory.jstatic_instance ()
  (when (eq InputFactory.jcell_instance :jnone) (setf InputFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  InputFactory.jcell_instance)
(defun (setf InputFactory.jstatic_instance) (value) (setf InputFactory.jcell_instance value))

    
(defun InputFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (InputFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (InputFactory.jstatic_instance) (InputFactory.jnew_0))))
        (return-from jreturn (InputFactory.jstatic_instance)))))

    
(defun InputFactory.jnew_0 ()
  (let ((this (make-instance 'InputFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_KEY_CODE_LABEL) "KeyCode: ")
    (setf (slot-value this 'f_DEVICE_ID_LABEL) "DeviceId: ")
    (setf (slot-value this 'f_MAX) (jm_getMin_0 (SmallIntegerSingletonFactory.jm_getInstance_0)))
    (setf (slot-value this 'f_inputIntegerArray) (JR.newArray nil (slot-value this 'f_MAX)))
    (setf (slot-value this 'f_NO_INPUT) (Input.jnew_2 0 (slot-value (slot-value this 'f_commonStrings) 'f_UNKNOWN)))
  (let (_size _index)
  (declare (ignorable _size _index))
    (block jreturn
        (setf _size (length (slot-value this 'f_inputIntegerArray)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf (aref (slot-value this 'f_inputIntegerArray) _index) (slot-value this 'f_NO_INPUT)))
                (setf _index (JR.i32 (+ _index 1))))))))
    this))

    
(unless (fboundp 'jm_add_2) (defgeneric jm_add_2 (this p1 p2)))
(defmethod jm_add_2 ((this InputFactory) _id _input)
  (declare (ignorable this _id _input))
  (let ()
    (block jreturn
        (setf (aref (slot-value this 'f_inputIntegerArray) _id) _input))))

    
(unless (fboundp 'jm_getInstanceById_1) (defgeneric jm_getInstanceById_1 (this p1)))
(defmethod jm_getInstanceById_1 ((this InputFactory) _id)
  (declare (ignorable this _id))
  (let ()
    (block jreturn
        (if (< _id 0)
            (progn
            (setf _id (JR.i32 (- _id)))))
        (if (> _id (length (slot-value this 'f_inputIntegerArray)))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "Warning id: ") _id)) this (slot-value (slot-value this 'f_commonStrings) 'f_GET_INSTANCE))
            (return-from jreturn (slot-value this 'f_NO_INPUT))))
        (return-from jreturn (aref (slot-value this 'f_inputIntegerArray) _id)))))



