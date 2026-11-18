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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DemoGameStartupRunnable (ABRunnable)
  ((f_logUtil :initform nil)
   (f_demoCanvas :initform nil)))

(defvar DemoGameStartupRunnable.jcell_TYPE :jnone)
(defun DemoGameStartupRunnable.jstatic_TYPE ()
  (when (eq DemoGameStartupRunnable.jcell_TYPE :jnone) (setf DemoGameStartupRunnable.jcell_TYPE 4))
  DemoGameStartupRunnable.jcell_TYPE)
(defun (setf DemoGameStartupRunnable.jstatic_TYPE) (value) (setf DemoGameStartupRunnable.jcell_TYPE value))

    
(defun DemoGameStartupRunnable.jnew_1 (_demoCanvas)
  (declare (ignorable _demoCanvas))
  (let ((this (make-instance 'DemoGameStartupRunnable)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_demoCanvas) _demoCanvas)))
    this))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this DemoGameStartupRunnable))
  (declare (ignorable this))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (jm_setRunning_1 this t)
            (jm_stopGameDemo_0 (slot-value this 'f_demoCanvas))
            (jm_create_0 (slot-value this 'f_demoCanvas))
            (jm_start_0 (slot-value this 'f_demoCanvas))
            (jm_setRunning_1 this nil))
            (error (_e) (declare (ignorable _e))
            (jm_setRunning_1 this nil)
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_RUN) _e))))))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this DemoGameStartupRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (DemoGameStartupRunnable.jstatic_TYPE)))))



