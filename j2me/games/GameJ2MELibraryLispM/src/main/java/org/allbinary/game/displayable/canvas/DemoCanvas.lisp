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

(defclass DemoCanvas (RunnableCanvas)
  ((f_basicColorFactory :initform nil)
   (f_myCommandsFactory :initform nil)
   (f_gameAdStateFactory :initform nil)
   (f_gameInputStrings :initform nil)
   (f_gameStateFactory :initform nil)
   (f_threadFactoryUtil :initform nil)
   (f_formUtil :initform nil)
   (f_fullscreenPaintable :initform nil)
   (f_basicGameDemoPaintable :initform nil)
   (f_specialAnimationInterface :initform nil)
   (f_paintedSpecialAnimationInterface :initform nil)
   (f_fullScreenUtil :initform nil)
   (f_gameCanvas :initform nil)
   (f_highScoresHelper :initform nil)
   (f_realHighScoresPaintable :initform nil)
   (f_highScoresPaintable :initform nil)
   (f_state :initform 0)
   (f_canvasThread :initform nil)
   (f_timeDelayHelper :initform nil)
   (f_basicColor :initform nil)
   (f_abeClientInformation :initform nil)
   (f_highScoresFactoryInterface :initform nil)
   (f_menuInputProcessor :initform nil)
   (f_menuForm :initform nil)
   (f_gameInitializationInterfaceFactoryInterface :initform nil)
   (f_initialized :initform nil)
   (f_demoGameRunnable :initform nil)
   (f_defaultPaintableInterface :initform nil)
   (f_paintableInterface :initform nil)
   (f_overlayPaintable :initform nil)
   (f_progressPaintable :initform nil)
   (f_tempWait :initform 0)
   (f_inputToGameKeyMapping :initform nil)
   (f_gameRunnable :initform nil)
   (f_isSingleKeyRepeatableProcessing :initform nil)
   (f_NONE :initform nil)
   (f_gameKeyEventFactory :initform nil)
   (f_lastKeyNotMapped :initform 0)
   (f_SET_STATE :initform nil)
   (f_baseGameStatistics :initform nil)))

(defvar DemoCanvas.jcell_id :jnone)
(defun DemoCanvas.jstatic_id ()
  (when (eq DemoCanvas.jcell_id :jnone) (setf DemoCanvas.jcell_id 0))
  DemoCanvas.jcell_id)
(defun (setf DemoCanvas.jstatic_id) (value) (setf DemoCanvas.jcell_id value))

(defvar DemoCanvas.jcell_BOT_GAME_STATS :jnone)
(defun DemoCanvas.jstatic_BOT_GAME_STATS ()
  (when (eq DemoCanvas.jcell_BOT_GAME_STATS :jnone) (setf DemoCanvas.jcell_BOT_GAME_STATS "Bot Game Statistics: "))
  DemoCanvas.jcell_BOT_GAME_STATS)
(defun (setf DemoCanvas.jstatic_BOT_GAME_STATS) (value) (setf DemoCanvas.jcell_BOT_GAME_STATS value))

(defvar DemoCanvas.jcell_TYPE :jnone)
(defun DemoCanvas.jstatic_TYPE ()
  (when (eq DemoCanvas.jcell_TYPE :jnone) (setf DemoCanvas.jcell_TYPE 3))
  DemoCanvas.jcell_TYPE)
