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
;;;; package org.allbinary.logic.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Orientation (JObject)
  ((f_yaw :initform nil)
   (f_pitch :initform nil)
   (f_roll :initform nil)))

(defvar Orientation.jcell_NONE :jnone)
(defun Orientation.jstatic_NONE ()
  (when (eq Orientation.jcell_NONE :jnone) (setf Orientation.jcell_NONE (Orientation.jnew_3 0 0 0)))
  Orientation.jcell_NONE)
(defun (setf Orientation.jstatic_NONE) (value) (setf Orientation.jcell_NONE value))

(defvar Orientation.jcell_SINGLETON :jnone)
(defun Orientation.jstatic_SINGLETON ()
  (when (eq Orientation.jcell_SINGLETON :jnone) (setf Orientation.jcell_SINGLETON (Orientation.jnew_3 0 0 0)))
  Orientation.jcell_SINGLETON)
(defun (setf Orientation.jstatic_SINGLETON) (value) (setf Orientation.jcell_SINGLETON value))

    
(defun Orientation.jm_getInstance_3 (_yaw _pitch _roll)
  (declare (ignorable _yaw _pitch _roll))
  (let ()
    (block jreturn
        (jm_setint_1 (slot-value (Orientation.jstatic_SINGLETON) 'f_yaw) _yaw)
        (jm_setint_1 (slot-value (Orientation.jstatic_SINGLETON) 'f_pitch) _pitch)
        (jm_setint_1 (slot-value (Orientation.jstatic_SINGLETON) 'f_roll) _roll)
        (return-from jreturn (Orientation.jstatic_SINGLETON)))))

    
(defun Orientation.jnew_3 (_yaw _pitch _roll)
  (declare (ignorable _yaw _pitch _roll))
  (let ((this (make-instance 'Orientation)))
    (setf (slot-value this 'f_yaw) (BasicDecimal.jnew_1 0))
    (setf (slot-value this 'f_pitch) (BasicDecimal.jnew_1 0))
    (setf (slot-value this 'f_roll) (BasicDecimal.jnew_1 0))
  (let ()
    (block jreturn
        (jm_setint_1 (slot-value this 'f_yaw) _yaw)
        (jm_setint_1 (slot-value this 'f_pitch) _pitch)
        (jm_setint_1 (slot-value this 'f_roll) _roll)))
    this))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this Orientation))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "Y: ")
        (jm_append_1 _stringBuffer (jm_toString_0 (slot-value this 'f_yaw)))
        (jm_append_1 _stringBuffer " P: ")
        (jm_append_1 _stringBuffer (jm_toString_0 (slot-value this 'f_pitch)))
        (jm_append_1 _stringBuffer " R: ")
        (jm_append_1 _stringBuffer (jm_toString_0 (slot-value this 'f_roll)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



