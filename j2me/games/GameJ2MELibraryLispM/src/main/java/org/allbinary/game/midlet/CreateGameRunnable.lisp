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

(defclass CreateGameRunnable (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_demoGameMidlet :initform nil)
   (f_hashtable :initform nil)
   (f_startGameMidletEvent :initform nil)))

    
(defun CreateGameRunnable.jnew_2 (_demoGameMidlet _hashtable)
  (declare (ignorable _demoGameMidlet _hashtable))
  (let ((this (make-instance 'CreateGameRunnable)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_demoGameMidlet) _demoGameMidlet)
        (setf (slot-value this 'f_hashtable) _hashtable)
        (setf (slot-value this 'f_startGameMidletEvent) (DemoGameMidletEvent.jnew_2 this (slot-value (DemoGameMidletStateFactory.jm_getInstance_0) 'f_START_GAME)))))
    this))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this CreateGameRunnable))
  (declare (ignorable this))
  (let (_progressCanvas)
  (declare (ignorable _progressCanvas))
    (block jreturn
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START_RUNNABLE) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))
            (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
            (jm_commandAction_2 (slot-value this 'f_demoGameMidlet) (slot-value (MyCommandsFactory.jm_getInstance_0) 'f_SET_DISPLAYABLE) _progressCanvas)
            (jm_stopGameCanvasRunnableInterface_0 (slot-value this 'f_demoGameMidlet))
            (jm_setGameCanvasRunnableInterface_1 (slot-value this 'f_demoGameMidlet) (jm_createGameCanvasRunnableInterface_0 (slot-value this 'f_demoGameMidlet)))
            (jm_setLoadStateHashtable_1 (jm_getGameCanvasRunnableInterface_0 (slot-value this 'f_demoGameMidlet)) (slot-value this 'f_hashtable))
            (jm_startGameCanvasRunnableInterface_0 (slot-value this 'f_demoGameMidlet))
            (jm_fireEvent_1 (DemoGameMidletEventHandler.jm_getInstance_0) (slot-value this 'f_startGameMidletEvent))
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_END_RUNNABLE) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN) _e))))))



