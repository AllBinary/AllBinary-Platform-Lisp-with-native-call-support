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

(defclass EndLevelIntermissionProcessor (Processor)
  ((f_gameCanvas :initform nil)))

    
(defun EndLevelIntermissionProcessor.jnew_1 (_gameCanvas)
  (declare (ignorable _gameCanvas))
  (let ((this (make-instance 'EndLevelIntermissionProcessor)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameCanvas) _gameCanvas)))
    this))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this EndLevelIntermissionProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_processEndLevelIntermissionGameState_0 (slot-value this 'f_gameCanvas)))))



