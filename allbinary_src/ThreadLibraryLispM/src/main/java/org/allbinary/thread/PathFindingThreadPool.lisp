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

;This is mainly for network communications.
(defclass PathFindingThreadPool (ThreadPool)
  ())

(defvar PathFindingThreadPool.jcell_instance :jnone)
(defun PathFindingThreadPool.jstatic_instance ()
  (when (eq PathFindingThreadPool.jcell_instance :jnone) (setf PathFindingThreadPool.jcell_instance (PathFindingThreadPool.jnew_3 "PathFinding" 1 1)))
  PathFindingThreadPool.jcell_instance)

    
(defun PathFindingThreadPool.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PathFindingThreadPool.jstatic_instance)))))

    
(defun PathFindingThreadPool.jnew_3 (_poolName _numThreads _priority)
  (declare (ignorable _poolName _numThreads _priority))
  (let ((this (make-instance 'PathFindingThreadPool)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_runTaskWithPriority_1) (defgeneric jm_runTaskWithPriority_1 (this p1)))
(defmethod jm_runTaskWithPriority_1 ((this PathFindingThreadPool) _task)
  (declare (ignorable this _task))
  (let ()
    (block jreturn
        (call-next-method this _task))))

    
(unless (fboundp 'jm_runTask_1) (defgeneric jm_runTask_1 (this p1)))
(defmethod jm_runTask_1 ((this PathFindingThreadPool) _task)
  (declare (ignorable this _task))
  (let ()
    (block jreturn
        (call-next-method this _task))))

    
(unless (fboundp 'jm_startTask_1) (defgeneric jm_startTask_1 (this p1)))
(defmethod jm_startTask_1 ((this PathFindingThreadPool) _task)
  (declare (ignorable this _task))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_completedTask_1) (defgeneric jm_completedTask_1 (this p1)))
(defmethod jm_completedTask_1 ((this PathFindingThreadPool) _task)
  (declare (ignorable this _task))
  (let ()
    (block jreturn nil)))



