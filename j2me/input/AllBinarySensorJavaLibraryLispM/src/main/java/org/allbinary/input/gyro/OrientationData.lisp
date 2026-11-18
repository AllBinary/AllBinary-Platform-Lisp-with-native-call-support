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
;;;; package org.allbinary.input.gyro

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OrientationData (JObject)
  ((f_ORIENTATION_SENSOR_INPUT :initform nil)
   (f_ORIENTATION_TYPE :initform nil)))

(defvar OrientationData.jcell_SINGLETON :jnone)
(defun OrientationData.jstatic_SINGLETON ()
  (when (eq OrientationData.jcell_SINGLETON :jnone) (setf OrientationData.jcell_SINGLETON (OrientationData.jnew_0)))
  OrientationData.jcell_SINGLETON)
(defun (setf OrientationData.jstatic_SINGLETON) (value) (setf OrientationData.jcell_SINGLETON value))

    
(defun OrientationData.jnew_0 ()
  (let ((this (make-instance 'OrientationData)))
    (setf (slot-value this 'f_ORIENTATION_SENSOR_INPUT) "Orientation Sensor Input")
    (setf (slot-value this 'f_ORIENTATION_TYPE) "Orientation Type")
  (let ()
    (block jreturn nil))
    this))

    
(defun OrientationData.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OrientationData.jstatic_SINGLETON)))))



