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

(defclass DemoGameMidlet (GameMidlet)
  ())

    
(defun DemoGameMidlet.jnew_1 (_clientInformationFactory)
  (declare (ignorable _clientInformationFactory))
  (let ((this (make-instance 'DemoGameMidlet)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_isContinue_0) (defgeneric jm_isContinue_0 (this)))
(defmethod jm_isContinue_0 ((this DemoGameMidlet))
  (declare (ignorable this))
  (let (_hashtable)
  (declare (ignorable _hashtable))
    (block jreturn
        (setf _hashtable (jm_getStartStateHashtable_0 this))
        (if (and (not (null _hashtable)) (> (jm_size_0 _hashtable) 0))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_getHighestLevel_0) (defgeneric jm_getHighestLevel_0 (this)))
(defmethod jm_getHighestLevel_0 ((this DemoGameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 1))))

    
(unless (fboundp 'jm_createDemoGameCanvasRunnableInterface_0) (defgeneric jm_createDemoGameCanvasRunnableInterface_0 (this)))
(defmethod jm_createDemoGameCanvasRunnableInterface_0 ((this DemoGameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED) this (slot-value (slot-value this 'f_commonStrings) 'f_CREATE))
        (return-from jreturn (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)))))

    
(unless (fboundp 'jm_createGameCanvasRunnable_1) (defgeneric jm_createGameCanvasRunnable_1 (this p1)))
(defmethod jm_createGameCanvasRunnable_1 ((this DemoGameMidlet) _allBinaryGameLayerManager)
  (declare (ignorable this _allBinaryGameLayerManager))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_createGameCanvasRunnableInterface_0) (defgeneric jm_createGameCanvasRunnableInterface_0 (this)))
(defmethod jm_createGameCanvasRunnableInterface_0 ((this DemoGameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_createGameCanvasRunnable_1 this (jm_createGameLayerManager_0 this))))))

    
(unless (fboundp 'jm_demoSetup_0) (defgeneric jm_demoSetup_0 (this)))
(defmethod jm_demoSetup_0 ((this DemoGameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_postDemoSetup_0) (defgeneric jm_postDemoSetup_0 (this)))
(defmethod jm_postDemoSetup_0 ((this DemoGameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setDemo_0) (defgeneric jm_setDemo_0 (this)))
(defmethod jm_setDemo_0 ((this DemoGameMidlet))
  (declare (ignorable this))
  (let (_progressCanvas)
  (declare (ignorable _progressCanvas))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this "setDemo")
        (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (jm_start_0 _progressCanvas)
        (jm_runTask_1 (PrimaryThreadPool.jm_getInstance_0) (DemoRunnable.jnew_1 this)))))

    
(unless (fboundp 'jm_createGame_0) (defgeneric jm_createGame_0 (this)))
(defmethod jm_createGame_0 ((this DemoGameMidlet))
  (declare (ignorable this))
  (let (_CREATE_GAME _progressCanvas _hashtable)
  (declare (ignorable _CREATE_GAME _progressCanvas _hashtable))
    (block jreturn
        (setf _CREATE_GAME "createGame")
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this _CREATE_GAME)
        (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (jm_start_0 _progressCanvas)
        (setf _hashtable (jm_getStartStateHashtable_0 this))
        (jm_setStartStateHashtable_1 this (slot-value (StdUtil.jm_getInstance_0) 'f_NULL_TABLE))
        (jm_runTask_1 (PrimaryThreadPool.jm_getInstance_0) (CreateGameRunnable.jnew_2 this _hashtable))
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_END) this _CREATE_GAME))))

    
(unless (fboundp 'jm_isReady_0) (defgeneric jm_isReady_0 (this)))
(defmethod jm_isReady_0 ((this DemoGameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))



