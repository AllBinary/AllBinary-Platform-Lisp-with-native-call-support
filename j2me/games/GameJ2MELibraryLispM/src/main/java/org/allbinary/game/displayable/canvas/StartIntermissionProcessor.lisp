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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass StartIntermissionProcessor (Processor)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_gameCanvas :initform nil)
   (f_WAIT :initform 0)))

    
(defun StartIntermissionProcessor.jnew_1 (_gameCanvas)
  (declare (ignorable _gameCanvas))
  (let ((this (make-instance 'StartIntermissionProcessor)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    (setf (slot-value this 'f_WAIT) 5000)
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameCanvas) _gameCanvas)))
    this))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this StartIntermissionProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (jm_isElapsedTNT_1 (jm_getTimeDelayHelper_0 (jm_getStartIntermissionInterface_0 (slot-value this 'f_gameCanvas))) (slot-value this 'f_WAIT))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "Intermission End" this (slot-value (slot-value this 'f_commonStrings) 'f_PROCESS))
            (jm_setEnabled_1 (jm_getStartIntermissionInterface_0 (slot-value this 'f_gameCanvas)) nil))))))



