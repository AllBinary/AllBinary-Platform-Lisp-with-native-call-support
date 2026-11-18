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
;;;; package org.allbinary.graphics.color

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ColorTemperatureUtil (JObject)
  ((f_basicColorFactory :initform nil)))

(defvar ColorTemperatureUtil.jcell_instance :jnone)
(defun ColorTemperatureUtil.jstatic_instance ()
  (when (eq ColorTemperatureUtil.jcell_instance :jnone) (setf ColorTemperatureUtil.jcell_instance (ColorTemperatureUtil.jnew_0)))
  ColorTemperatureUtil.jcell_instance)
(defun (setf ColorTemperatureUtil.jstatic_instance) (value) (setf ColorTemperatureUtil.jcell_instance value))

(defun ColorTemperatureUtil.jnew_0 ()
  (let ((this (make-instance 'ColorTemperatureUtil)))
    (setf (slot-value this 'f_basicColorFactory) (BasicColorFactory.jm_getInstance_0))
    this))

    
(defun ColorTemperatureUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ColorTemperatureUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getBasicColor_1) (defgeneric jm_getBasicColor_1 (this p1)))
(defmethod jm_getBasicColor_1 ((this ColorTemperatureUtil) _thirdTemp)
  (declare (ignorable this _thirdTemp))
  (let (_basicColor)
  (declare (ignorable _basicColor))
    (block jreturn
        (setf _basicColor (slot-value (slot-value this 'f_basicColorFactory) 'f_RED))
        (if (> _thirdTemp 3700)
            (progn
            (setf _basicColor (slot-value (slot-value this 'f_basicColorFactory) 'f_PURPLE)))
            (if (> _thirdTemp 3200)
            (progn
            (setf _basicColor (slot-value (slot-value this 'f_basicColorFactory) 'f_BLUE)))
            (if (> _thirdTemp 2700)
            (progn
            (setf _basicColor (slot-value (slot-value this 'f_basicColorFactory) 'f_PUCE)))
            (if (> _thirdTemp 2200)
            (progn
            (setf _basicColor (slot-value (slot-value this 'f_basicColorFactory) 'f_WHITE)))
            (if (> _thirdTemp 1700)
            (progn
            (setf _basicColor (slot-value (slot-value this 'f_basicColorFactory) 'f_GREEN)))
            (if (> _thirdTemp 1200)
            (progn
            (setf _basicColor (slot-value (slot-value this 'f_basicColorFactory) 'f_YELLOW)))
            (if (> _thirdTemp 700)
            (progn
            (setf _basicColor (slot-value (slot-value this 'f_basicColorFactory) 'f_ORANGE))))))))))
        (return-from jreturn _basicColor))))



