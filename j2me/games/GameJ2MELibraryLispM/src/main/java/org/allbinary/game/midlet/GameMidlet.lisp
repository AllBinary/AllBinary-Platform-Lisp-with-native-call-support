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

(defclass GameMidlet (ProgressMidlet)
  ((f_enumerationUtil :initform nil)
   (f_basicColorFactory :initform nil)
   (f_features :initform nil)
   (f_midletStrings :initform nil)
   (f_myCommandsFactory :initform nil)
   (f_gameStrings :initform nil)
   (f_gameAdStateFactory :initform nil)
   (f_gameStateFactory :initform nil)
   (f_tsUtil :initform nil)
   (f_DISPLAYABLE :initform nil)
   (f_COMMAND_NAME :initform nil)
   (f_NO_COMMAND :initform nil)
   (f_NO_DISPLAYABLE :initform nil)
   (f_COMMAND_ACTION :initform nil)
   (f_PAUSE_APP_BACKGROUND :initform nil)
   (f_UN_PAUSE_APP_BACKGROUND :initform nil)
   (f_aboutCommandProcessor :initform nil)
   (f_webCommandProcessor :initform nil)
   (f_gameMidletStateFactory :initform nil)
   (f_gameStartTimeHelper :initform nil)
   (f_fullScreenUtil :initform nil)
   (f_debugInterface :initform nil)
   (f_allbinaryGameCanvasRunnableInterface :initform nil)
   (f_thread :initform nil)
   (f_loadGameForm :initform nil)
   (f_isFullScreen :initform nil)
   (f_resized :initform nil)
   (f_startedBefore :initform nil)))

    
