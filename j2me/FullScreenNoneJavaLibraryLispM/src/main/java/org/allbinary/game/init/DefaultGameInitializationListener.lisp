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
;;;; package org.allbinary.game.init

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DefaultGameInitializationListener (JObject)
  ((f_logUtil :initform nil)
   (f_swtJOGLProcessor :initform nil)
   (f_firstTime :initform nil)))

    
(defun DefaultGameInitializationListener.jnew_0 ()
  (let ((this (make-instance 'DefaultGameInitializationListener)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_swtJOGLProcessor) (SWTJOGLProcessor.jm_getInstance_0))
    (setf (slot-value this 'f_firstTime) t)
  (let (_gameInitializedEventHandler)
  (declare (ignorable _gameInitializedEventHandler))
    (block jreturn
        (setf _gameInitializedEventHandler (GameInitializedEventHandler.jm_getInstance_0))
        (jm_removeAllListeners_0 _gameInitializedEventHandler)
        (jm_addListenerInterface_1 _gameInitializedEventHandler this)))
    this))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this DefaultGameInitializationListener) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onGameInitialized_1) (defgeneric jm_onGameInitialized_1 (this p1)))
(defmethod jm_onGameInitialized_1 ((this DefaultGameInitializationListener) _gameInitializedEvent)
  (declare (ignorable this _gameInitializedEvent))
  (let (_ON_GAME_INITIALIZED _commonStrings)
  (declare (ignorable _ON_GAME_INITIALIZED _commonStrings))
    (block jreturn
        (setf _ON_GAME_INITIALIZED "onGameInitialized")
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_START) this _ON_GAME_INITIALIZED)
            (block jbreak (loop while (not (jm_isHolderCreated_0 (slot-value this 'f_swtJOGLProcessor))) do
                    (block jcontinue
                (jm_putF_3 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_UPDATE) this _ON_GAME_INITIALIZED)
                (Thread.jm_sleep_1 20))))
            (jm_init_1 (FeatureResourceInitializationUtil.jm_getInstance_0) (jm_getLevel_0 _gameInitializedEvent))
            (if (slot-value this 'f_firstTime)
                (progn
                (setf (slot-value this 'f_firstTime) nil))
                (progn
                (jm_onSurfaceChanged_0 (slot-value this 'f_swtJOGLProcessor)))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this _ON_GAME_INITIALIZED _e))))))



