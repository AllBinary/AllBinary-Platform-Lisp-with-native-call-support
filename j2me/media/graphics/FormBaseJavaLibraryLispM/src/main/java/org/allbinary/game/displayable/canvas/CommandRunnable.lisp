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

(defclass CommandRunnable (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_commandFormInputProcessor :initform nil)
   (f_command :initform nil)))

    
(defun CommandRunnable.jnew_2 (_commandFormInputProcessor _command)
  (declare (ignorable _commandFormInputProcessor _command))
  (let ((this (make-instance 'CommandRunnable)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_commandFormInputProcessor) _commandFormInputProcessor)
        (setf (slot-value this 'f_command) _command)))
    this))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this CommandRunnable))
  (declare (ignorable this))
  (let (_canvas _commandListener)
  (declare (ignorable _canvas _commandListener))
    (block jreturn
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START_RUNNABLE) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))
            (setf _canvas (jm_getCanvas_0 (slot-value this 'f_commandFormInputProcessor)))
            (setf _commandListener (jm_getCustomCommandListener_0 _canvas))
            (jm_commandAction_2 _commandListener (slot-value this 'f_command) _canvas)
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_END_RUNNABLE) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN) _e))))))



