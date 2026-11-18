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

;J2SEForJ2ME
(defclass ProgressMidlet (AllBinaryMidlet)
  ((f_abeClientInformation :initform nil)))

    
(defun ProgressMidlet.jnew_1 (_clientInformationFactory)
  (declare (ignorable _clientInformationFactory))
  (let ((this (make-instance 'ProgressMidlet)))
    
  (let ()
    (block jreturn
        (jm_preInit_0 this)
        (setf (slot-value this 'f_abeClientInformation) (jm_getInstance_0 _clientInformationFactory))))
    this))

    
(unless (fboundp 'jm_preInit_0) (defgeneric jm_preInit_0 (this)))
(defmethod jm_preInit_0 ((this ProgressMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_exitProgress_1) (defgeneric jm_exitProgress_1 (this p1)))
(defmethod jm_exitProgress_1 ((this ProgressMidlet) _isProgress)
  (declare (ignorable this _isProgress))
  (let (_processor _primaryThreadPool _runnable)
  (declare (ignorable _processor _primaryThreadPool _runnable))
    (block jreturn
        (setf _processor (jm_getExitInstance_1 (MidletExitProcessorFactory.jm_getInstance_0) this))
        (handler-case (progn
            (setf _primaryThreadPool (PrimaryThreadPool.jm_getInstance_0))
            (setf _runnable (ExitRunnable.jnew_3 this _processor _isProgress))
            (jm_runTask_1 _primaryThreadPool _runnable))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "exit" _e)
            (handler-case (progn
                (jm_process_0 _processor))
                (error (_e2) (declare (ignorable _e2))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "exit" _e))))))))



