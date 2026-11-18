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
;;;; package org.allbinary.media

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinaryVibration (AllBinaryVibrationME)
  ())

(defvar AllBinaryVibration.jcell_VIBRATION :jnone)
(defun AllBinaryVibration.jstatic_VIBRATION ()
  (when (eq AllBinaryVibration.jcell_VIBRATION :jnone) (setf AllBinaryVibration.jcell_VIBRATION (AllBinaryNoVibration.jstatic_NO_VIBRATION)))
  AllBinaryVibration.jcell_VIBRATION)
(defun (setf AllBinaryVibration.jstatic_VIBRATION) (value) (setf AllBinaryVibration.jcell_VIBRATION value))

    
(defun AllBinaryVibration.jnew_0 ()
  (let ((this (make-instance 'AllBinaryVibration)))
  (let ()
    (block jreturn nil))
    this))

    
(defun AllBinaryVibration.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AllBinaryVibration.jstatic_VIBRATION)))))

    
(defun AllBinaryVibration.jm_init_0 ()
  (let ()
    (block jreturn
        (if (eq (jm_intValue_0 (jm_getValue_0 (slot-value (GameConfigurationCentral.jm_getInstance_0) 'f_VIBRATION))) 0)
            (progn
            (setf (AllBinaryVibration.jstatic_VIBRATION) (AllBinaryNoVibration.jstatic_NO_VIBRATION)))
            (progn
            (setf (AllBinaryVibration.jstatic_VIBRATION) (AllBinaryVibration.jnew_0)))))))

    
(unless (fboundp 'jm_vibrate_3) (defgeneric jm_vibrate_3 (this p1 p2 p3)))
(defmethod jm_vibrate_3 ((this AllBinaryVibration) _duration _type _volume)
  (declare (ignorable this _duration _type _volume))
  (let ()
    (block jreturn nil)))



