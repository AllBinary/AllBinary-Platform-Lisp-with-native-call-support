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
;;;; package org.allbinary.graphics.form.item

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LimitCommandsVisitor (Visitor)
  ((f_isNotSmallDisplay :initform nil)))

    
(defun LimitCommandsVisitor.jnew_0 ()
  (let ((this (make-instance 'LimitCommandsVisitor)))
    
  (let (_displayInfo)
  (declare (ignorable _displayInfo))
    (block jreturn
        (setf _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (setf (slot-value this 'f_isNotSmallDisplay) (or (and (jm_isPortrait_0 _displayInfo) (> (jm_getLastHeight_0 _displayInfo) (slot-value (ScreenInfo.jm_getInstance_0) 'f_SMALL_WIDTH))) (and (not (jm_isPortrait_0 _displayInfo)) (> (jm_getLastHeight_0 _displayInfo) (slot-value (ScreenInfo.jm_getInstance_0) 'f_SMALL_HEIGHT)))))))
    this))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this LimitCommandsVisitor) _anyType)
  (declare (ignorable this _anyType))
  (let (_command _booleanFactory)
  (declare (ignorable _command _booleanFactory))
    (block jreturn
        (setf _command _anyType)
        (setf _booleanFactory (BooleanFactory.jm_getInstance_0))
        (if (or (or (or (slot-value this 'f_isNotSmallDisplay) (eq (jm_getPriority_0 _command) 1)) (eq _command (slot-value (GameCommandsFactory.jm_getInstance_0) 'f_EXIT_COMMAND))) (eq _command (slot-value (GameCommandsFactory.jm_getInstance_0) 'f_EXIT_WITHOUT_PROGRESS_COMMAND)))
            (progn
            (return-from jreturn (slot-value _booleanFactory 'f_TRUE)))
            (progn
            (return-from jreturn (slot-value _booleanFactory 'f_FALSE)))))))