(defun GameMidlet.jnew_1 (_clientInformationFactory)
  (declare (ignorable _clientInformationFactory))
  (let ((this (make-instance 'GameMidlet)))
    (setf (slot-value this 'f_enumerationUtil) (EnumerationUtil.jm_getInstance_0))
    (setf (slot-value this 'f_basicColorFactory) (BasicColorFactory.jm_getInstance_0))
    (setf (slot-value this 'f_features) (Features.jm_getInstance_0))
    (setf (slot-value this 'f_midletStrings) (MidletStrings.jm_getInstance_0))
    (setf (slot-value this 'f_myCommandsFactory) (MyCommandsFactory.jm_getInstance_0))
    (setf (slot-value this 'f_gameStrings) (GameStrings.jm_getInstance_0))
    (setf (slot-value this 'f_gameAdStateFactory) (GameAdStateFactory.jm_getInstance_0))
    (setf (slot-value this 'f_gameStateFactory) (GameStateFactory.jm_getInstance_0))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
    (setf (slot-value this 'f_DISPLAYABLE) " Displayable: ")
    (setf (slot-value this 'f_COMMAND_NAME) "command Name/Label: ")
    (setf (slot-value this 'f_NO_COMMAND) "No Command")
    (setf (slot-value this 'f_NO_DISPLAYABLE) "No Displayable")
    (setf (slot-value this 'f_COMMAND_ACTION) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "GameMidlet::") (slot-value (slot-value this 'f_midletStrings) 'f_COMMAND_ACTION))))
    (setf (slot-value this 'f_PAUSE_APP_BACKGROUND) "pauseAppBackground")
    (setf (slot-value this 'f_UN_PAUSE_APP_BACKGROUND) "unPauseAppBackground")
    (setf (slot-value this 'f_aboutCommandProcessor) (AboutCommandProcessor.jm_getInstance_0))
    (setf (slot-value this 'f_webCommandProcessor) (WebCommandProcessor.jm_getInstance_0))
    (setf (slot-value this 'f_gameMidletStateFactory) (GameMidletStateFactory.jm_getInstance_0))
    (setf (slot-value this 'f_gameStartTimeHelper) (TimeDelayHelper.jnew_1 240))
    (setf (slot-value this 'f_fullScreenUtil) (FullScreenUtil.jm_getInstance_0))
    
    (setf (slot-value this 'f_allbinaryGameCanvasRunnableInterface) (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE))
    (setf (slot-value this 'f_thread) (NullThread.jstatic_NULL_THREAD))
    
    
    
    (setf (slot-value this 'f_startedBefore) nil)
  (let (_progressCanvas)
  (declare (ignorable _progressCanvas))
    (block jreturn
        nil
        (jm_initWithRange_2 (SmallIntegerSingletonFactory.jm_getInstance_0) #x291 6)
        (setf (slot-value this 'f_loadGameForm) (CommandForm.jm_getNullCommandForm_0))
        (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (jm_init_1 _progressCanvas this)
        (jm_addListenerInterface_1 (GameFeatureEventHandler.jm_getInstance_0) (ChangedGameFeatureListener.jm_getInstance_0))
        (jm_clear_0 (GamePersistanceSingleton.jm_getInstance_0))
        (setf (slot-value this 'f_debugInterface) (DebugFactory.jm_getInstance_0))
        (jm_init_0 this)))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this GameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setDemo_0) (defgeneric jm_setDemo_0 (this)))
(defmethod jm_setDemo_0 ((this GameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_createGame_0) (defgeneric jm_createGame_0 (this)))
(defmethod jm_createGame_0 ((this GameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_mediaShutdown_0) (defgeneric jm_mediaShutdown_0 (this)))
(defmethod jm_mediaShutdown_0 ((this GameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_stopAll_0) (defgeneric jm_stopAll_0 (this)))
(defmethod jm_stopAll_0 ((this GameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_pauseApp_0) (defgeneric jm_pauseApp_0 (this)))
(defmethod jm_pauseApp_0 ((this GameMidlet))
  (declare (ignorable this))
  (let (_gameAdState)
  (declare (ignorable _gameAdState))
    (block jreturn
        (jm_pauseAppBackground_1 this t)
        (setf _gameAdState (jm_getCurrentInstance_0 (slot-value this 'f_gameAdStateFactory)))
        (jm_stopAll_0 (jm_getAdvertisements_0 _gameAdState)))))

    
(unless (fboundp 'jm_pauseAppBackground_1) (defgeneric jm_pauseAppBackground_1 (this p1)))
(defmethod jm_pauseAppBackground_1 ((this GameMidlet) _background)
  (declare (ignorable this _background))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value this 'f_PAUSE_APP_BACKGROUND))
        (if (not (eq (slot-value this 'f_allbinaryGameCanvasRunnableInterface) (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)))
            (progn
            (jm_pause_0 (slot-value this 'f_allbinaryGameCanvasRunnableInterface)))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "<<<<<< Null" this (slot-value this 'f_PAUSE_APP_BACKGROUND))))
        (jm_shutdown_0 (AllBinarySensorManager.jm_getInstance_0)))))

    
(unless (fboundp 'jm_unPauseApp_0) (defgeneric jm_unPauseApp_0 (this)))
(defmethod jm_unPauseApp_0 ((this GameMidlet))
  (declare (ignorable this))
  (let (_gameAdState)
  (declare (ignorable _gameAdState))
    (block jreturn
        (jm_unPauseAppBackground_1 this t)
        (setf _gameAdState (jm_getCurrentInstance_0 (slot-value this 'f_gameAdStateFactory)))
        (jm_startAll_0 (jm_getAdvertisements_0 _gameAdState)))))

    
(unless (fboundp 'jm_unPauseAppBackground_1) (defgeneric jm_unPauseAppBackground_1 (this p1)))
(defmethod jm_unPauseAppBackground_1 ((this GameMidlet) _background)
  (declare (ignorable this _background))
  (let (_gameCanvasRunnableInterface)
  (declare (ignorable _gameCanvasRunnableInterface))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value this 'f_UN_PAUSE_APP_BACKGROUND))
        (jm_init_0 (AllBinarySensorManager.jm_getInstance_0))
        (setf _gameCanvasRunnableInterface (slot-value this 'f_allbinaryGameCanvasRunnableInterface))
        (if (not (eq _gameCanvasRunnableInterface (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)))
            (progn
            (jm_unPause_0 _gameCanvasRunnableInterface))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "<<<<<< Null" this (slot-value this 'f_UN_PAUSE_APP_BACKGROUND)))))))

    
(unless (fboundp 'jm_destroyAppInRunnable_2) (defgeneric jm_destroyAppInRunnable_2 (this p1 p2)))
(defmethod jm_destroyAppInRunnable_2 ((this GameMidlet) _unconditional _isProgress)
  (declare (ignorable this _unconditional _isProgress))
  (let (_progressCanvas)
  (declare (ignorable _progressCanvas))
    (block jreturn
        (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (if _isProgress
            (progn
            (jm_start_0 _progressCanvas)
            (jm_commandAction_2 this (slot-value (slot-value this 'f_myCommandsFactory) 'f_SET_DISPLAYABLE) _progressCanvas)))
        (jm_destroyApp_1 this _unconditional)
        (if _isProgress
            (progn
            (jm_end_0 _progressCanvas))))))

    
(unless (fboundp 'jm_destroyApp_1) (defgeneric jm_destroyApp_1 (this p1)))
(defmethod jm_destroyApp_1 ((this GameMidlet) _unconditional)
  (declare (ignorable this _unconditional))
  (let (_METHOD_NAME _gameAdState)
  (declare (ignorable _METHOD_NAME _gameAdState))
    (block jreturn
        (setf _METHOD_NAME "GameMidlet::destroyApp")
        (handler-case (progn
            (PreLogUtil.jm_put_3 (jm_toString_0 (GameStatisticsFactory.jm_getInstance_0)) this _METHOD_NAME)
            (setf _gameAdState (jm_getCurrentInstance_0 (slot-value this 'f_gameAdStateFactory)))
            (jm_stopAll_0 (jm_getAdvertisements_0 _gameAdState))
            (if (not (jm_isDestroyed_0 this))
                (progn
                (jm_stopGameCanvasRunnableInterface_0 this)
                (jm_setGameCanvasRunnableInterface_1 this (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE))
                (jm_mediaShutdown_0 this))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) "Midlet Managment Error: Midlet Should Only Be Destroyed Once" this _METHOD_NAME)))
            (call-next-method this t)
            (PreLogUtil.jm_put_3 (slot-value (slot-value this 'f_commonStrings) 'f_END) this _METHOD_NAME))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this _METHOD_NAME _e)))
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_END) this _METHOD_NAME))))

    
(unless (fboundp 'jm_startApp_0) (defgeneric jm_startApp_0 (this)))
(defmethod jm_startApp_0 ((this GameMidlet))
  (declare (ignorable this))
  (let (_gameAdState _START_APP _gameCanvasRunnableInterface)
  (declare (ignorable _gameAdState _START_APP _gameCanvasRunnableInterface))
    (block jreturn
        (handler-case (progn
            (setf _gameAdState (jm_getCurrentInstance_0 (slot-value this 'f_gameAdStateFactory)))
            (jm_startAll_0 (jm_getAdvertisements_0 _gameAdState))
            (setf _START_APP "startApp")
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this _START_APP)
            (setf _gameCanvasRunnableInterface (slot-value this 'f_allbinaryGameCanvasRunnableInterface))
            (if (eq _gameCanvasRunnableInterface (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE))
                (progn
                (jm_setCurrentGameState_1 (slot-value this 'f_gameMidletStateFactory) (slot-value (slot-value this 'f_gameStateFactory) 'f_NO_GAME_STATE))
                (jm_setDemo_0 this))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) "GameCanvasRunnableInterface is available" this _START_APP)
                (if (eq _gameCanvasRunnableInterface (jm_getCurrentDisplayable_0 this))
                    (progn
                    (jm_unPauseAppBackground_1 this nil))
                    (progn
                    (jm_putF_3 (slot-value this 'f_logUtil) "GameCanvasRunnableInterface is not current displayable" this _START_APP))))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "startApp" _e)
            (jm_destroyApp_1 this nil)
            (jm_notifyDestroyed_0 this))))))

    
(unless (fboundp 'jm_commandAction_2) (defgeneric jm_commandAction_2 (this p1 p2)))
(defmethod jm_commandAction_2 ((this GameMidlet) _command _displayable)
  (declare (ignorable this _command _displayable))
  (let (_displayableAsString _label _gameCommandsFactory _allbinaryGameCanvasRunnableInterface _gameCanvasRunnableInterface _mainFeatureFactory _isFullScreen _virtualKeyboardEventHandler _highScoreTextBox _keyValuePersistance _loadGameForm _index _menuListener _layerManager _stringBuffer _inGameOptionsForm _progressCanvas _inGameOptionsFormFactory _tempDisplayable _gameInputMappingCanvas _highScoresCanvas _gameCanvas _inApplicationPurchaseFactory _list _lockableFeature)
  (declare (ignorable _displayableAsString _label _gameCommandsFactory _allbinaryGameCanvasRunnableInterface _gameCanvasRunnableInterface _mainFeatureFactory _isFullScreen _virtualKeyboardEventHandler _highScoreTextBox _keyValuePersistance _loadGameForm _index _menuListener _layerManager _stringBuffer _inGameOptionsForm _progressCanvas _inGameOptionsFormFactory _tempDisplayable _gameInputMappingCanvas _highScoresCanvas _gameCanvas _inApplicationPurchaseFactory _list _lockableFeature))
    (block jreturn
        (handler-case (progn
            (setf _displayableAsString (slot-value this 'f_NO_DISPLAYABLE))
            (if (not (null _displayable))
                (progn
                (setf _displayableAsString (jm_toString_0 _displayable))))
            (setf _label (slot-value this 'f_NO_COMMAND))
            (if (not (null _command))
                (progn
                (setf _label (jm_getLabel_0 _command))))
            (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_COMMAND_NAME)) _label) (slot-value this 'f_DISPLAYABLE)) _displayableAsString)) this (slot-value this 'f_COMMAND_ACTION))
            (setf _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
            (setf _allbinaryGameCanvasRunnableInterface (slot-value this 'f_allbinaryGameCanvasRunnableInterface))
            (setf _gameCanvasRunnableInterface _allbinaryGameCanvasRunnableInterface)
            (if (eq _command (slot-value _gameCommandsFactory 'f_SHOW_GAME_CANVAS))
                (progn
                (if (and (not (eq (jm_getCurrent_0 (jm_getDisplay_0 this)) _gameCanvasRunnableInterface)) (not (eq (jm_getType_0 _allbinaryGameCanvasRunnableInterface) (jm_getType_0 (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)))))
                    (progn
                    (jm_setDisplay_1 this _gameCanvasRunnableInterface)))
                (jm_unPauseAppBackground_1 this nil))
                (if (eq _command (slot-value _gameCommandsFactory 'f_CLOSE_AND_SHOW_GAME_CANVAS))
                (progn
                (setf _menuListener _displayable)
                (jm_close_0 _menuListener)
                (jm_setDisplay_1 this _gameCanvasRunnableInterface)
                (jm_unPauseAppBackground_1 this nil))
                (if (eq _command (slot-value _gameCommandsFactory 'f_EXIT_COMMAND))
                (progn
                (if (= (jm_size_0 (jm_getEventListenerInterfaceListP_0 (GameMidletEventHandler.jm_getInstance_0))) 0)
                    (progn
                    (jm_exitProgress_1 this t)))
                (jm_fireEvent_1 (GameMidletEventHandler.jm_getInstance_0) (DemoGameMidletEvent.jnew_2 this (slot-value (DemoGameMidletStateFactory.jm_getInstance_0) 'f_NONE))))
                (if (eq _command (slot-value _gameCommandsFactory 'f_EXIT_WITHOUT_PROGRESS_COMMAND))
                (progn
                (jm_exitProgress_1 this nil))
                (if (or (or (eq _command (slot-value _gameCommandsFactory 'f_START_COMMAND)) (eq _command (slot-value _gameCommandsFactory 'f_RESTART_COMMAND))) (eq _command (slot-value _gameCommandsFactory 'f_CONTINUE_COMMAND)))
                (progn
                (if (or (not (eq (jm_getCurrentGameState_0 (slot-value this 'f_gameMidletStateFactory)) (slot-value (slot-value this 'f_gameStateFactory) 'f_PLAYING_GAME_STATE))) (eq _command (slot-value _gameCommandsFactory 'f_RESTART_COMMAND)))
                    (progn
                    (if (jm_isTimeTNT_0 (slot-value this 'f_gameStartTimeHelper))
                        (progn
                        (if (and (eq _command (slot-value _gameCommandsFactory 'f_START_COMMAND)) (jm_isDemoLoading_0 this))
                            (progn
                            (jm_putF_3 (slot-value this 'f_logUtil) "Trying to Start Game Before Loading Complete" this (slot-value (slot-value this 'f_midletStrings) 'f_COMMAND_ACTION)))
                            (progn
                            (setf (slot-value this 'f_startedBefore) t)
                            (jm_createGame_0 this)
                            (jm_setCurrentGameState_1 (slot-value this 'f_gameMidletStateFactory) (slot-value (slot-value this 'f_gameStateFactory) 'f_PLAYING_GAME_STATE)))))
                        (progn
                        (jm_putF_3 (slot-value this 'f_logUtil) "Starting Game Too Often" this (slot-value (slot-value this 'f_midletStrings) 'f_COMMAND_ACTION)))))
                    (progn
                    (jm_putF_3 (slot-value this 'f_logUtil) "Already in playing state" this (slot-value this 'f_COMMAND_ACTION)))))
                (if (eq _command (slot-value _gameCommandsFactory 'f_BUY_COMMAND))
                (progn
                (setf _inApplicationPurchaseFactory (InApplicationPurchaseFactory.jm_getInstance_0))
                (setf _list (jm_getList_0 (LockableFeatureFactory.jm_getInstance_0)))
                (setf _lockableFeature (jm_get_1 _list 0))
                (if (and (> (jm_size_0 _list) 0) (not (jm_isPurchased_1 _inApplicationPurchaseFactory _lockableFeature)))
                    (progn
                    (jm_purchase_1 _inApplicationPurchaseFactory _lockableFeature))
                    (progn
                    (jm_fireSuccess_1 (TextNotificationUtil.jm_getInstance_0) "Already Purchased"))))
                (if (eq _command (slot-value _gameCommandsFactory 'f_QUIT_COMMAND))
                (progn
                (if (jm_isTimeTNT_0 (slot-value this 'f_gameStartTimeHelper))
                    (progn
                    (if (typep _displayable 'HighScoreTextBox)
                        (progn
                        (setf _menuListener _displayable)
                        (jm_close_0 _menuListener)))
                    (jm_stopGameCanvasRunnableInterface_0 this)
                    (jm_setCurrentGameState_1 (slot-value this 'f_gameMidletStateFactory) (slot-value (slot-value this 'f_gameStateFactory) 'f_NO_GAME_STATE))
                    (jm_setDemo_0 this))))
                (if (eq _command (slot-value (slot-value this 'f_myCommandsFactory) 'f_RESUME_COMMAND))
                (progn
                (jm_unPauseAppBackground_1 this nil))
                (if (eq _command (slot-value (slot-value this 'f_myCommandsFactory) 'f_PAUSE_COMMAND))
                (progn
                (jm_pauseAppBackground_1 this nil))
                (if (eq _command (slot-value (slot-value this 'f_myCommandsFactory) 'f_SET_DISPLAYABLE))
                (progn
                (jm_pauseAppBackground_1 this nil)
                (jm_setDisplay_1 this _displayable))
                (if (eq _command (slot-value _gameCommandsFactory 'f_SET_MENU_DISPLAYABLE))
                (progn
                (jm_pauseAppBackground_1 this nil)
                (setf _menuListener _displayable)
                (jm_open_0 _menuListener)
                (jm_setDisplay_1 this _displayable))
                (if (eq _command (slot-value _gameCommandsFactory 'f_START_TRACE))
                (progn
                (jm_start_0 (slot-value this 'f_debugInterface))
                (setf _gameCanvas _allbinaryGameCanvasRunnableInterface)
                (jm_addCommand_1 _gameCanvas (slot-value _gameCommandsFactory 'f_STOP_TRACE))
                (jm_removeCommand_1 _gameCanvas (slot-value _gameCommandsFactory 'f_START_TRACE)))
                (if (eq _command (slot-value _gameCommandsFactory 'f_STOP_TRACE))
                (progn
                (jm_pauseAppBackground_1 this nil)
                (jm_stop_0 (slot-value this 'f_debugInterface))
                (jm_unPauseAppBackground_1 this nil)
                (setf _gameCanvas _allbinaryGameCanvasRunnableInterface)
                (jm_addCommand_1 _gameCanvas (slot-value _gameCommandsFactory 'f_START_TRACE))
                (jm_removeCommand_1 _gameCanvas (slot-value _gameCommandsFactory 'f_STOP_TRACE)))
                (if (eq _command (slot-value _gameCommandsFactory 'f_DEFAULT_OPTIONS))
                (progn
                (setf _tempDisplayable _displayable)
                (if (typep _tempDisplayable 'GameOptionsForm)
                    (progn
                    (jm_setDefault_1 (GameFeatureFormUtil.jm_getInstance_0) _tempDisplayable))))
                (if (eq _command (GameInputMappingInstructionsCanvas.jstatic_DISPLAY))
                (progn
                (setf _tempDisplayable _displayable)
                (if (typep _tempDisplayable 'GameInputMappingCanvas)
                    (progn
                    (setf _gameInputMappingCanvas _tempDisplayable)
                    (jm_update_0 _gameInputMappingCanvas)))
                (jm_commandAction_2 this (slot-value _gameCommandsFactory 'f_SET_MENU_DISPLAYABLE) (jm_getInputMappingInstructionsCanvas_0 this)))
                (if (jm_isHighScoreCommand_1 (HighScoreCommandsFactory.jm_getInstance_0) _command)
                (progn
                (setf _tempDisplayable _displayable)
                (if (typep _tempDisplayable 'HighScoresCanvas)
                    (progn
                    (setf _highScoresCanvas _tempDisplayable)
                    (jm_updateCommand_1 _highScoresCanvas _command))))
                (if (eq _command (slot-value (HighScoreCommands.jm_getInstance_0) 'f_DISPLAY))
                (progn
                (jm_commandAction_2 this (slot-value _gameCommandsFactory 'f_SET_MENU_DISPLAYABLE) (jm_createHighScoresCanvas_0 this)))
                (if (eq _command (GameInputMappingInstructionsCanvas.jstatic_CLOSE))
                (progn
                (setf _menuListener _displayable)
                (jm_close_0 _menuListener)
                (jm_commandAction_2 this (GameInputMappingCanvas.jstatic_DISPLAY) (NullCanvas.jstatic_NULL_CANVAS)))
                (if (eq _command (GameInputMappingCanvas.jstatic_DISPLAY))
                (progn
                (if (J2MEUtil.jm_isHTML_0)
                    (progn
                    (jm_pauseAppBackground_1 this nil)))
                (jm_commandAction_2 this (slot-value _gameCommandsFactory 'f_SET_MENU_DISPLAYABLE) (jm_getInputMappingCanvas_0 this)))
                (if (eq _command (GameInputMappingCanvas.jstatic_DEFAULT))
                (progn
                (setf _tempDisplayable _displayable)
                (if (typep _tempDisplayable 'GameInputMappingCanvas)
                    (progn
                    (setf _gameInputMappingCanvas _tempDisplayable)
                    (jm_setDefault_0 _gameInputMappingCanvas))))
                (if (eq _command (InGameOptionsForm.jstatic_DISPLAY))
                (progn
                (jm_pauseAppBackground_1 this nil)
                (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
                (jm_addNormalPortion_2 _progressCanvas 50 "In Game Options")
                (setf _layerManager (jm_createGameLayerManager_0 this))
                (setf _inGameOptionsFormFactory (InGameOptionsFormFactory.jm_getInstance_0))
                (jm_init_5 _inGameOptionsFormFactory this (InGameFeatures.jnew_0) "Options In Game" (jm_getBackgroundBasicColor_0 _layerManager) (jm_getForegroundBasicColor_0 _layerManager))
                (setf _inGameOptionsForm (jm_get_0 _inGameOptionsFormFactory))
                (jm_setItemStateListener_1 _inGameOptionsForm _allbinaryGameCanvasRunnableInterface)
                (jm_commandAction_2 this (slot-value _gameCommandsFactory 'f_SET_MENU_DISPLAYABLE) _inGameOptionsForm))
                (if (eq _command (InGameOptionsForm.jstatic_DEFAULT))
                (progn
                (setf _inGameOptionsForm (jm_get_0 (InGameOptionsFormFactory.jm_getInstance_0)))
                (jm_setDefault_1 (GameFeatureFormUtil.jm_getInstance_0) _inGameOptionsForm))
                (if (eq _command (slot-value _gameCommandsFactory 'f_DISPLAY_OPTIONS))
                (progn
                (AllBinaryMediaManager.jm_setMuted_1 t)
                (jm_stopAll_0 this)
                (setf _mainFeatureFactory (MainFeatureFactory.jm_getInstance_0))
                (setf (slot-value this 'f_isFullScreen) (jm_isFeature_1 (slot-value this 'f_features) (slot-value _mainFeatureFactory 'f_FULL_SCREEN)))
                (jm_fireEvent_1 (ResizableListenerHandler.jm_getInstance_0) t)
                (jm_setResized_1 this nil)
                (jm_commandAction_2 this (slot-value _gameCommandsFactory 'f_SET_MENU_DISPLAYABLE) (jm_getGameOptionsForm_0 this)))
                (if (eq _command (slot-value _gameCommandsFactory 'f_CLOSE_OPTIONS))
                (progn
                (jm_fireEvent_1 (ResizableListenerHandler.jm_getInstance_0) nil)
                (jm_commandAction_2 this (slot-value _gameCommandsFactory 'f_CLOSE_AND_SHOW_GAME_CANVAS) _displayable)
                (setf _stringBuffer (StringMaker.jnew_0))
                (jm_append_1 _stringBuffer "Close isFullScreen/change: ")
                (jm_appendboolean_1 _stringBuffer (slot-value this 'f_isFullScreen))
                (jm_appendboolean_1 _stringBuffer (jm_isScreenChange_1 (slot-value this 'f_fullScreenUtil) (slot-value this 'f_isFullScreen)))
                (jm_append_1 _stringBuffer " isResized: ")
                (jm_appendboolean_1 _stringBuffer (jm_isResized_0 this))
                (PreLogUtil.jm_put_3 (jm_toString_0 _stringBuffer) this (slot-value this 'f_COMMAND_ACTION))
                (if (or (jm_isResized_0 this) (jm_isScreenChange_1 (slot-value this 'f_fullScreenUtil) (slot-value this 'f_isFullScreen)))
                    (progn
                    (jm_updateFullScreen_0 this)))
                (AllBinaryMediaManager.jm_setMuted_1 nil))
                (if (eq _command (slot-value _gameCommandsFactory 'f_DISPLAY_LOAD_FORM))
                (progn
                (jm_pauseAppBackground_1 this nil)
                (setf _keyValuePersistance (GamePersistanceSingleton.jm_getInstance_0))
                (jm_clear_0 _keyValuePersistance)
                (jm_loadAll_1 _keyValuePersistance (slot-value this 'f_abeClientInformation))
                (if (eq (jm_getLoadGameForm_0 this) (CommandForm.jm_getNullCommandForm_0))
                    (progn
                    (setf _layerManager (jm_createGameLayerManager_0 this))
                    (jm_setLoadGameForm_1 this (LoadGameForm.jnew_4 this "Load Game" (jm_getBackgroundBasicColor_0 _layerManager) (jm_getForegroundBasicColor_0 _layerManager))))
                    (progn
                    (jm_update_0 (jm_getLoadGameForm_0 this))))
                (jm_commandAction_2 this (slot-value _gameCommandsFactory 'f_SET_MENU_DISPLAYABLE) (jm_getLoadGameForm_0 this)))
                (if (eq _command (slot-value _gameCommandsFactory 'f_LOAD_FILE))
                (progn
                (setf _loadGameForm (jm_getLoadGameForm_0 this))
                (setf _index (jm_getSelectedId_0 _loadGameForm))
                (if (/= _index (JR.i32 (- 1)))
                    (progn
                    (setf _keyValuePersistance (GamePersistanceSingleton.jm_getInstance_0))
                    (jm_setStartStateHashtable_1 this (jm_get_1 _keyValuePersistance _index))
                    (setf _menuListener (jm_getLoadGameForm_0 this))
                    (jm_close_0 _menuListener)
                    (PreLogUtil.jm_put_3 (jm_toString_0 (BasicMotionGesturesHandler.jm_getInstance_0)) this (slot-value this 'f_COMMAND_ACTION))
                    (jm_commandAction_2 this (slot-value _gameCommandsFactory 'f_START_COMMAND) (NullCanvas.jstatic_NULL_CANVAS))
                    (PreLogUtil.jm_put_3 (jm_toString_0 (BasicMotionGesturesHandler.jm_getInstance_0)) this (slot-value this 'f_COMMAND_ACTION)))))
                (if (eq _command (slot-value _gameCommandsFactory 'f_DELETE_FILE))
                (progn
                (setf _loadGameForm (jm_getLoadGameForm_0 this))
                (setf _index (jm_getSelectedText_0 _loadGameForm))
                (if (/= _index (JR.i32 (- 1)))
                    (progn
                    (setf _keyValuePersistance (GamePersistanceSingleton.jm_getInstance_0))
                    (jm_delete_2 _keyValuePersistance (slot-value this 'f_abeClientInformation) _index)
                    (jm_clear_0 _keyValuePersistance)
                    (jm_loadAllSize_2 _keyValuePersistance (slot-value this 'f_abeClientInformation) 1)
                    (jm_update_0 (jm_getLoadGameForm_0 this)))))
                (if (eq _command (slot-value _gameCommandsFactory 'f_SAVE))
                (progn
                (setf _keyValuePersistance (GamePersistanceSingleton.jm_getInstance_0))
                (jm_pauseAppBackground_1 this nil)
                (jm_save_2 _keyValuePersistance (slot-value this 'f_abeClientInformation) (jm_getCurrentStateHashtable_0 this))
                (jm_unPauseAppBackground_1 this nil))
                (if (eq _command (HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) "Submitted Score" this (slot-value this 'f_COMMAND_ACTION))
                (if (typep _displayable 'HighScoreTextBox)
                    (progn
                    (setf _highScoreTextBox _displayable)
                    (setf (slot-value _highScoreTextBox 'f_submitted) t)))
                (jm_setHighScoreSubmitted_1 _allbinaryGameCanvasRunnableInterface t)
                (jm_commandAction_2 this (slot-value _gameCommandsFactory 'f_CLOSE_AND_SHOW_GAME_CANVAS) _displayable))
                (if (eq _command (slot-value _gameCommandsFactory 'f_DISPLAY_ABOUT))
                (progn
                (jm_process_3 (slot-value this 'f_aboutCommandProcessor) this (slot-value _gameCommandsFactory 'f_SET_MENU_DISPLAYABLE) (jm_getAboutCanvas_0 this)))
                (if (eq _command (slot-value _gameCommandsFactory 'f_OPEN_WEB_URL))
                (progn
                (jm_process_3 (slot-value this 'f_webCommandProcessor) this (slot-value _gameCommandsFactory 'f_OPEN_WEB_URL) (NullCanvas.jstatic_NULL_CANVAS)))
                (if (eq _command (slot-value _gameCommandsFactory 'f_TOGGLE_KEYBOARD))
                (progn
                (setf _virtualKeyboardEventHandler (VirtualKeyboardEventHandler.jm_getInstance_0))
                (jm_fireEvent_1 _virtualKeyboardEventHandler (slot-value _virtualKeyboardEventHandler 'f_SHOW_EVENT)))
                (if (eq (jm_compareTo_2 (slot-value this 'f_tsUtil) (jm_getLabel_0 _command) (jm_getLabel_0 (slot-value _gameCommandsFactory 'f_TOGGLE_FULLSCREEN))) 0)
                (progn
                (setf _mainFeatureFactory (MainFeatureFactory.jm_getInstance_0))
                (setf _isFullScreen (jm_isFeature_1 (slot-value this 'f_features) (slot-value _mainFeatureFactory 'f_FULL_SCREEN)))
                (if _isFullScreen
                    (progn
                    (jm_removeDefault_1 (slot-value this 'f_features) (slot-value _mainFeatureFactory 'f_FULL_SCREEN)))
                    (progn
                    (jm_addDefault_1 (slot-value this 'f_features) (slot-value _mainFeatureFactory 'f_FULL_SCREEN))))
                (jm_updateFullScreen_0 this))))))))))))))))))))))))))))))))))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION_LABEL)) (jm_getLabel_0 _command))) this (slot-value (slot-value this 'f_midletStrings) 'f_COMMAND_ACTION) _e)
            (if (not (eq _command (slot-value (GameCommandsFactory.jm_getInstance_0) 'f_EXIT_COMMAND)))
                (progn
                (jm_exitProgress_1 this nil))))))))

    
(unless (fboundp 'jm_updateFullScreen_0) (defgeneric jm_updateFullScreen_0 (this)))
(defmethod jm_updateFullScreen_0 ((this GameMidlet))
  (declare (ignorable this))
  (let (_mainFeatureFactory _isFullScreen _displayable _canvas)
  (declare (ignorable _mainFeatureFactory _isFullScreen _displayable _canvas))
    (block jreturn
        (setf _mainFeatureFactory (MainFeatureFactory.jm_getInstance_0))
        (setf _isFullScreen (jm_isFeature_1 (slot-value this 'f_features) (slot-value _mainFeatureFactory 'f_FULL_SCREEN)))
        (setf _displayable (jm_getCurrent_0 (jm_getDisplay_0 this)))
        (if (typep _displayable 'Canvas)
            (progn
            (setf _canvas _displayable)
            (jm_setFullScreenMode_1 _canvas _isFullScreen))))))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this GameMidlet) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_getInputMappingInstructionsCanvas_0) (defgeneric jm_getInputMappingInstructionsCanvas_0 (this)))
(defmethod jm_getInputMappingInstructionsCanvas_0 ((this GameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (GameInputMappingInstructionsCanvas.jnew_2 this (jm_createGameLayerManager_0 this))))))

    
(unless (fboundp 'jm_getInputMappingCanvas_0) (defgeneric jm_getInputMappingCanvas_0 (this)))
(defmethod jm_getInputMappingCanvas_0 ((this GameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (GameInputMappingCanvas.jnew_4 (slot-value this 'f_abeClientInformation) this (jm_createGameLayerManager_0 this) (jm_getHelpPaintable_0 this))))))

    
(unless (fboundp 'jm_getAboutCanvas_0) (defgeneric jm_getAboutCanvas_0 (this)))
(defmethod jm_getAboutCanvas_0 ((this GameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (BasicPaintablesCanvas.jnew_4 this (slot-value (CanvasStrings.jm_getInstance_0) 'f_ABOUT) (jm_createGameLayerManager_0 this) (slot-value (AboutPaintableFactory.jm_getInstance_0) 'f_paintableArray))))))

    
(unless (fboundp 'jm_getHelpPaintable_0) (defgeneric jm_getHelpPaintable_0 (this)))
(defmethod jm_getHelpPaintable_0 ((this GameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_createHighScoresCanvas_0) (defgeneric jm_createHighScoresCanvas_0 (this)))
(defmethod jm_createHighScoresCanvas_0 ((this GameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_startGameCanvasRunnableInterface_0) (defgeneric jm_startGameCanvasRunnableInterface_0 (this)))
(defmethod jm_startGameCanvasRunnableInterface_0 ((this GameMidlet))
  (declare (ignorable this))
  (let (_threadFactoryUtil)
  (declare (ignorable _threadFactoryUtil))
    (block jreturn
        (setf _threadFactoryUtil (ThreadFactoryUtil.jm_getInstance_0))
        (setf (slot-value this 'f_thread) (jm_getInstanceGameCanvasRunnable_1 _threadFactoryUtil (slot-value this 'f_allbinaryGameCanvasRunnableInterface)))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "Thread Priority: ") (jm_getPriority_0 (slot-value this 'f_thread)))) this "startGameCanvasRunnableInterface")
        (jm_setThread_1 (slot-value this 'f_allbinaryGameCanvasRunnableInterface) (slot-value this 'f_thread))
        (jm_start_1 _threadFactoryUtil (slot-value this 'f_thread)))))

    
(unless (fboundp 'jm_stopGameCanvasRunnableInterface_0) (defgeneric jm_stopGameCanvasRunnableInterface_0 (this)))
(defmethod jm_stopGameCanvasRunnableInterface_0 ((this GameMidlet))
  (declare (ignorable this))
  (let (_gameCanvasRunnableInterface _progressCanvas)
  (declare (ignorable _gameCanvasRunnableInterface _progressCanvas))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_gameStrings) 'f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE))
        (jm_removeAllListeners_0 (GameNotificationEventHandler.jm_getInstance_0))
        (jm_removeAllListeners_0 (ColorChangeEventHandler.jm_getInstance_0))
        (GameEventHandlerUtil.jm_removeAllListeners_0)
        (setf _gameCanvasRunnableInterface (slot-value this 'f_allbinaryGameCanvasRunnableInterface))
        (if (not (eq _gameCanvasRunnableInterface (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Set Running False: ") (jm_toString_0 _gameCanvasRunnableInterface))) this (slot-value (slot-value this 'f_gameStrings) 'f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE))
            (jm_setRunning_1 _gameCanvasRunnableInterface nil))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "StopGame - Could Not Stop" this (slot-value (slot-value this 'f_gameStrings) 'f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE))))
        (jm_join_1 (ThreadUtil.jm_getInstance_0) (slot-value this 'f_thread))
        (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (if (jm_isFeature_1 (slot-value this 'f_features) (slot-value (MainFeatureFactory.jm_getInstance_0) 'f_LOAD_ALL))
            (progn
            (jm_addNormalPortion_2 _progressCanvas 50 "Stopped Game Runnable"))
            (progn
            (jm_addNormalPortion_2 _progressCanvas 50 "Stopped Main Runnable")))
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_END) this (slot-value (slot-value this 'f_gameStrings) 'f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE)))))

    
(unless (fboundp 'jm_getGameCanvasRunnableInterface_0) (defgeneric jm_getGameCanvasRunnableInterface_0 (this)))
(defmethod jm_getGameCanvasRunnableInterface_0 ((this GameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_allbinaryGameCanvasRunnableInterface)))))

    
(unless (fboundp 'jm_setGameCanvasRunnableInterface_1) (defgeneric jm_setGameCanvasRunnableInterface_1 (this p1)))
(defmethod jm_setGameCanvasRunnableInterface_1 ((this GameMidlet) _gameCanvasRunnableInterface)
  (declare (ignorable this _gameCanvasRunnableInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_allbinaryGameCanvasRunnableInterface) _gameCanvasRunnableInterface))))

    
(unless (fboundp 'jm_createGameLayerManager_0) (defgeneric jm_createGameLayerManager_0 (this)))
(defmethod jm_createGameLayerManager_0 ((this GameMidlet))
  (declare (ignorable this))
  (let (_gameInfo)
  (declare (ignorable _gameInfo))
    (block jreturn
        (setf _gameInfo (GameInfo.jnew_5 (slot-value (GameTypeFactory.jm_getInstance_0) 'f_SINGLE_PLAYER) (GameMode.jstatic_SERVER) (slot-value (PlayerTypesFactory.jm_getInstance_0) 'f_PLAYER_TYPE_ONE) 1 1))
        (return-from jreturn (AllBinaryGameLayerManager.jnew_3 (slot-value (slot-value this 'f_basicColorFactory) 'f_BLACK) (slot-value (slot-value this 'f_basicColorFactory) 'f_WHITE) _gameInfo)))))

    
(unless (fboundp 'jm_getGameOptionsForm_0) (defgeneric jm_getGameOptionsForm_0 (this)))
(defmethod jm_getGameOptionsForm_0 ((this GameMidlet))
  (declare (ignorable this))
  (let (_layerManager)
  (declare (ignorable _layerManager))
    (block jreturn
        (setf _layerManager (jm_createGameLayerManager_0 this))
        (return-from jreturn (jm_init_4 (GameOptionsFormFactory.jm_getInstance_0) this "Game Options" (jm_getBackgroundBasicColor_0 _layerManager) (jm_getForegroundBasicColor_0 _layerManager))))))

    
(unless (fboundp 'jm_save_0) (defgeneric jm_save_0 (this)))
(defmethod jm_save_0 ((this GameMidlet))
  (declare (ignorable this))
  (let (_hashtable)
  (declare (ignorable _hashtable))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_SAVE))
        (setf _hashtable (jm_getCurrentStateHashtable_0 this))
        (jm_save_2 (GamePersistanceSingleton.jm_getInstance_0) (slot-value this 'f_abeClientInformation) _hashtable))))

    
(unless (fboundp 'jm_getCurrentStateHashtable_0) (defgeneric jm_getCurrentStateHashtable_0 (this)))
(defmethod jm_getCurrentStateHashtable_0 ((this GameMidlet))
  (declare (ignorable this))
  (let (_hashtable _currentHashtable _enumeration _key)
  (declare (ignorable _hashtable _currentHashtable _enumeration _key))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this "getCurrentStateHashtable")
        (setf _hashtable (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
        (if (not (eq (slot-value this 'f_allbinaryGameCanvasRunnableInterface) (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)))
            (progn
            (setf _currentHashtable (jm_getCurrentStateHashtable_0 (slot-value this 'f_allbinaryGameCanvasRunnableInterface)))
            (setf _enumeration (jm_keys_0 _currentHashtable))
            (setf _key nil)
            (block jbreak (loop while (jm_hasMoreElements_1 (slot-value this 'f_enumerationUtil) _enumeration) do
                    (block jcontinue
                (setf _key (jm_nextElement_1 (slot-value this 'f_enumerationUtil) _enumeration))
                (jm_put_2 _hashtable _key (jm_get_1 _currentHashtable _key)))))))
        (return-from jreturn _hashtable))))

    
(unless (fboundp 'jm_setLoadGameForm_1) (defgeneric jm_setLoadGameForm_1 (this p1)))
(defmethod jm_setLoadGameForm_1 ((this GameMidlet) _loadGameForm)
  (declare (ignorable this _loadGameForm))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_loadGameForm) _loadGameForm))))

    
(unless (fboundp 'jm_getLoadGameForm_0) (defgeneric jm_getLoadGameForm_0 (this)))
(defmethod jm_getLoadGameForm_0 ((this GameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_loadGameForm)))))

    
(unless (fboundp 'jm_setResized_1) (defgeneric jm_setResized_1 (this p1)))
(defmethod jm_setResized_1 ((this GameMidlet) _resized)
  (declare (ignorable this _resized))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_resized) _resized))))

    
(unless (fboundp 'jm_isResized_0) (defgeneric jm_isResized_0 (this)))
(defmethod jm_isResized_0 ((this GameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_resized)))))

    
(unless (fboundp 'jm_isDemoLoading_0) (defgeneric jm_isDemoLoading_0 (this)))
(defmethod jm_isDemoLoading_0 ((this GameMidlet))
  (declare (ignorable this))
  (let (_displayable _demoCanvas)
  (declare (ignorable _displayable _demoCanvas))
    (block jreturn
        (if (slot-value this 'f_startedBefore)
            (progn
            (return-from jreturn nil)))
        (setf _displayable (jm_getCurrent_0 (jm_getDisplay_0 this)))
        (if (typep _displayable 'DemoCanvas)
            (progn
            (setf _demoCanvas _displayable)
            (if (jm_isDemoLoading_0 _demoCanvas)
                (progn
                (return-from jreturn t)))))
        (return-from jreturn nil))))



