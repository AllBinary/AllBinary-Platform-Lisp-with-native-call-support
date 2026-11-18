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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CommonButtons (JObject)
  ((f_STANDARD_BUTTON_SIZE :initform 0)
   (f_NORMAL_BUTTON :initform nil)
   (f_LARGE_BUTTON :initform nil)))

(defvar CommonButtons.jcell_instance :jnone)
(defun CommonButtons.jstatic_instance ()
  (when (eq CommonButtons.jcell_instance :jnone) (setf CommonButtons.jcell_instance (CommonButtons.jnew_0)))
  CommonButtons.jcell_instance)
(defun (setf CommonButtons.jstatic_instance) (value) (setf CommonButtons.jcell_instance value))

    
(defun CommonButtons.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CommonButtons.jstatic_instance)))))

    
(defun CommonButtons.jnew_0 ()
  (let ((this (make-instance 'CommonButtons)))
    
    
    
  (let (_displayInfo _commonButtonSize _totalColumns _totalRows _max)
  (declare (ignorable _displayInfo _commonButtonSize _totalColumns _totalRows _max))
    (block jreturn
        (setf _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (setf _commonButtonSize 128)
        (block jbreak (loop while (> _commonButtonSize 64) do
                (block jcontinue
            (setf _totalColumns (JR.idiv (jm_getLastWidth_0 _displayInfo) _commonButtonSize))
            (setf _totalRows (JR.idiv (jm_getLastHeight_0 _displayInfo) _commonButtonSize))
            (setf _max _totalColumns)
            (if (> _totalRows _max)
                (progn
                (setf _max _totalRows)))
            (if (> _max 9)
                (progn
                (return-from jbreak)))
            (setf _commonButtonSize (ash _commonButtonSize (- (logand 1 31)))))))
        (setf (slot-value this 'f_STANDARD_BUTTON_SIZE) _commonButtonSize)
        (setf (slot-value this 'f_NORMAL_BUTTON) (Rectangle.jnew_3 (slot-value (PointFactory.jm_getInstance_0) 'f_ZERO_ZERO) (slot-value this 'f_STANDARD_BUTTON_SIZE) (slot-value this 'f_STANDARD_BUTTON_SIZE)))
        (setf (slot-value this 'f_LARGE_BUTTON) (Rectangle.jnew_3 (slot-value (PointFactory.jm_getInstance_0) 'f_ZERO_ZERO) (JR.i32 (ash (slot-value this 'f_STANDARD_BUTTON_SIZE) (logand 1 31))) (JR.i32 (ash (slot-value this 'f_STANDARD_BUTTON_SIZE) (logand 1 31)))))))
    this))



