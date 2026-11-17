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

(defclass ColorChangeEvent (AllBinaryEventObject)
  ((f_basicColor :initform nil)))

    
(defun ColorChangeEvent.jnew_1 (_anyType)
  (declare (ignorable _anyType))
  (let ((this (make-instance 'ColorChangeEvent)))
    (setf (slot-value this 'f_basicColor) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this ColorChangeEvent) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicColor) _basicColor))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this ColorChangeEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicColor)))))



