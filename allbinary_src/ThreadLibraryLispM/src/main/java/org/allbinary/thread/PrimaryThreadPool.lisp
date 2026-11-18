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
;;;; package org.allbinary.thread

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PrimaryThreadPool (ThreadPool)
  ())

(defvar PrimaryThreadPool.jcell_THREAD_POOL :jnone)
(defun PrimaryThreadPool.jstatic_THREAD_POOL ()
  (when (eq PrimaryThreadPool.jcell_THREAD_POOL :jnone) (setf PrimaryThreadPool.jcell_THREAD_POOL (ThreadPool.jnew_3 "Primary" 1 (ThreadPool.jstatic_NORMAL_PRIORITY))))
  PrimaryThreadPool.jcell_THREAD_POOL)
(defun (setf PrimaryThreadPool.jstatic_THREAD_POOL) (value) (setf PrimaryThreadPool.jcell_THREAD_POOL value))

    
(defun PrimaryThreadPool.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PrimaryThreadPool.jstatic_THREAD_POOL)))))

    
(defun PrimaryThreadPool.jnew_3 (_poolName _numThreads _priority)
  (declare (ignorable _poolName _numThreads _priority))
  (let ((this (make-instance 'PrimaryThreadPool)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_runTask_1) (defgeneric jm_runTask_1 (this p1)))
(defmethod jm_runTask_1 ((this PrimaryThreadPool) _task)
  (declare (ignorable this _task))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendlong_1 (jm_append_1 (StringMaker.jnew_0) (jm_toString_1 (StringUtil.jm_getInstance_0) _task)) (JR.currentTimeMillis))) this (slot-value (slot-value this 'f_threadPoolStrings) 'f_ADD_TASK))
        (call-next-method this _task))))

    
(unless (fboundp 'jm_startTask_1) (defgeneric jm_startTask_1 (this p1)))
(defmethod jm_startTask_1 ((this PrimaryThreadPool) _task)
  (declare (ignorable this _task))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_threadPoolStrings) 'f_START_TASK)) (jm_toString_1 (StringUtil.jm_getInstance_0) _task))) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN)))))

    
(unless (fboundp 'jm_completedTask_1) (defgeneric jm_completedTask_1 (this p1)))
(defmethod jm_completedTask_1 ((this PrimaryThreadPool) _task)
  (declare (ignorable this _task))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_threadPoolStrings) 'f_COMPLETE_TASK)) (jm_toString_1 (StringUtil.jm_getInstance_0) _task))) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN)))))



