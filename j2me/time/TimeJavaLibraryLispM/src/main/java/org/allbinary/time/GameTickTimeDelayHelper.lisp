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
;;;; package org.allbinary.time

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameTickTimeDelayHelper (JObject)
  ((f_timeDelta :initform 0)
   (f_startTime :initform 0)
   (f_lastStartTime :initform 0)))

    
(defun GameTickTimeDelayHelper.jnew_1 (_startTime)
  (declare (ignorable _startTime))
  (let ((this (make-instance 'GameTickTimeDelayHelper)))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_startTime) _startTime)
        (setf (slot-value this 'f_lastStartTime) 0)))
    this))

    
(unless (fboundp 'jm_setStartTime_0) (defgeneric jm_setStartTime_0 (this)))
(defmethod jm_setStartTime_0 ((this GameTickTimeDelayHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_startTime) (JR.currentTimeMillis))
        (return-from jreturn (slot-value this 'f_startTime)))))

    
(unless (fboundp 'jm_loop_0) (defgeneric jm_loop_0 (this)))
(defmethod jm_loop_0 ((this GameTickTimeDelayHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (= (slot-value this 'f_lastStartTime) (Long.jstatic_MIN_VALUE))
            (progn
            (setf (slot-value this 'f_timeDelta) 0))
            (progn
            (setf (slot-value this 'f_timeDelta) (JR.i64 (- (JR.currentTimeMillis) (slot-value this 'f_lastStartTime)))))))))

    
(unless (fboundp 'jm_getTimeFromStart_0) (defgeneric jm_getTimeFromStart_0 (this)))
(defmethod jm_getTimeFromStart_0 ((this GameTickTimeDelayHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i64 (- (slot-value this 'f_startTime) (slot-value this 'f_lastStartTime)))))))