(defun (setf DemoCanvas.jstatic_TYPE) (value) (setf DemoCanvas.jcell_TYPE value))

    
(defun DemoCanvas.jnew_7 (_abeClientInformation _commandListener _highScoresFactoryInterface _paintable _overlayPaintable _gameInitializationInterfaceFactoryInterface _isContinue)
  (declare (ignorable _abeClientInformation _commandListener _highScoresFactoryInterface _paintable _overlayPaintable _gameInitializationInterfaceFactoryInterface _isContinue))
  (let ((this (make-instance 'DemoCanvas)))
    (setf (slot-value this 'f_basicColorFactory) (BasicColorFactory.jm_getInstance_0))
    (setf (slot-value this 'f_myCommandsFactory) (MyCommandsFactory.jm_getInstance_0))
    (setf (slot-value this 'f_gameAdStateFactory) (GameAdStateFactory.jm_getInstance_0))
    (setf (slot-value this 'f_gameInputStrings) (GameInputStrings.jm_getInstance_0))
    (setf (slot-value this 'f_gameStateFactory) (GameStateFactory.jm_getInstance_0))
    (setf (slot-value this 'f_threadFactoryUtil) (ThreadFactoryUtil.jm_getInstance_0))
    (setf (slot-value this 'f_formUtil) (FormUtil.jm_getInstance_0))
    (setf (slot-value this 'f_fullscreenPaintable) (slot-value (FullScreenPaintableFactory.jm_getInstance_0) 'f_paintable))
    (setf (slot-value this 'f_basicGameDemoPaintable) (StatePaintableFactory.jm_getInstance_0))
    (setf (slot-value this 'f_specialAnimationInterface) (SpecialAnimation.jm_getInstance_0))
    (setf (slot-value this 'f_paintedSpecialAnimationInterface) (SpecialAnimation.jm_getInstance_0))
    (setf (slot-value this 'f_fullScreenUtil) (FullScreenUtil.jm_getInstance_0))
    (setf (slot-value this 'f_gameCanvas) (NullGameCanvas.jm_getInstance_0))
    (setf (slot-value this 'f_highScoresHelper) (HighScoresHelper.jnew_0))
    (setf (slot-value this 'f_realHighScoresPaintable) (HighScoresPaintable.jnew_0))
    (setf (slot-value this 'f_highScoresPaintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_state) 0)
    (setf (slot-value this 'f_canvasThread) (NullThread.jstatic_NULL_THREAD))
    (setf (slot-value this 'f_timeDelayHelper) (TimeDelayHelper.jnew_1 6000))
    (setf (slot-value this 'f_basicColor) (slot-value (slot-value this 'f_basicColorFactory) 'f_RED))
    
    
    (setf (slot-value this 'f_menuInputProcessor) (NoMenuInputProcessor.jm_getInstance_0))
    (setf (slot-value this 'f_menuForm) (ScrollSelectionForm.jm_getNullScrollSelectionForm_0))
    
    
    
    (setf (slot-value this 'f_defaultPaintableInterface) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_paintableInterface) (NullPaintable.jm_getInstance_0))
    
    (setf (slot-value this 'f_progressPaintable) (ProgressCanvasFactory.jm_getLazyInstance_0))
    (setf (slot-value this 'f_tempWait) (slot-value (NullWaitGameRunnable.jm_getInstance_0) 'f_WAIT))
    (setf (slot-value this 'f_inputToGameKeyMapping) (jm_getInputMapping_0 (jm_getPersistentInputMappingInstance_0 (PlatformInputMappingFactory.jm_getInstance_0))))
    (setf (slot-value this 'f_gameRunnable) (NullWaitGameRunnable.jm_getInstance_0))
    (setf (slot-value this 'f_isSingleKeyRepeatableProcessing) (jm_isFeature_1 (Features.jm_getInstance_0) (slot-value (InputFeatureFactory.jm_getInstance_0) 'f_SINGLE_KEY_REPEAT_PRESS)))
    (setf (slot-value this 'f_NONE) (slot-value (GameKeyFactory.jm_getInstance_0) 'f_NONE))
    (setf (slot-value this 'f_gameKeyEventFactory) (GameKeyEventFactory.jm_getInstance_0))
    (setf (slot-value this 'f_lastKeyNotMapped) (JR.i32 (- 1)))
    (setf (slot-value this 'f_SET_STATE) "setState")
    (setf (slot-value this 'f_baseGameStatistics) (GameStatisticsFactory.jm_getInstance_0))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_abeClientInformation) _abeClientInformation)
        (jm_setWait_1 this (slot-value (NullWaitGameRunnable.jm_getInstance_0) 'f_WAIT))
        (setf (slot-value this 'f_gameInitializationInterfaceFactoryInterface) _gameInitializationInterfaceFactoryInterface)
        (jm_initDemo_3 (GameInitializationUtil.jm_getInstance_0) _abeClientInformation this _gameInitializationInterfaceFactoryInterface)
        (jm_fireEvent_1 (ResizableListenerHandler.jm_getInstance_0) nil)
        (setf (slot-value this 'f_overlayPaintable) _overlayPaintable)
        (setf (slot-value this 'f_highScoresFactoryInterface) _highScoresFactoryInterface)
        (jm_setDefaultPaintableInterface_1 this _paintable)
        (jm_setPaintableInterface_1 this (jm_getDefaultPaintableInterface_0 this))
        (if _isContinue
            (progn
            (jm_addCommand_1 this (slot-value (GameCommandsFactory.jm_getInstance_0) 'f_CONTINUE_COMMAND))))
        (if (jm_isChangedFeature_1 (ChangedGameFeatureListener.jm_getInstance_0) (slot-value (GameFeatureFactory.jm_getInstance_0) 'f_SOUND))
            (progn
            (jm_mediaInit_0 this)))
        (setf (slot-value this 'f_demoGameRunnable) (DemoGameStartupRunnable.jnew_1 this))
        (jm_addListenerInterface_1 (DisplayChangeEventHandler.jm_getInstance_0) this)))
    this))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this DemoCanvas) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onDisplayChangeEvent_1) (defgeneric jm_onDisplayChangeEvent_1 (this p1)))
(defmethod jm_onDisplayChangeEvent_1 ((this DemoCanvas) _displayChangeEvent)
  (declare (ignorable this _displayChangeEvent))
  (let (_scrollSelectionForm _formType _rectangle)
  (declare (ignorable _scrollSelectionForm _formType _rectangle))
    (block jreturn
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonLabels) 'f_START_LABEL)) (JR.toString (slot-value this 'f_displayInfo)))) this (slot-value (slot-value this 'f_canvasStrings) 'f_ON_DISPLAY_CHANGE_EVENT))
            (setf _scrollSelectionForm (jm_getMenuForm_0 this))
            (if (not (null _scrollSelectionForm))
                (progn
                (setf _formType (jm_getFormType_0 (FormTypeFactory.jm_getInstance_0)))
                (setf _rectangle (jm_createFormRectangle_0 (slot-value this 'f_formUtil)))
                (jm_init_2 _scrollSelectionForm _rectangle _formType)))
            (jm_init_0 (slot-value this 'f_overlayPaintable)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_canvasStrings) 'f_ON_DISPLAY_CHANGE_EVENT) _e))))))

    
(unless (fboundp 'jm_getCustomCommands_0) (defgeneric jm_getCustomCommands_0 (this)))
(defmethod jm_getCustomCommands_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let (_gameCommandsFactory _commandList _inApplicationPurchaseFactory _list _isOverScan _commandArray)
  (declare (ignorable _gameCommandsFactory _commandList _inApplicationPurchaseFactory _list _isOverScan _commandArray))
    (block jreturn
        (setf _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (if (J2MEUtil.jm_isHTML_0)
            (progn
            (setf _commandArray (vector (slot-value _gameCommandsFactory 'f_START_COMMAND) (slot-value (HighScoreCommands.jm_getInstance_0) 'f_DISPLAY) (GameInputMappingCanvas.jstatic_DISPLAY) (slot-value _gameCommandsFactory 'f_DISPLAY_ABOUT)))
            (return-from jreturn _commandArray))
            (progn
            (setf _commandList (BasicArrayListD.jnew_0))
            (jm_add_1 _commandList (slot-value _gameCommandsFactory 'f_START_COMMAND))
            (setf _inApplicationPurchaseFactory (InApplicationPurchaseFactory.jm_getInstance_0))
            (if (jm_isEnabled_0 _inApplicationPurchaseFactory)
                (progn
                (setf _list (jm_getList_0 (LockableFeatureFactory.jm_getInstance_0)))
                (if (and (> (jm_size_0 _list) 0) (not (jm_isPurchased_1 _inApplicationPurchaseFactory (jm_get_1 _list 0))))
                    (progn
                    (jm_add_1 _commandList (slot-value _gameCommandsFactory 'f_BUY_COMMAND))))))
            (jm_add_1 _commandList (slot-value (HighScoreCommands.jm_getInstance_0) 'f_DISPLAY))
            (handler-case (progn
                (setf _isOverScan (jm_isOverScan_0 (jm_getOperatingSystemInstance_0 (OperatingSystemFactory.jm_getInstance_0))))
                (if (SWTUtil.jstatic_isSWT)
                    (progn
                    (jm_add_1 _commandList (GameInputMappingCanvas.jstatic_DISPLAY)))
                    (if (not _isOverScan)
                    (progn
                    (jm_add_1 _commandList (slot-value _gameCommandsFactory 'f_DISPLAY_OPTIONS))
                    (jm_add_1 _commandList (slot-value _gameCommandsFactory 'f_DISPLAY_LOAD_FORM))
                    (jm_add_1 _commandList (GameInputMappingCanvas.jstatic_DISPLAY))))))
                (error (_e) (declare (ignorable _e))
                nil))
            (jm_add_1 _commandList (slot-value _gameCommandsFactory 'f_DISPLAY_ABOUT))
            (setf _commandArray (jm_toArray_0 _commandList))
            (return-from jreturn _commandArray))))))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this DemoCanvas) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let (_commandArray _size _index)
  (declare (ignorable _commandArray _size _index))
    (block jreturn
        (jm_removeAllCommands_0 this)
        (setf _commandArray (jm_getCustomCommands_0 this))
        (setf _size (length _commandArray))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_addCommand_1 this (aref _commandArray _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (CustomGameMenuUtil.jm_add_1 this)
        (jm_setCommandListener_1 this _cmdListener))))

    
(unless (fboundp 'jm_initPostPaint_0) (defgeneric jm_initPostPaint_0 (this)))
(defmethod jm_initPostPaint_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_mediaInit_0) (defgeneric jm_mediaInit_0 (this)))
(defmethod jm_mediaInit_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (AllBinaryMediaManager.jm_init_1 (EarlySoundsFactory.jm_getInstance_0)))))

    
(unless (fboundp 'jm_itemStateChanged_1) (defgeneric jm_itemStateChanged_1 (this p1)))
(defmethod jm_itemStateChanged_1 ((this DemoCanvas) _item)
  (declare (ignorable this _item))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED) this))))

    
(unless (fboundp 'jm_initMenu_0) (defgeneric jm_initMenu_0 (this)))
(defmethod jm_initMenu_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let (_commandTextItemArrayFactory _items _formType _rectangle _scrollSelectionForm _formType2 _rectangle2)
  (declare (ignorable _commandTextItemArrayFactory _items _formType _rectangle _scrollSelectionForm _formType2 _rectangle2))
    (block jreturn
        (jm_close_0 this)
        (setf _commandTextItemArrayFactory (jm_getCommandTextItemArrayFactory_0 (DemoLimitedCommandTextItemArrayFactory.jm_getInstance_0)))
        (setf _items (jm_getInstance_3 _commandTextItemArrayFactory (jm_getCommandStack_0 this) (slot-value (slot-value this 'f_basicColorFactory) 'f_BLACK) (slot-value (slot-value this 'f_basicColorFactory) 'f_WHITE)))
        (setf _formType (jm_getFormType_0 (FormTypeFactory.jm_getInstance_0)))
        (setf _rectangle (jm_createFormRectangle_0 (slot-value this 'f_formUtil)))
        (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonLabels) 'f_START_LABEL)) (JR.toString (slot-value this 'f_displayInfo)))) this "initMenu")
        (setf _scrollSelectionForm (CommandCurrentSelectionFormFactory.jm_getInstance_8 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) _items _rectangle _formType 15 t (slot-value (slot-value this 'f_basicColorFactory) 'f_BLACK) (slot-value (slot-value this 'f_basicColorFactory) 'f_WHITE)))
        (jm_setMenuForm_1 this _scrollSelectionForm)
        (setf _formType2 (jm_getFormType_0 (FormTypeFactory.jm_getInstance_0)))
        (setf _rectangle2 (jm_createFormRectangle_0 (slot-value this 'f_formUtil)))
        (jm_init_2 _scrollSelectionForm _rectangle2 _formType2)
        (if (not (eq (jm_getMenuForm_0 this) (ScrollSelectionFormNoneFactory.jm_getInstance_0)))
            (progn
            (jm_setMenuInputProcessor_1 this (CommandFormInputProcessor.jnew_4 (BasicArrayListD.jnew_0) (JR.i32 (- 1)) this (jm_getMenuForm_0 this)))))
        (jm_open_0 this))))

    
(unless (fboundp 'jm_open_0) (defgeneric jm_open_0 (this)))
(defmethod jm_open_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_addListenerInterface_1 (BasicMotionGesturesHandler.jm_getInstance_0) (jm_getMenuInputProcessor_0 this))
        (jm_addListener_1 (GameKeyEventHandler.jm_getInstance_0) (jm_getMenuInputProcessor_0 this)))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_removeListener_1 (BasicMotionGesturesHandler.jm_getInstance_0) (jm_getMenuInputProcessor_0 this))
        (jm_removeListener_1 (GameKeyEventHandler.jm_getInstance_0) (jm_getMenuInputProcessor_0 this)))))

    
(unless (fboundp 'jm_getSourceId_0) (defgeneric jm_getSourceId_0 (this)))
(defmethod jm_getSourceId_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (DemoCanvas.jstatic_id)))))

    
(unless (fboundp 'jm_keyPressed_1) (defgeneric jm_keyPressed_1 (this p1)))
(defmethod jm_keyPressed_1 ((this DemoCanvas) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyPressedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyReleased_1) (defgeneric jm_keyReleased_1 (this p1)))
(defmethod jm_keyReleased_1 ((this DemoCanvas) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyReleasedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyRepeated_1) (defgeneric jm_keyRepeated_1 (this p1)))
(defmethod jm_keyRepeated_1 ((this DemoCanvas) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyRepeatedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyPressedByDevice_2) (defgeneric jm_keyPressedByDevice_2 (this p1 p2)))
(defmethod jm_keyPressedByDevice_2 ((this DemoCanvas) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn
        (jm_addGameKeyEvent_2 this _keyCode nil))))

    
(unless (fboundp 'jm_keyReleasedByDevice_2) (defgeneric jm_keyReleasedByDevice_2 (this p1 p2)))
(defmethod jm_keyReleasedByDevice_2 ((this DemoCanvas) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn
        (jm_removeGameKeyEvent_2 this _keyCode nil))))

    
(unless (fboundp 'jm_keyRepeatedByDevice_2) (defgeneric jm_keyRepeatedByDevice_2 (this p1 p2)))
(defmethod jm_keyRepeatedByDevice_2 ((this DemoCanvas) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn
        (if (slot-value this 'f_isSingleKeyRepeatableProcessing)
            (progn
            (jm_addGameKeyEvent_2 this _keyCode t))))))

    
(unless (fboundp 'jm_addGameKeyEvent_2) (defgeneric jm_addGameKeyEvent_2 (this p1 p2)))
(defmethod jm_addGameKeyEvent_2 ((this DemoCanvas) _keyCode _repeated)
  (declare (ignorable this _keyCode _repeated))
  (let (_gameKey _gameKeyEvent)
  (declare (ignorable _gameKey _gameKeyEvent))
    (block jreturn
        (handler-case (progn
            (setf _gameKey (jm_getInstanceForCanvas_2 (slot-value this 'f_inputToGameKeyMapping) this _keyCode))
            (if (not (eq _gameKey (slot-value this 'f_NONE)))
                (progn
                (setf _gameKeyEvent (jm_getInstanceForInput_2 (slot-value this 'f_gameKeyEventFactory) this _gameKey))
                (jm_fireEvent_1 (DownGameKeyEventHandler.jm_getInstance_0) _gameKeyEvent))
                (progn
                (if (/= (slot-value this 'f_lastKeyNotMapped) _keyCode)
                    (progn
                    (setf (slot-value this 'f_lastKeyNotMapped) _keyCode)
                    (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_gameInputStrings) 'f_NO_KEY)) _keyCode)) this (slot-value (slot-value this 'f_gameInputStrings) 'f_ADD_KEY_EVENT)))))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) "Key Event Error" this (slot-value (slot-value this 'f_gameInputStrings) 'f_ADD_KEY_EVENT) _e))))))

    
(unless (fboundp 'jm_removeGameKeyEvent_2) (defgeneric jm_removeGameKeyEvent_2 (this p1 p2)))
(defmethod jm_removeGameKeyEvent_2 ((this DemoCanvas) _keyCode _repeated)
  (declare (ignorable this _keyCode _repeated))
  (let (_gameKey _gameKeyEvent)
  (declare (ignorable _gameKey _gameKeyEvent))
    (block jreturn
        (handler-case (progn
            (setf _gameKey (jm_getInstanceForCanvas_2 (slot-value this 'f_inputToGameKeyMapping) this _keyCode))
            (if (not (eq _gameKey (slot-value this 'f_NONE)))
                (progn
                (setf _gameKeyEvent (jm_getInstanceForInput_2 (slot-value this 'f_gameKeyEventFactory) this _gameKey))
                (jm_fireEvent_1 (UpGameKeyEventHandler.jm_getInstance_0) _gameKeyEvent))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_gameInputStrings) 'f_NO_KEY)) _keyCode)) this (slot-value (slot-value this 'f_gameInputStrings) 'f_REMOVE_KEY_EVENT)))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) "Key Event Error" this (slot-value (slot-value this 'f_gameInputStrings) 'f_REMOVE_KEY_EVENT) _e))))))

    
(unless (fboundp 'jm_pause_0) (defgeneric jm_pause_0 (this)))
(defmethod jm_pause_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_close_0 this)
        (jm_setPaused_1 this t)
        (setf (slot-value this 'f_gameRunnable) (NullWaitGameRunnable.jm_getInstance_0))
        (jm_pause_0 (slot-value this 'f_gameCanvas)))))

    
(unless (fboundp 'jm_unPause_0) (defgeneric jm_unPause_0 (this)))
(defmethod jm_unPause_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_open_0 this)
        (jm_unPause_0 (slot-value this 'f_gameCanvas))
        (setf (slot-value this 'f_gameRunnable) (slot-value (slot-value this 'f_gameCanvas) 'f_gameRunnable))
        (jm_setPaused_1 this nil))))

    
(unless (fboundp 'jm_isPausable_0) (defgeneric jm_isPausable_0 (this)))
(defmethod jm_isPausable_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (eq (jm_getUsedRunnable_0 (CurrentDisplayableFactory.jm_getInstance_0)) (NullWaitGameRunnable.jm_getInstance_0))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_isGameOver_0) (defgeneric jm_isGameOver_0 (this)))
(defmethod jm_isGameOver_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED)) " since not a game")) this "isGameOver")
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_setLoadStateHashtable_1) (defgeneric jm_setLoadStateHashtable_1 (this p1)))
(defmethod jm_setLoadStateHashtable_1 ((this DemoCanvas) _hashtable)
  (declare (ignorable this _hashtable))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) "Trying to continue a demo lol - only continue a game canvas not the demo" this "setLoadStateHashtable"))))

    
(unless (fboundp 'jm_getLoadStateHashtable_0) (defgeneric jm_getLoadStateHashtable_0 (this)))
(defmethod jm_getLoadStateHashtable_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) "Trying to continue a demo lol - only continue a game canvas not the demo" this "getLoadStateHashtable")
        (return-from jreturn (slot-value (slot-value this 'f_stdUtil) 'f_NULL_TABLE)))))

    
(unless (fboundp 'jm_getCurrentStateHashtable_0) (defgeneric jm_getCurrentStateHashtable_0 (this)))
(defmethod jm_getCurrentStateHashtable_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) "Trying to save the AI lol" this "getCurrentStateHashtable")
        (return-from jreturn (slot-value (slot-value this 'f_stdUtil) 'f_NULL_TABLE)))))

    
(unless (fboundp 'jm_setHighScoreSubmitted_1) (defgeneric jm_setHighScoreSubmitted_1 (this p1)))
(defmethod jm_setHighScoreSubmitted_1 ((this DemoCanvas) _isNotUsed)
  (declare (ignorable this _isNotUsed))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this DemoCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paint_1 (slot-value this 'f_paintableInterface) _graphics)
        (jm_paintXY_3 (slot-value this 'f_paintedSpecialAnimationInterface) _graphics 0 0)
        (jm_paint_1 (slot-value this 'f_highScoresPaintable) _graphics)
        (jm_paint_1 (jm_getBasicGameDemoPaintable_0 this) _graphics)
        (jm_paint_1 (slot-value this 'f_overlayPaintable) _graphics)
        (jm_paint_1 (slot-value this 'f_fullscreenPaintable) _graphics)
        (jm_paint_1 (slot-value this 'f_progressPaintable) _graphics))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this DemoCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paintThreed_1 (slot-value this 'f_paintableInterface) _graphics)
        (jm_paintThreedXYZ_4 (slot-value this 'f_paintedSpecialAnimationInterface) _graphics 0 0 0))))

    
(unless (fboundp 'jm_processGameOver_0) (defgeneric jm_processGameOver_0 (this)))
(defmethod jm_processGameOver_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) "Not Implemented since not a game" this "setGameOver"))))

    
(unless (fboundp 'jm_demoStateChange_0) (defgeneric jm_demoStateChange_0 (this)))
(defmethod jm_demoStateChange_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let (_newState _highScores)
  (declare (ignorable _newState _highScores))
    (block jreturn
        (setf _newState (JR.i32 (+ (slot-value this 'f_state) 1)))
        (if (> _newState 2)
            (progn
            (setf _newState 0))
            (if (= _newState 2)
            (progn
            (if (not (jm_isAnyHighScores_0 (slot-value this 'f_highScoresHelper)))
                (progn
                (setf _newState 0))
                (progn
                (setf _highScores (jm_getNextHighScores_0 (slot-value this 'f_highScoresHelper)))
                (if (eq _highScores (NullHighScoresSingletonFactory.jm_getInstance_0))
                    (progn
                    (setf _newState 0))
                    (progn
                    (jm_setHighScores_1 (jm_getRealHighScoresPaintable_0 this) _highScores))))))))
        (jm_setState_1 this _newState)
        (jm_updateDemoState_0 this))))

    
(unless (fboundp 'jm_updateDemoState_0) (defgeneric jm_updateDemoState_0 (this)))
(defmethod jm_updateDemoState_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let (_gameAdState)
  (declare (ignorable _gameAdState))
    (block jreturn
        (PreLogUtil.jm_put_3 (JR.toString (jm_createInstance_1 (SmallIntegerSingletonFactory.jm_getInstance_0) (slot-value this 'f_state))) this (slot-value this 'f_SET_STATE))
        (jm_setState_1 (jm_getBasicGameDemoPaintable_0 this) (slot-value this 'f_state))
        (if (= (slot-value this 'f_state) 0)
            (progn
            (setf (slot-value this 'f_highScoresPaintable) (NullPaintable.jm_getInstance_0))
            (setf (slot-value this 'f_paintedSpecialAnimationInterface) (jm_getSpecialAnimationInterface_0 this))
            (if (and (not (jm_isRunning_0 (slot-value this 'f_demoGameRunnable))) (jm_isInitialized_0 (slot-value this 'f_gameCanvas)))
                (progn
                (jm_reset_0 (jm_getSpecialAnimationInterface_0 this)))))
            (if (= (slot-value this 'f_state) 1)
            (progn
            (setf (slot-value this 'f_paintedSpecialAnimationInterface) (SpecialAnimation.jm_getInstance_0)))
            (if (= (slot-value this 'f_state) 2)
            (progn
            (setf (slot-value this 'f_highScoresPaintable) (jm_getRealHighScoresPaintable_0 this))))))
        (setf _gameAdState (jm_getCurrentInstance_0 (slot-value this 'f_gameAdStateFactory)))
        (jm_processPageAdState_0 _gameAdState))))

    
(unless (fboundp 'jm_getNextRandom_0) (defgeneric jm_getNextRandom_0 (this)))
(defmethod jm_getNextRandom_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_createGameLayerManager_1) (defgeneric jm_createGameLayerManager_1 (this p1)))
(defmethod jm_createGameLayerManager_1 ((this DemoCanvas) _randomValue)
  (declare (ignorable this _randomValue))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_createRunnable_1) (defgeneric jm_createRunnable_1 (this p1)))
(defmethod jm_createRunnable_1 ((this DemoCanvas) _randomLevel)
  (declare (ignorable this _randomLevel))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_create_0) (defgeneric jm_create_0 (this)))
(defmethod jm_create_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let (_randomLevel _gameInfo)
  (declare (ignorable _randomLevel _gameInfo))
    (block jreturn
        (PreLogUtil.jm_put_3 (slot-value (slot-value this 'f_commonStrings) 'f_START) this "create")
        (setf (slot-value this 'f_highScoresPaintable) (NullPaintable.jm_getInstance_0))
        (setf _randomLevel (jm_getNextRandom_0 this))
        (setf (slot-value this 'f_gameCanvas) (jm_createRunnable_1 this _randomLevel))
        (setf (slot-value this 'f_basicColor) (jm_getForegroundBasicColor_0 (jm_getLayerManager_0 (slot-value this 'f_gameCanvas))))
        (jm_setBasicColorP_1 (jm_getRealHighScoresPaintable_0 this) (slot-value this 'f_basicColor))
        (jm_setGameCanvasStartListener_1 (slot-value this 'f_gameCanvas) this)
        (setf _gameInfo (jm_getGameInfo_0 (jm_getLayerManager_0 (slot-value this 'f_gameCanvas))))
        (jm_fetchHighScores_2 (jm_getHighScoresFactoryInterface_0 this) _gameInfo (slot-value this 'f_highScoresHelper)))))

    
(unless (fboundp 'jm_start_0) (defgeneric jm_start_0 (this)))
(defmethod jm_start_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let (_gameCanvas)
  (declare (ignorable _gameCanvas))
    (block jreturn
        (setf _gameCanvas (slot-value this 'f_gameCanvas))
        (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Game Thread in DemoCanvas: ") (JR.toString (slot-value this 'f_stringUtil)))) this (slot-value (slot-value this 'f_commonStrings) 'f_START))
        (setf (slot-value this 'f_canvasThread) (jm_getInstanceGameCanvasRunnable_1 (slot-value this 'f_threadFactoryUtil) _gameCanvas))
        (jm_setThread_1 (slot-value this 'f_gameCanvas) (slot-value this 'f_canvasThread))
        (jm_start_1 (slot-value this 'f_threadFactoryUtil) (slot-value this 'f_canvasThread))
        (if (eq (jm_getWait_0 this) (slot-value (NullWaitGameRunnable.jm_getInstance_0) 'f_WAIT))
            (progn
            (jm_setWait_1 this (jm_getTempWait_0 this)))))))

    
(unless (fboundp 'jm_preDemoProcess_0) (defgeneric jm_preDemoProcess_0 (this)))
(defmethod jm_preDemoProcess_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (or (not (jm_isInitialized_0 (slot-value this 'f_gameCanvas))) (eq (jm_getTitle_0 (slot-value this 'f_gameCanvas)) (NullGameCanvas.jstatic_NO_GAME)))
            (progn
            (if (AllBinaryMediaManager.jm_update_0)
                (progn
                (if (not (jm_process_0 (PrimaryPlayerQueueFactory.jm_getInstance_0)))
                    (progn
                    (jm_process_0 (SecondaryPlayerQueueFactory.jm_getInstance_0))))))))
        (jm_update_0 (slot-value this 'f_overlayPaintable)))))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let (_indexedAnimationBehavior _demoGameMidlet _thread _randomLevel _gameInfo)
  (declare (ignorable _indexedAnimationBehavior _demoGameMidlet _thread _randomLevel _gameInfo))
    (block jreturn
        (call-next-method this)
        (jm_processInputList_0 (jm_getMenuInputProcessor_0 this))
        (jm_preDemoProcess_0 this)
        (if (= (slot-value this 'f_state) 0)
            (progn
            (setf _indexedAnimationBehavior (jm_getAnimationBehavior_0 (jm_getSpecialAnimationInterface_0 this)))
            (if (< (slot-value _indexedAnimationBehavior 'f_loopIndex) 1)
                (progn
                (jm_setStartTimeTNT_0 (slot-value this 'f_timeDelayHelper))))
            (setf _demoGameMidlet (jm_getCustomCommandListener_0 this))
            (if (and (not (eq (slot-value this 'f_gameCanvas) (NullGameCanvas.jm_getInstance_0))) (jm_isGameOver_0 (slot-value this 'f_gameCanvas)))
                (progn
                (jm_stopGameDemo_0 this)
                (setf _randomLevel (jm_getNextRandom_0 this))
                (setf _gameInfo (jm_getGameInfo_0 (jm_getLayerManager_0 (slot-value this 'f_gameCanvas))))
                (jm_setCurrentLevel_1 _gameInfo _randomLevel)
                (jm_setGameOver_1 (slot-value this 'f_gameCanvas) nil)
                (jm_start_0 this))
                (if (and (eq (slot-value this 'f_gameCanvas) (NullGameCanvas.jm_getInstance_0)) (jm_isReady_0 _demoGameMidlet))
                (progn
                (if (not (jm_isRunning_0 (slot-value this 'f_demoGameRunnable)))
                    (progn
                    (jm_startDemoGame_0 this)
                    (jm_setRunning_1 (slot-value this 'f_demoGameRunnable) t)
                    (setf _thread (jm_getInstanceForRunnable_1 (slot-value this 'f_threadFactoryUtil) (slot-value this 'f_demoGameRunnable)))
                    (jm_setThread_1 (slot-value this 'f_demoGameRunnable) _thread)
                    (jm_start_1 (slot-value this 'f_threadFactoryUtil) _thread)))))))))))

    
(unless (fboundp 'jm_startDemoGame_0) (defgeneric jm_startDemoGame_0 (this)))
(defmethod jm_startDemoGame_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (DemoCanvasProgressUtil.jm_showProgress_1 this))))

    
(unless (fboundp 'jm_stopGameDemo_0) (defgeneric jm_stopGameDemo_0 (this)))
(defmethod jm_stopGameDemo_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (not (eq (slot-value this 'f_gameCanvas) (NullGameCanvas.jm_getInstance_0)))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "Set Running False" this "stopGameDemo")
            (jm_setRunning_1 (slot-value this 'f_gameCanvas) nil)))
        (jm_join_1 (ThreadUtil.jm_getInstance_0) (slot-value this 'f_canvasThread)))))

    
(unless (fboundp 'jm_showGamePaintable_0) (defgeneric jm_showGamePaintable_0 (this)))
(defmethod jm_showGamePaintable_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let (_METHOD_NAME _isDefault)
  (declare (ignorable _METHOD_NAME _isDefault))
    (block jreturn
        (setf _METHOD_NAME "showGamePaintable")
        (PreLogUtil.jm_put_3 (slot-value (slot-value this 'f_commonStrings) 'f_START) this _METHOD_NAME)
        (setf _isDefault (J2MEUtil.jm_isHTML_0))
        (if (and (and (not (eq (slot-value this 'f_gameCanvas) (NullGameCanvas.jm_getInstance_0))) (or (or (jm_isRunning_0 (slot-value this 'f_gameCanvas)) _isDefault) (SWTUtil.jstatic_isSWT))) (not (eq (jm_getType_0 (slot-value this 'f_gameCanvas)) (NullGameCanvas.jstatic_TYPE))))
            (progn
            (setf (slot-value this 'f_gameRunnable) (slot-value (slot-value this 'f_gameCanvas) 'f_gameRunnable))
            (PreLogUtil.jm_put_3 "Showing Game" this _METHOD_NAME)
            (jm_setPaintableInterface_1 this (slot-value this 'f_gameCanvas)))
            (progn
            (setf (slot-value this 'f_gameRunnable) (NullWaitGameRunnable.jm_getInstance_0))
            (PreLogUtil.jm_put_3 "Not Showing Game" this _METHOD_NAME)
            (jm_setPaintableInterface_1 this (jm_getDefaultPaintableInterface_0 this)))))))

    
(unless (fboundp 'jm_isReadyForStateChange_0) (defgeneric jm_isReadyForStateChange_0 (this)))
(defmethod jm_isReadyForStateChange_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (and (not (jm_isRunning_0 (slot-value this 'f_demoGameRunnable))) (jm_isInitialized_0 (slot-value this 'f_gameCanvas)))))))

    
(unless (fboundp 'jm_processGame_0) (defgeneric jm_processGame_0 (this)))
(defmethod jm_processGame_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_run_0 (slot-value this 'f_gameRunnable))
        (if (and (not (jm_isComplete_0 (slot-value this 'f_specialAnimationInterface))) (jm_isReadyForStateChange_0 this))
            (progn
            (jm_nextFrame_0 (slot-value this 'f_specialAnimationInterface))))
        (if (and (jm_isTimeTNT_0 (slot-value this 'f_timeDelayHelper)) (jm_isReadyForStateChange_0 this))
            (progn
            (jm_demoStateChange_0 this))
            (progn
            (jm_process_0 this))))))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let (_progressCanvas _features _openGLFeatureFactory _demoGameRunnable _currentDisplayableFactory)
  (declare (ignorable _progressCanvas _features _openGLFeatureFactory _demoGameRunnable _currentDisplayableFactory))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START_RUNNABLE) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))
        (handler-case (progn
            (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
            (setf _features (Features.jm_getInstance_0))
            (setf _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
            (jm_addNormalPortion_2 _progressCanvas 50 "Demo Thread")
            (jm_setCurrentThread_0 this)
            (jm_setRunning_1 this t)
            (if (jm_isFeature_1 _features (slot-value (MainFeatureFactory.jm_getInstance_0) 'f_LOAD_ONDEMAND))
                (progn
                (jm_end_0 _progressCanvas))
                (progn
                (jm_addNormalPortion_2 _progressCanvas 50 "Demo Thread Running")))
            (jm_initOnRun_2 (slot-value this 'f_fullScreenUtil) this (jm_getCustomCommandListener_0 this))
            (jm_initMenu_0 this)
            (jm_initPostPaint_0 this)
            (jm_updateDemoState_0 this)
            (if (jm_isDefault_1 _features (slot-value _openGLFeatureFactory 'f_OPENGL_AS_GAME_THREAD))
                (progn
                (block jbreak (loop while (or (eq (slot-value this 'f_gameCanvas) (NullGameCanvas.jm_getInstance_0)) (not (jm_isInitialized_0 (slot-value this 'f_gameCanvas)))) do
                        (block jcontinue
                    (jm_setStartTimeTNT_0 (slot-value this 'f_loopTimeHelper))
                    (jm_processGame_0 this)
                    (jm_processLoopSleep_0 this))))
                (setf _demoGameRunnable (DemoGameRunnable.jnew_1 this))
                (setf _currentDisplayableFactory (CurrentDisplayableFactory.jm_getInstance_0))
                (jm_setRunnable_1 _currentDisplayableFactory _demoGameRunnable)
                (jm_setMyCanvas_1 _currentDisplayableFactory this)
                (jm_onResume_0 (OpenGLThreadUtil.jm_getInstance_0))))
            (if (or (jm_isDefault_1 _features (slot-value _openGLFeatureFactory 'f_OPENGL_AS_GAME_THREAD)) (J2MEUtil.jm_isHTML_0))
                (progn
                (setf _demoGameRunnable (DemoGameRunnable.jnew_1 this))
                (setf _currentDisplayableFactory (CurrentDisplayableFactory.jm_getInstance_0))
                (jm_setRunnable_1 _currentDisplayableFactory _demoGameRunnable)
                (jm_setMyCanvas_1 _currentDisplayableFactory this))
                (progn
                (block jbreak (loop while (jm_isRunning_0 this) do
                        (block jcontinue
                    (jm_run3_0 this))))
                (jm_end_0 this))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN) _e)))
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_END_RUNNABLE) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN)))))

    
(unless (fboundp 'jm_run3_0) (defgeneric jm_run3_0 (this)))
(defmethod jm_run3_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setStartTimeTNT_0 (slot-value this 'f_loopTimeHelper))
        (jm_processGame_0 this)
        (jm_processLoopSleep_0 this))))

    
(unless (fboundp 'jm_setRunning_1) (defgeneric jm_setRunning_1 (this p1)))
(defmethod jm_setRunning_1 ((this DemoCanvas) _running)
  (declare (ignorable this _running))
  (let (_features _openGLFeatureFactory _currentDisplayableFactory)
  (declare (ignorable _features _openGLFeatureFactory _currentDisplayableFactory))
    (block jreturn
        (call-next-method this _running)
        (handler-case (progn
            (setf _features (Features.jm_getInstance_0))
            (setf _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
            (if _running
                (progn
                nil)
                (progn
                (if (or (or (jm_isDefault_1 _features (slot-value _openGLFeatureFactory 'f_OPENGL)) (J2MEUtil.jm_isHTML_0)) (SWTUtil.jstatic_isSWT))
                    (progn
                    (setf _currentDisplayableFactory (CurrentDisplayableFactory.jm_getInstance_0))
                    (jm_clearRunnable_0 _currentDisplayableFactory)
                    (jm_end_0 this))))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value this 'f_SET_RUNNING) _e))))))

    
(unless (fboundp 'jm_end_0) (defgeneric jm_end_0 (this)))
(defmethod jm_end_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let (_progressCanvas _features)
  (declare (ignorable _progressCanvas _features))
    (block jreturn
        (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (setf _features (Features.jm_getInstance_0))
        (jm_add_1 (slot-value this 'f_baseGameStatistics) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (DemoCanvas.jstatic_BOT_GAME_STATS)) (jm_toString_0 (slot-value this 'f_baseGameStatistics))) (slot-value (CommonSeps.jm_getInstance_0) 'f_NEW_LINE))))
        (jm_init_0 (slot-value this 'f_baseGameStatistics))
        (if (jm_isFeature_1 _features (slot-value (MainFeatureFactory.jm_getInstance_0) 'f_LOAD_ONDEMAND))
            (progn
            (jm_start_0 _progressCanvas)))
        (jm_putF_3 (slot-value this 'f_logUtil) "Demo End" this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))
        (jm_close_0 this)
        (jm_removeListener_1 (DisplayChangeEventHandler.jm_getInstance_0) this)
        (jm_stopGameDemo_0 this))))

    
(unless (fboundp 'jm_setGameState_1) (defgeneric jm_setGameState_1 (this p1)))
(defmethod jm_setGameState_1 ((this DemoCanvas) _gameState)
  (declare (ignorable this _gameState))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getGameState_0) (defgeneric jm_getGameState_0 (this)))
(defmethod jm_getGameState_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (slot-value this 'f_gameStateFactory) 'f_PLAYING_GAME_STATE)))))

    
(unless (fboundp 'jm_getGameCanvasRunnableInterface_0) (defgeneric jm_getGameCanvasRunnableInterface_0 (this)))
(defmethod jm_getGameCanvasRunnableInterface_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameCanvas)))))

    
(unless (fboundp 'jm_isDemoLoading_0) (defgeneric jm_isDemoLoading_0 (this)))
(defmethod jm_isDemoLoading_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let (_gameCanvas)
  (declare (ignorable _gameCanvas))
    (block jreturn
        (setf _gameCanvas (slot-value this 'f_gameCanvas))
        (if (eq _gameCanvas (NullGameCanvas.jm_getInstance_0))
            (progn
            (return-from jreturn t))
            (if (jm_isInitialized_0 _gameCanvas)
            (progn
            (return-from jreturn nil))))
        (return-from jreturn t))))

    
(unless (fboundp 'jm_getState_0) (defgeneric jm_getState_0 (this)))
(defmethod jm_getState_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_state)))))

    
(unless (fboundp 'jm_setState_1) (defgeneric jm_setState_1 (this p1)))
(defmethod jm_setState_1 ((this DemoCanvas) _state)
  (declare (ignorable this _state))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_state) _state))))

    
(unless (fboundp 'jm_isHighScoreSubmitted_0) (defgeneric jm_isHighScoreSubmitted_0 (this)))
(defmethod jm_isHighScoreSubmitted_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) "Wow the AI got a high score!" this "isHighScoreSubmitted")
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_getRealHighScoresPaintable_0) (defgeneric jm_getRealHighScoresPaintable_0 (this)))
(defmethod jm_getRealHighScoresPaintable_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_realHighScoresPaintable)))))

    
(unless (fboundp 'jm_setSpecialAnimationInterface_1) (defgeneric jm_setSpecialAnimationInterface_1 (this p1)))
(defmethod jm_setSpecialAnimationInterface_1 ((this DemoCanvas) _specialAnimationInterface)
  (declare (ignorable this _specialAnimationInterface))
  (let ()
    (block jreturn
        (jm_setFrame_1 _specialAnimationInterface 0)
        (setf (slot-value this 'f_specialAnimationInterface) _specialAnimationInterface))))

    
(unless (fboundp 'jm_getSpecialAnimationInterface_0) (defgeneric jm_getSpecialAnimationInterface_0 (this)))
(defmethod jm_getSpecialAnimationInterface_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_specialAnimationInterface)))))

    
(unless (fboundp 'jm_setPaintableInterface_1) (defgeneric jm_setPaintableInterface_1 (this p1)))
(defmethod jm_setPaintableInterface_1 ((this DemoCanvas) _paintableInterface)
  (declare (ignorable this _paintableInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_paintableInterface) _paintableInterface))))

    
(unless (fboundp 'jm_getPaintableInterface_0) (defgeneric jm_getPaintableInterface_0 (this)))
(defmethod jm_getPaintableInterface_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_paintableInterface)))))

    
(unless (fboundp 'jm_setDefaultPaintableInterface_1) (defgeneric jm_setDefaultPaintableInterface_1 (this p1)))
(defmethod jm_setDefaultPaintableInterface_1 ((this DemoCanvas) _defaultPaintableInterface)
  (declare (ignorable this _defaultPaintableInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_defaultPaintableInterface) _defaultPaintableInterface))))

    
(unless (fboundp 'jm_getDefaultPaintableInterface_0) (defgeneric jm_getDefaultPaintableInterface_0 (this)))
(defmethod jm_getDefaultPaintableInterface_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_defaultPaintableInterface)))))

    
(unless (fboundp 'jm_getHighScoresFactoryInterface_0) (defgeneric jm_getHighScoresFactoryInterface_0 (this)))
(defmethod jm_getHighScoresFactoryInterface_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_highScoresFactoryInterface)))))

    
(unless (fboundp 'jm_setMenuInputProcessor_1) (defgeneric jm_setMenuInputProcessor_1 (this p1)))
(defmethod jm_setMenuInputProcessor_1 ((this DemoCanvas) _menuInputProcessor)
  (declare (ignorable this _menuInputProcessor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_menuInputProcessor) _menuInputProcessor))))

    
(unless (fboundp 'jm_getMenuInputProcessor_0) (defgeneric jm_getMenuInputProcessor_0 (this)))
(defmethod jm_getMenuInputProcessor_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_menuInputProcessor)))))

    
(unless (fboundp 'jm_getMenuForm_0) (defgeneric jm_getMenuForm_0 (this)))
(defmethod jm_getMenuForm_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_menuForm)))))

    
(unless (fboundp 'jm_setMenuForm_1) (defgeneric jm_setMenuForm_1 (this p1)))
(defmethod jm_setMenuForm_1 ((this DemoCanvas) _menuForm)
  (declare (ignorable this _menuForm))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_menuForm) _menuForm))))

    
(unless (fboundp 'jm_isInitialized_0) (defgeneric jm_isInitialized_0 (this)))
(defmethod jm_isInitialized_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_initialized)))))

    
(unless (fboundp 'jm_getOverlayPaintable_0) (defgeneric jm_getOverlayPaintable_0 (this)))
(defmethod jm_getOverlayPaintable_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_overlayPaintable)))))

    
(unless (fboundp 'jm_setBasicGameDemoPaintable_1) (defgeneric jm_setBasicGameDemoPaintable_1 (this p1)))
(defmethod jm_setBasicGameDemoPaintable_1 ((this DemoCanvas) _basicGameDemoPaintable)
  (declare (ignorable this _basicGameDemoPaintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicGameDemoPaintable) _basicGameDemoPaintable))))

    
(unless (fboundp 'jm_getBasicGameDemoPaintable_0) (defgeneric jm_getBasicGameDemoPaintable_0 (this)))
(defmethod jm_getBasicGameDemoPaintable_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicGameDemoPaintable)))))

    
(unless (fboundp 'jm_setTempWait_1) (defgeneric jm_setTempWait_1 (this p1)))
(defmethod jm_setTempWait_1 ((this DemoCanvas) _tempWait)
  (declare (ignorable this _tempWait))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_tempWait) _tempWait))))

    
(unless (fboundp 'jm_getTempWait_0) (defgeneric jm_getTempWait_0 (this)))
(defmethod jm_getTempWait_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_tempWait)))))

    
(unless (fboundp 'jm_isSingleThread_0) (defgeneric jm_isSingleThread_0 (this)))
(defmethod jm_isSingleThread_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (or (jm_isAnyThreed_0 (OpenGLFeatureUtil.jm_getInstance_0)) (SWTUtil.jstatic_isSWT))))))

    
(unless (fboundp 'jm_isRunningInAnotherThread_0) (defgeneric jm_isRunningInAnotherThread_0 (this)))
(defmethod jm_isRunningInAnotherThread_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let (_features _openGLFeatureFactory)
  (declare (ignorable _features _openGLFeatureFactory))
    (block jreturn
        (setf _features (Features.jm_getInstance_0))
        (setf _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
        (if (jm_isDefault_1 _features (slot-value _openGLFeatureFactory 'f_OPENGL_AS_GAME_THREAD))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn (jm_isRunning_0 this)))))))

    
(unless (fboundp 'jm_getGameInitializationInterfaceFactoryInterface_0) (defgeneric jm_getGameInitializationInterfaceFactoryInterface_0 (this)))
(defmethod jm_getGameInitializationInterfaceFactoryInterface_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameInitializationInterfaceFactoryInterface)))))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (DemoCanvas.jstatic_TYPE)))))

    
(unless (fboundp 'jm_getTitle_0) (defgeneric jm_getTitle_0 (this)))
(defmethod jm_getTitle_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_isPaused_0) (defgeneric jm_isPaused_0 (this)))
(defmethod jm_isPaused_0 ((this DemoCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))



