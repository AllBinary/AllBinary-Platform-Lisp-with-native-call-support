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
;;;; package org.allbinary.midlet

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ExitRunnable (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_midlet :initform nil)
   (f_processor :initform nil)
   (f_isProgress :initform nil)))

    
(defun ExitRunnable.jnew_3 (_midlet _processor _isProgress)
  (declare (ignorable _midlet _processor _isProgress))
  (let ((this (make-instance 'ExitRunnable)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_midlet) _midlet)
        (setf (slot-value this 'f_isProgress) _isProgress)
        (setf (slot-value this 'f_processor) _processor)))
    this))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this ExitRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START_RUNNABLE) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))
            (jm_destroyAppInRunnable_2 (slot-value this 'f_midlet) nil (slot-value this 'f_isProgress))
            (jm_setDisplay_1 (slot-value this 'f_midlet) (NullCanvas.jstatic_NULL_CANVAS))
            (jm_notifyDestroyed_0 (slot-value this 'f_midlet))
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_END_RUNNABLE) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))
            (jm_process_0 (slot-value this 'f_processor)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN) _e)
            (handler-case (progn
                (jm_process_0 (slot-value this 'f_processor)))
                (error (_e2) (declare (ignorable _e2))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN) _e))))))))



