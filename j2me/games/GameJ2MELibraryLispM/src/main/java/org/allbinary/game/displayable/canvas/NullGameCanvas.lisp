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

(defclass NullGameCanvas (AllBinaryGameCanvas)
  ((f_runningNull :initform nil)))

(defvar NullGameCanvas.jcell_instance :jnone)
(defun NullGameCanvas.jstatic_instance ()
  (when (eq NullGameCanvas.jcell_instance :jnone) (setf NullGameCanvas.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  NullGameCanvas.jcell_instance)
(defun (setf NullGameCanvas.jstatic_instance) (value) (setf NullGameCanvas.jcell_instance value))

(defvar NullGameCanvas.jcell_NO_GAME :jnone)
(defun NullGameCanvas.jstatic_NO_GAME ()
  (when (eq NullGameCanvas.jcell_NO_GAME :jnone) (setf NullGameCanvas.jcell_NO_GAME "No Background Game"))
  NullGameCanvas.jcell_NO_GAME)
(defun (setf NullGameCanvas.jstatic_NO_GAME) (value) (setf NullGameCanvas.jcell_NO_GAME value))

(defvar NullGameCanvas.jcell_TYPE :jnone)
(defun NullGameCanvas.jstatic_TYPE ()
  (when (eq NullGameCanvas.jcell_TYPE :jnone) (setf NullGameCanvas.jcell_TYPE 1))
  NullGameCanvas.jcell_TYPE)
(defun (setf NullGameCanvas.jstatic_TYPE) (value) (setf NullGameCanvas.jcell_TYPE value))

    
(defun NullGameCanvas.jm_createNull_0 ()
  (let ()
    (block jreturn
        (handler-case (progn
            (return-from jreturn (NullGameCanvas.jnew_1 (AllBinaryGameLayerManager.jm_getNullInstance_0))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (LogUtil.jm_getInstance_0) (slot-value (CommonStrings.jm_getInstance_0) 'f_EXCEPTION) "NullGameCanvas" (slot-value (CommonStrings.jm_getInstance_0) 'f_GET_INSTANCE) _e)
            (error (JR.newException "RuntimeException")))))))

    
(defun NullGameCanvas.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (NullGameCanvas.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (NullGameCanvas.jstatic_instance) (NullGameCanvas.jm_createNull_0))))
        (return-from jreturn (NullGameCanvas.jstatic_instance)))))

    
(defun NullGameCanvas.jm_createCanvas_1 (_gameLayerManager)
  (declare (ignorable _gameLayerManager))
  (let (_nullGameCanvas)
  (declare (ignorable _nullGameCanvas))
    (block jreturn
        (setf _nullGameCanvas (NullGameCanvas.jnew_1 _gameLayerManager))
        (jm_setInitialized_1 _nullGameCanvas t)
        (jm_setTitle_1 _nullGameCanvas (NullGameCanvas.jstatic_NO_GAME))
        (return-from jreturn _nullGameCanvas))))

    
(defun NullGameCanvas.jnew_1 (_gameLayerManager)
  (declare (ignorable _gameLayerManager))
  (let ((this (make-instance 'NullGameCanvas)))
    (setf (slot-value this 'f_runningNull) t)
  (let ()
    (block jreturn
        nil
        (jm_setWait_1 this 1200)))
    this))

    
(unless (fboundp 'jm_isGameOver_0) (defgeneric jm_isGameOver_0 (this)))
(defmethod jm_isGameOver_0 ((this NullGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_setRunning_1) (defgeneric jm_setRunning_1 (this p1)))
(defmethod jm_setRunning_1 ((this NullGameCanvas) _running)
  (declare (ignorable this _running))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_runningNull) _running))))

    
(unless (fboundp 'jm_isRunning_0) (defgeneric jm_isRunning_0 (this)))
(defmethod jm_isRunning_0 ((this NullGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_runningNull)))))

    
(unless (fboundp 'jm_pause_0) (defgeneric jm_pause_0 (this)))
(defmethod jm_pause_0 ((this NullGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setPaused_1 this t))))

    
(unless (fboundp 'jm_unPause_0) (defgeneric jm_unPause_0 (this)))
(defmethod jm_unPause_0 ((this NullGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setPaused_1 this nil))))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this NullGameCanvas) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let ()
    (block jreturn
        (jm_removeAllCommands_0 this)
        (jm_setCommandListener_1 this _cmdListener))))

    
(unless (fboundp 'jm_buildGameInit_1) (defgeneric jm_buildGameInit_1 (this p1)))
(defmethod jm_buildGameInit_1 ((this NullGameCanvas) _isProgress)
  (declare (ignorable this _isProgress))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_draw_1) (defgeneric jm_draw_1 (this p1)))
(defmethod jm_draw_1 ((this NullGameCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this NullGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START_RUNNABLE) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_END_RUNNABLE) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN) _e))))))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this NullGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (NullGameCanvas.jstatic_TYPE)))))



