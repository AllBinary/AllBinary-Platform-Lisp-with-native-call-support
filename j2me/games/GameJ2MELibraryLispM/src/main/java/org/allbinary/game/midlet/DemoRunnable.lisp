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
;;;; package org.allbinary.game.midlet

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DemoRunnable (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_demoGameMidlet :initform nil)
   (f_startDemoGameMidletEvent :initform nil)))

    
(defun DemoRunnable.jnew_1 (_demoGameMidlet)
  (declare (ignorable _demoGameMidlet))
  (let ((this (make-instance 'DemoRunnable)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_demoGameMidlet) _demoGameMidlet)
        (setf (slot-value this 'f_startDemoGameMidletEvent) (DemoGameMidletEvent.jnew_2 (slot-value this 'f_demoGameMidlet) (slot-value (DemoGameMidletStateFactory.jm_getInstance_0) 'f_START_DEMO)))))
    this))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this DemoRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_START_LABEL)) "GameCanvasRunnableInterface")) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))
            (jm_commandAction_2 (slot-value this 'f_demoGameMidlet) (slot-value (MyCommandsFactory.jm_getInstance_0) 'f_SET_DISPLAYABLE) (ProgressCanvasFactory.jm_getInstance_0))
            (jm_setGameCanvasRunnableInterface_1 (slot-value this 'f_demoGameMidlet) (jm_createDemoGameCanvasRunnableInterface_0 (slot-value this 'f_demoGameMidlet)))
            (jm_demoSetup_0 (slot-value this 'f_demoGameMidlet))
            (jm_fireEvent_1 (DemoGameMidletEventHandler.jm_getInstance_0) (slot-value this 'f_startDemoGameMidletEvent))
            (jm_startGameCanvasRunnableInterface_0 (slot-value this 'f_demoGameMidlet))
            (jm_postDemoSetup_0 (slot-value this 'f_demoGameMidlet))
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_END_RUNNABLE) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN) _e))))))



