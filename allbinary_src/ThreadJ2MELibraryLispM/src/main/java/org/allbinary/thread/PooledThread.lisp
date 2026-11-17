;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.thread

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PooledThread (Thread)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_threadObjectUtil :initform nil)
   (f_threadPool :initform nil)
   (f_INTERRUPT_EXCEPTION :initform nil)))

    
(defun PooledThread.jnew_1 (_threadPool)
  (declare (ignorable _threadPool))
  (let ((this (make-instance 'PooledThread)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_threadObjectUtil) (ThreadObjectUtil.jm_getInstance_0))
    
    (setf (slot-value this 'f_INTERRUPT_EXCEPTION) "Exit InterruptedException")
  (let ()
    (block jreturn
        nil
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
        (setf (slot-value this 'f_threadPool) _threadPool)))
    this))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this PooledThread))
  (declare (ignorable this))
  (let (_task2 _logUtil)
  (declare (ignorable _task2 _logUtil))
    (block jreturn
        (jm_threadStarted_0 (slot-value this 'f_threadPool))
        (block jbreak (loop while t do
                (block jcontinue
            (setf _task2 (slot-value (slot-value this 'f_threadObjectUtil) 'f_NULL_PRIORITY_RUNNABLE))
            (handler-case (progn
                (setf _task2 (jm_getTask_0 (slot-value this 'f_threadPool)))
                (setf (slot-value (slot-value this 'f_threadPool) 'f_runningTask) t)
                (jm_startTask_1 (slot-value this 'f_threadPool) _task2))
                (error (_ex) (declare (ignorable _ex))
                (setf _logUtil (LogUtil.jm_getInstance_0))
                (jm_putF_3 _logUtil (slot-value this 'f_INTERRUPT_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))
                (return-from jbreak)))
            (if (eq _task2 (slot-value (slot-value this 'f_threadObjectUtil) 'f_NULL_PRIORITY_RUNNABLE))
                (progn
                (return-from jbreak)))
            (handler-case (progn
                (jm_run_0 _task2)
                (jm_completedTask_1 (slot-value this 'f_threadPool) _task2)
                (setf (slot-value (slot-value this 'f_threadPool) 'f_runningTask) nil))
                (error (_e) (declare (ignorable _e))
                (setf _logUtil (LogUtil.jm_getInstance_0))
                (jm_put_4 _logUtil (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION_LABEL)) (jm_toString_1 (StringUtil.jm_getInstance_0) _task2))) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN) _e))))))
        (jm_threadStopped_0 (slot-value this 'f_threadPool)))))



