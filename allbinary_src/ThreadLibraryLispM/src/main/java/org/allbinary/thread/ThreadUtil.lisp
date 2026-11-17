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

(defclass ThreadUtil (JObject)
  ((f_logUtil :initform nil)
   (f_JOIN :initform nil)))

(defvar ThreadUtil.jcell_instance :jnone)
(defun ThreadUtil.jstatic_instance ()
  (when (eq ThreadUtil.jcell_instance :jnone) (setf ThreadUtil.jcell_instance (ThreadUtil.jnew_0)))
  ThreadUtil.jcell_instance)

(defun ThreadUtil.jnew_0 ()
  (let ((this (make-instance 'ThreadUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_JOIN) "join")
    this))

    
(defun ThreadUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ThreadUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_isRunning_1) (defgeneric jm_isRunning_1 (this p1)))
(defmethod jm_isRunning_1 ((this ThreadUtil) _thread)
  (declare (ignorable this _thread))
  (let ()
    (block jreturn
        (if (and (not (null _thread)) (jm_isAlive_0 _thread))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_join_1) (defgeneric jm_join_1 (this p1)))
(defmethod jm_join_1 ((this ThreadUtil) _thread)
  (declare (ignorable this _thread))
  (let ()
    (block jreturn
        (if (jm_isRunning_1 (ThreadUtil.jm_getInstance_0) _thread)
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "Waiting for Thread To Join/End" this (slot-value this 'f_JOIN))
            (jm_join_0 _thread))))))



