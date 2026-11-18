;;;; Generated Code Do Not Modify
;;;; package org.allbinary.thread

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ThreadObjectUtil (JObject)
  ((f_NULL_PRIORITY_RUNNABLE :initform nil)))

(defvar ThreadObjectUtil.jcell_instance :jnone)
(defun ThreadObjectUtil.jstatic_instance ()
  (when (eq ThreadObjectUtil.jcell_instance :jnone) (setf ThreadObjectUtil.jcell_instance (ThreadObjectUtil.jnew_0)))
  ThreadObjectUtil.jcell_instance)
(defun (setf ThreadObjectUtil.jstatic_instance) (value) (setf ThreadObjectUtil.jcell_instance value))

(defun ThreadObjectUtil.jnew_0 ()
  (let ((this (make-instance 'ThreadObjectUtil)))
    (setf (slot-value this 'f_NULL_PRIORITY_RUNNABLE) (NullPriorityRunnable.jnew_0))
    this))

    
(defun ThreadObjectUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ThreadObjectUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_notifyObject_1) (defgeneric jm_notifyObject_1 (this p1)))
(defmethod jm_notifyObject_1 ((this ThreadObjectUtil) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (jm_notify_0 _anyType))))

    
(unless (fboundp 'jm_waitObject_1) (defgeneric jm_waitObject_1 (this p1)))
(defmethod jm_waitObject_1 ((this ThreadObjectUtil) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (jm_wait_0 _anyType))))

    
(unless (fboundp 'jm_waitObjectFor_2) (defgeneric jm_waitObjectFor_2 (this p1 p2)))
(defmethod jm_waitObjectFor_2 ((this ThreadObjectUtil) _anyType _delay)
  (declare (ignorable this _anyType _delay))
  (let ()
    (block jreturn
        (jm_waitFor_2 (TsUtil.jm_getInstance_0) _anyType _delay))))

    
(unless (fboundp 'jm_processThread_1) (defgeneric jm_processThread_1 (this p1)))
(defmethod jm_processThread_1 ((this ThreadObjectUtil) _runnable)
  (declare (ignorable this _runnable))
  (let (_thread)
  (declare (ignorable _thread))
    (block jreturn
        (setf _thread (Thread.jnew_1 _runnable))
        (jm_start_0 _thread))))



