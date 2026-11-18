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

(defclass GameRunnable (JObject)
  ((f_WAIT :initform 0)
   (f_FAST :initform 0)
   (f_waitInMillis :initform 0)))

    
(defun GameRunnable.jnew_0 ()
  (let ((this (make-instance 'GameRunnable)))
    (setf (slot-value this 'f_WAIT) 240)
    (setf (slot-value this 'f_FAST) 60)
    (setf (slot-value this 'f_waitInMillis) (slot-value this 'f_WAIT))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this GameRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_process_0 (DisplayInfoSingleton.jm_getInstance_0)))))

    
(unless (fboundp 'jm_processLoopSleep_0) (defgeneric jm_processLoopSleep_0 (this)))
(defmethod jm_processLoopSleep_0 ((this GameRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (Thread.jm_sleep_1 (slot-value this 'f_waitInMillis)))))



