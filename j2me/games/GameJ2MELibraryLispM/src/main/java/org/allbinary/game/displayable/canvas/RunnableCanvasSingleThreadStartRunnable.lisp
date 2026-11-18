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

(defclass RunnableCanvasSingleThreadStartRunnable (GameRunnable)
  ((f_logUtil :initform nil)
   (f_runnableCanvas :initform nil)))

    
(defun RunnableCanvasSingleThreadStartRunnable.jnew_1 (_demoCanvas)
  (declare (ignorable _demoCanvas))
  (let ((this (make-instance 'RunnableCanvasSingleThreadStartRunnable)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_runnableCanvas) _demoCanvas)))
    this))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this RunnableCanvasSingleThreadStartRunnable))
  (declare (ignorable this))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (jm_run_0 (slot-value this 'f_runnableCanvas)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_RUN) _e))))))

    
(unless (fboundp 'jm_processLoopSleep_0) (defgeneric jm_processLoopSleep_0 (this)))
(defmethod jm_processLoopSleep_0 ((this RunnableCanvasSingleThreadStartRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_processLoopSleep_0 (slot-value this 'f_runnableCanvas)))))



