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

(defclass ThreadPool (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_NULL_RUNNABLE :initform nil)
   (f_threadPoolStrings :initform nil)
   (f_threadObjectUtil :initform nil)
   (f_poolName :initform nil)
   (f_priority :initform 0)
   (f_isAlive :initform nil)
   (f_taskQueue :initform nil)
   (f_threadID :initform 0)
   (f_numThreads :initform 0)
   (f_runningTask :initform nil)))

(defvar ThreadPool.jcell_ROOT_NAME :jnone)
(defun ThreadPool.jstatic_ROOT_NAME ()
  (when (eq ThreadPool.jcell_ROOT_NAME :jnone) (setf ThreadPool.jcell_ROOT_NAME "-PooledThread-"))
  ThreadPool.jcell_ROOT_NAME)

(defvar ThreadPool.jcell_NORMAL_PRIORITY :jnone)
(defun ThreadPool.jstatic_NORMAL_PRIORITY ()
  (when (eq ThreadPool.jcell_NORMAL_PRIORITY :jnone) (setf ThreadPool.jcell_NORMAL_PRIORITY (Thread.jstatic_NORM_PRIORITY)))
  ThreadPool.jcell_NORMAL_PRIORITY)

    
(defun ThreadPool.jnew_3 (_poolName _numThreads _priority)
  (declare (ignorable _poolName _numThreads _priority))
  (let ((this (make-instance 'ThreadPool)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_NULL_RUNNABLE) (NullRunnable.jm_getInstance_0))
    (setf (slot-value this 'f_threadPoolStrings) (ThreadPoolStrings.jm_getInstance_0))
    (setf (slot-value this 'f_threadObjectUtil) (ThreadObjectUtil.jm_getInstance_0))
    
    
    (setf (slot-value this 'f_isAlive) nil)
    (setf (slot-value this 'f_taskQueue) (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0)))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_poolName) _poolName)
        (setf (slot-value this 'f_priority) _priority)
        (setf (slot-value this 'f_numThreads) _numThreads)))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this ThreadPool))
  (declare (ignorable this))
  (let (_pooledThread _i)
  (declare (ignorable _pooledThread _i))
    (block jreturn
        (if (not (slot-value this 'f_isAlive))
            (progn
            (setf (slot-value this 'f_isAlive) t)
            (setf (slot-value this 'f_taskQueue) (BasicArrayListD.jnew_0))
            (setf _pooledThread nil)
            (progn
                (setf _i 0)
                (block jbreak (loop while (< _i (slot-value this 'f_numThreads)) do
                    (block jcontinue
                (setf _pooledThread (PooledThread.jnew_1 this))
                (jm_setPriority_1 _pooledThread (slot-value this 'f_priority))
                (jm_start_0 _pooledThread))
                    (setf _i (JR.i32 (+ _i 1)))))))))))

    
(unless (fboundp 'jm_runAPriorityTask_0) (defgeneric jm_runAPriorityTask_0 (this)))
(defmethod jm_runAPriorityTask_0 ((this ThreadPool))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_runTaskWithPriority_1) (defgeneric jm_runTaskWithPriority_1 (this p1)))
(defmethod jm_runTaskWithPriority_1 ((this ThreadPool) _task)
  (declare (ignorable this _task))
  (let (_size _runnable _lowerPriorityRunnable _index)
  (declare (ignorable _size _runnable _lowerPriorityRunnable _index))
    (block jreturn
        (progn
            (if (not (slot-value this 'f_isAlive))
                (progn
                (jm_init_0 this)))
            (if (not (null _task))
                (progn
                (setf _size (jm_size_0 (slot-value this 'f_taskQueue)))
                (setf _runnable nil)
                (setf _lowerPriorityRunnable (slot-value (slot-value this 'f_threadObjectUtil) 'f_NULL_PRIORITY_RUNNABLE))
                (progn
                    (setf _index 0)
                    (block jbreak (loop while (< _index _size) do
                        (block jcontinue
                    (setf _runnable (jm_get_1 (slot-value this 'f_taskQueue) _index))
                    (if (> (jm_getPriority_0 _runnable) (jm_getPriority_0 _task))
                        (progn
                        (setf _lowerPriorityRunnable _runnable)
                        (return-from jbreak))))
                        (setf _index (JR.i32 (+ _index 1))))))
                (if (eq _lowerPriorityRunnable (slot-value (slot-value this 'f_threadObjectUtil) 'f_NULL_PRIORITY_RUNNABLE))
                    (progn
                    (jm_add_1 (slot-value this 'f_taskQueue) _task))
                    (progn
                    (setf _index (jm_indexOf_1 (slot-value this 'f_taskQueue) _lowerPriorityRunnable))
                    (jm_addAt_2 (slot-value this 'f_taskQueue) _index _task)))
                (jm_notify_0 this)))))))

    
(unless (fboundp 'jm_runTask_1) (defgeneric jm_runTask_1 (this p1)))
(defmethod jm_runTask_1 ((this ThreadPool) _task)
  (declare (ignorable this _task))
  (let ()
    (block jreturn
        (progn
            (if (not (slot-value this 'f_isAlive))
                (progn
                (jm_init_0 this)))
            (if (not (null _task))
                (progn
                (jm_add_1 (slot-value this 'f_taskQueue) _task)
                (jm_notify_0 this)))))))

    
(unless (fboundp 'jm_getTask_0) (defgeneric jm_getTask_0 (this)))
(defmethod jm_getTask_0 ((this ThreadPool))
  (declare (ignorable this))
  (let (_runnable)
  (declare (ignorable _runnable))
    (block jreturn
        (progn
            (block jbreak (loop while (= (jm_size_0 (slot-value this 'f_taskQueue)) 0) do
                    (block jcontinue
                (if (not (slot-value this 'f_isAlive))
                    (progn
                    (return-from jreturn (slot-value this 'f_NULL_RUNNABLE))))
                (jm_wait_0 this))))
            (setf _runnable (jm_removeAt_1 (slot-value this 'f_taskQueue) 0))
            (return-from jreturn _runnable)))))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this ThreadPool))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (progn
            (if (slot-value this 'f_isAlive)
                (progn
                (jm_clear_0 (slot-value this 'f_taskQueue))))))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this ThreadPool))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (progn
            (if (slot-value this 'f_isAlive)
                (progn
                (setf (slot-value this 'f_isAlive) nil)
                (jm_clear_0 (slot-value this 'f_taskQueue))))))))

    
(unless (fboundp 'jm_join_0) (defgeneric jm_join_0 (this)))
(defmethod jm_join_0 ((this ThreadPool))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (progn
            (setf (slot-value this 'f_isAlive) nil)
            (jm_clear_0 (slot-value this 'f_taskQueue))
            (jm_notifyAll_0 this)))))

    
(unless (fboundp 'jm_isBusy_0) (defgeneric jm_isBusy_0 (this)))
(defmethod jm_isBusy_0 ((this ThreadPool))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (not (slot-value this 'f_isAlive))
            (progn
            (return-from jreturn nil)))
        (if (> (jm_size_0 (slot-value this 'f_taskQueue)) 0)
            (progn
            (return-from jreturn t)))
        (if (slot-value this 'f_runningTask)
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_threadStarted_0) (defgeneric jm_threadStarted_0 (this)))
(defmethod jm_threadStarted_0 ((this ThreadPool))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_threadStopped_0) (defgeneric jm_threadStopped_0 (this)))
(defmethod jm_threadStopped_0 ((this ThreadPool))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (= (slot-value this 'f_numThreads) 1)
            (progn
            (setf (slot-value this 'f_isAlive) nil)
            (jm_clear_0 (slot-value this 'f_taskQueue)))))))

    
(unless (fboundp 'jm_startTask_1) (defgeneric jm_startTask_1 (this p1)))
(defmethod jm_startTask_1 ((this ThreadPool) _task)
  (declare (ignorable this _task))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_completedTask_1) (defgeneric jm_completedTask_1 (this p1)))
(defmethod jm_completedTask_1 ((this ThreadPool) _task)
  (declare (ignorable this _task))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_createName_0) (defgeneric jm_createName_0 (this)))
(defmethod jm_createName_0 ((this ThreadPool))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_poolName)) (ThreadPool.jstatic_ROOT_NAME)) (prog1 (slot-value this 'f_threadID) (setf (slot-value this 'f_threadID) (JR.i32 (+ (slot-value this 'f_threadID) 1))))))))))



