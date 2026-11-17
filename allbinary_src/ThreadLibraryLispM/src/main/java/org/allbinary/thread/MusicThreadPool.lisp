;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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

(defclass MusicThreadPool (ThreadPool)
  ())

(defvar MusicThreadPool.jcell_THREAD_POOL :jnone)
(defun MusicThreadPool.jstatic_THREAD_POOL ()
  (when (eq MusicThreadPool.jcell_THREAD_POOL :jnone) (setf MusicThreadPool.jcell_THREAD_POOL (ThreadPool.jnew_3 "Music" 2 (ThreadPool.jstatic_NORMAL_PRIORITY))))
  MusicThreadPool.jcell_THREAD_POOL)

    
(defun MusicThreadPool.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MusicThreadPool.jstatic_THREAD_POOL)))))

    
(defun MusicThreadPool.jnew_3 (_poolName _numThreads _priority)
  (declare (ignorable _poolName _numThreads _priority))
  (let ((this (make-instance 'MusicThreadPool)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_runTask_1) (defgeneric jm_runTask_1 (this p1)))
(defmethod jm_runTask_1 ((this MusicThreadPool) _task)
  (declare (ignorable this _task))
  (let ()
    (block jreturn
        (JR.className (slot-value this 'f_logUtil))
        (call-next-method this _task))))

    
(unless (fboundp 'jm_startTask_1) (defgeneric jm_startTask_1 (this p1)))
(defmethod jm_startTask_1 ((this MusicThreadPool) _task)
  (declare (ignorable this _task))
  (let ()
    (block jreturn
        (JR.className (slot-value this 'f_logUtil)))))

    
(unless (fboundp 'jm_completedTask_1) (defgeneric jm_completedTask_1 (this p1)))
(defmethod jm_completedTask_1 ((this MusicThreadPool) _task)
  (declare (ignorable this _task))
  (let ()
    (block jreturn
        (JR.className (slot-value this 'f_logUtil)))))



