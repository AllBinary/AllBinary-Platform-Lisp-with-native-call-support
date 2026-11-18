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

(defclass AllBinaryGameCanvas (RunnableCanvas)
  ((f_basicColorFactory :initform nil)
   (f_basicSetColorUtil :initform nil)
   (f_touchFeatureFactory :initform nil)
   (f_openGLFeatureFactory :initform nil)
   (f_touchButtonFactory :initform nil)
   (f_gameAdStateFactory :initform nil)
   (f_gameStrings :initform nil)
   (f_gameInputStrings :initform nil)
   (f_gameStateFactory :initform nil)
   (f_gameTickTimeDelayHelper :initform nil)
   (f_gameTickDisplayInfoSingleton :initform nil)
   (f_gameRunnable :initform nil)
   (f_gamePauseRunnable :initform nil)
   (f_formUtil :initform nil)
   (f_myFormUtil :initform nil)
   (f_updateMyFontProcessor :initform nil)
   (f_myFontProcessor :initform nil)
   (f_gameSpecificPaintable :initform nil)
   (f_sensorGameUpdateProcessor :initform nil)
   (f_endGameInfo :initform nil)
   (f_startIntermissionInterface :initform nil)
   (f_endLevelIntermissionInterface :initform nil)
   (f_gameLayerManager :initform nil)
   (f_gameState :initform nil)
   (f_gameOver :initform nil)
   (f_initialized :initform nil)
   (f_gameStateTimeHelper :initform nil)
   (f_highScoresHelper :initform nil)
   (f_highScoreSubmitted :initform nil)
   (f_realHighScoresPaintable :initform nil)
   (f_highScoresPaintable :initform nil)
   (f_localPlayerGameInputList :initform nil)
   (f_isCheating :initform nil)
   (f_hashtable :initform nil)
   (f_isSingleKeyRepeatableProcessing :initform nil)
   (f_gameInitializationInterfaceFactoryInterface :initform nil)
   (f_touchButtonsPaintable :initform nil)
   (f_touchPaintable :initform nil)
   (f_cheatProcessor :initform nil)
   (f_gameInputProcessor :initform nil)
   (f_endGameProcessor :initform nil)
   (f_realEndGameProcessor :initform nil)
   (f_startIntermissionProcessor :initform nil)
   (f_realStartIntermissionProcessor :initform nil)
   (f_endGamePaintable :initform nil)
   (f_endGameStatePaintable :initform nil)
   (f_nonBotPaintable :initform nil)
   (f_intermissionPaintable :initform nil)
   (f_startIntermissionPaintable :initform nil)
   (f_mainStateProcessor :initform nil)
   (f_processGameProcessor :initform nil)
   (f_highScoresFactoryInterface :initform nil)
   (f_startLevel :initform 0)
   (f_mainMenuInputProcessor :initform nil)
   (f_popupMenuInputProcessor :initform nil)
   (f_menuInputProcessor :initform nil)
   (f_menuForm :initform nil)
   (f_formPaintable :initform nil)
   (f_openMenuPaintable :initform nil)
   (f_menuPaintable :initform nil)
   (f_currentTouchInputFactory :initform nil)
   (f_colorFillPaintable :initform nil)
   (f_baseGameStatistics :initform nil)
   (f_primaryPlayerQueue :initform nil)
   (f_secondaryPlayerQueue :initform nil)
   (f_BUILD_GAME :initform nil)
   (f_gameTypeFactory :initform nil)
   (f_screenCapture :initform nil)
   (f_basicMotionGesturesHandler :initform nil)
   (f_gameKeyEventHandler :initform nil)
   (f_gameBehavior :initform nil)
   (f_menuBehavior :initform nil)
   (f_progressPaintable :initform nil)
   (f_fontHeightP :initform 0)
   (f_gameCanvasStartListener :initform nil)
   (f_rawGameInputProcessor :initform nil)
   (f_rawInputProcessor :initform nil)
   (f_inputProcessor :initform nil)
   (f_YIELD_SLEEP :initform 0)))

(defvar AllBinaryGameCanvas.jcell_id :jnone)
(defun AllBinaryGameCanvas.jstatic_id ()
  (when (eq AllBinaryGameCanvas.jcell_id :jnone) (setf AllBinaryGameCanvas.jcell_id 0))
  AllBinaryGameCanvas.jcell_id)
(defun (setf AllBinaryGameCanvas.jstatic_id) (value) (setf AllBinaryGameCanvas.jcell_id value))

(defvar AllBinaryGameCanvas.jcell_TYPE :jnone)
(defun AllBinaryGameCanvas.jstatic_TYPE ()
  (when (eq AllBinaryGameCanvas.jcell_TYPE :jnone) (setf AllBinaryGameCanvas.jcell_TYPE 2))
  AllBinaryGameCanvas.jcell_TYPE)
(defun (setf AllBinaryGameCanvas.jstatic_TYPE) (value) (setf AllBinaryGameCanvas.jcell_TYPE value))

    
(defun AllBinaryGameCanvas.jnew_5 (_commandListener _gameLayerManager _highScoresFactoryInterface _gameInitializationInterfaceFactoryInterface _buffered)
  (declare (ignorable _commandListener _gameLayerManager _highScoresFactoryInterface _gameInitializationInterfaceFactoryInterface _buffered))
  (let ((this (make-instance 'AllBinaryGameCanvas)))
    (setf (slot-value this 'f_basicColorFactory) (BasicColorFactory.jm_getInstance_0))
    (setf (slot-value this 'f_basicSetColorUtil) (BasicColorSetUtil.jm_getInstance_0))
    (setf (slot-value this 'f_touchFeatureFactory) (TouchFeatureFactory.jm_getInstance_0))
    (setf (slot-value this 'f_openGLFeatureFactory) (OpenGLFeatureFactory.jm_getInstance_0))
    (setf (slot-value this 'f_touchButtonFactory) (TouchButtonFactory.jm_getInstance_0))
    (setf (slot-value this 'f_gameAdStateFactory) (GameAdStateFactory.jm_getInstance_0))
    (setf (slot-value this 'f_gameStrings) (GameStrings.jm_getInstance_0))
    (setf (slot-value this 'f_gameInputStrings) (GameInputStrings.jm_getInstance_0))
    (setf (slot-value this 'f_gameStateFactory) (GameStateFactory.jm_getInstance_0))
    (setf (slot-value this 'f_gameTickTimeDelayHelper) (GameTickTimeDelayHelperFactory.jm_getInstance_0))
    (setf (slot-value this 'f_gameTickDisplayInfoSingleton) (GameTickDisplayInfoSingleton.jm_getInstance_0))
    (setf (slot-value this 'f_gameRunnable) (GameCanvasRunnable.jnew_1 this))
    (setf (slot-value this 'f_gamePauseRunnable) (GameCanvasPauseRunnable.jnew_1 this))
    (setf (slot-value this 'f_formUtil) (FormUtil.jm_getInstance_0))
    (setf (slot-value this 'f_myFormUtil) (MyFormUtil.jm_getInstance_0))
    (setf (slot-value this 'f_updateMyFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor))
    (setf (slot-value this 'f_gameSpecificPaintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_sensorGameUpdateProcessor) (SingleSensorGameUpdateProcessor.jnew_0))
    (setf (slot-value this 'f_endGameInfo) (EndGameInfo.jnew_0))
    (setf (slot-value this 'f_startIntermissionInterface) (Intermission.jnew_0))
    (setf (slot-value this 'f_endLevelIntermissionInterface) (Intermission.jnew_0))
    (setf (slot-value this 'f_gameLayerManager) (AllBinaryGameLayerManager.jm_getNullInstance_0))
    (setf (slot-value this 'f_gameState) (slot-value (slot-value this 'f_gameStateFactory) 'f_NO_GAME_STATE))
    
    
    (setf (slot-value this 'f_gameStateTimeHelper) (TimeDelayHelper.jnew_1 0))
    
    
    (setf (slot-value this 'f_realHighScoresPaintable) (HighScoresPaintable.jnew_0))
    (setf (slot-value this 'f_highScoresPaintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_localPlayerGameInputList) (BasicArrayListD.jnew_0))
    
    (setf (slot-value this 'f_hashtable) (slot-value (slot-value this 'f_stdUtil) 'f_NULL_TABLE))
    
    (setf (slot-value this 'f_gameInitializationInterfaceFactoryInterface) (BasicBuildGameInitializerFactory.jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY))
    (setf (slot-value this 'f_touchButtonsPaintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_touchPaintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_cheatProcessor) (NoPlayerGameInput.jm_getInstance_0))
    (setf (slot-value this 'f_gameInputProcessor) (Processor.jm_getInstance_0))
    (setf (slot-value this 'f_endGameProcessor) (Processor.jm_getInstance_0))
    (setf (slot-value this 'f_realEndGameProcessor) (Processor.jm_getInstance_0))
    (setf (slot-value this 'f_startIntermissionProcessor) (Processor.jm_getInstance_0))
    (setf (slot-value this 'f_realStartIntermissionProcessor) (Processor.jm_getInstance_0))
    (setf (slot-value this 'f_endGamePaintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_endGameStatePaintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_nonBotPaintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_intermissionPaintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_startIntermissionPaintable) (NullInitUpdatePaintable.jm_getInstance_0))
    (setf (slot-value this 'f_mainStateProcessor) (Processor.jm_getInstance_0))
    (setf (slot-value this 'f_processGameProcessor) (Processor.jm_getInstance_0))
    
    
    (setf (slot-value this 'f_mainMenuInputProcessor) (NoMenuInputProcessor.jm_getInstance_0))
    (setf (slot-value this 'f_popupMenuInputProcessor) (NoMenuInputProcessor.jm_getInstance_0))
    (setf (slot-value this 'f_menuInputProcessor) (NoMenuInputProcessor.jm_getInstance_0))
    (setf (slot-value this 'f_menuForm) (ScrollSelectionForm.jm_getNullScrollSelectionForm_0))
    (setf (slot-value this 'f_formPaintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_openMenuPaintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_menuPaintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_currentTouchInputFactory) (NoButtonsTouchInputFactory.jm_getInstance_0))
    (setf (slot-value this 'f_colorFillPaintable) (jm_getInstance_2 (ColorFillPaintableFactory.jm_getInstance_0) (slot-value (slot-value this 'f_basicColorFactory) 'f_BLACK) t))
    (setf (slot-value this 'f_baseGameStatistics) (GameStatisticsFactory.jm_getInstance_0))
    (setf (slot-value this 'f_primaryPlayerQueue) (PrimaryPlayerQueueFactory.jm_getInstance_0))
    (setf (slot-value this 'f_secondaryPlayerQueue) (SecondaryPlayerQueueFactory.jm_getInstance_0))
    (setf (slot-value this 'f_BUILD_GAME) "buildGame")
    (setf (slot-value this 'f_gameTypeFactory) (GameTypeFactory.jm_getInstance_0))
    (setf (slot-value this 'f_screenCapture) (ScreenCaptureFactory.jm_getInstance_0))
    (setf (slot-value this 'f_basicMotionGesturesHandler) (BasicMotionGesturesHandler.jm_getInstance_0))
    (setf (slot-value this 'f_gameKeyEventHandler) (GameKeyEventHandler.jm_getInstance_0))
    
    
    (setf (slot-value this 'f_progressPaintable) (ProgressCanvasFactory.jm_getLazyInstance_0))
    
    (setf (slot-value this 'f_gameCanvasStartListener) (NullDemoPaintable.jstatic_NULL_DEMO_PAINTABLE))
    (setf (slot-value this 'f_rawGameInputProcessor) (GameCanvasInputProcessor.jnew_1 this))
    (setf (slot-value this 'f_rawInputProcessor) (FormInputProcessor.jnew_1 this))
    (setf (slot-value this 'f_inputProcessor) (jm_getRawGameInputProcessor_0 this))
    (setf (slot-value this 'f_YIELD_SLEEP) 100)
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_highScoresHelper) (jm_createHighScoresHelper_0 _highScoresFactoryInterface))
        (setf (slot-value this 'f_gameInitializationInterfaceFactoryInterface) _gameInitializationInterfaceFactoryInterface)
        (jm_init_2 this _gameLayerManager _buffered)
        (setf (slot-value this 'f_highScoresFactoryInterface) _highScoresFactoryInterface)
        (if (or (eq (jm_getGameType_0 (jm_getGameInfo_0 (slot-value this 'f_gameLayerManager))) (slot-value (slot-value this 'f_gameTypeFactory) 'f_BOT)) (eq (jm_getGameType_0 (jm_getGameInfo_0 (slot-value this 'f_gameLayerManager))) (slot-value (slot-value this 'f_gameTypeFactory) 'f_NONE)))
            (progn
            (setf (slot-value this 'f_gameBehavior) (DemoGameBehavior.jm_getInstance_0))
            (setf (slot-value this 'f_menuBehavior) (BaseMenuBehavior.jm_getInstance_0)))
            (progn
            (setf (slot-value this 'f_gameBehavior) (BaseGameBehavior.jm_getInstance_0))
            (setf (slot-value this 'f_menuBehavior) (jm_getInGameMenuBehavior_0 this))))
        (jm_initPopupMenu_0 this)
        (jm_initMenu_0 this)
        (jm_initSpecialPaint_0 this)
        (jm_addListenerInterface_1 (DisplayChangeEventHandler.jm_getInstance_0) this)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this AllBinaryGameCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let (_font _popupMenuRectangle _basicPopupMenuPaintable _popupMenuInputProcessor)
  (declare (ignorable _font _popupMenuRectangle _basicPopupMenuPaintable _popupMenuInputProcessor))
    (block jreturn
        (handler-case (progn
            (setf _font (jm_getFont_0 _graphics))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_START)) (slot-value (slot-value this 'f_canvasStrings) 'f_FD_WIDTH)) (MyFontProcessor.jm_defaultCharWidth_1 _font)) (slot-value (slot-value this 'f_canvasStrings) 'f_FD_HEIGHT)) (jm_getHeight_0 _font))) this (slot-value (slot-value this 'f_canvasStrings) 'f_UPDATE_MEASUREMENT))
            (setf (slot-value this 'f_fontHeightP) (jm_getHeight_0 _font))
            (jm_updateMeasurement_1 (slot-value this 'f_myFormUtil) _graphics)
            (setf _popupMenuRectangle (jm_getPopupMenuRectangle_0 (slot-value this 'f_myFormUtil)))
            (setf _basicPopupMenuPaintable (jm_getOpenMenuPaintable_0 this))
            (jm_init_1 _basicPopupMenuPaintable _popupMenuRectangle)
            (if (not (eq (jm_getPopupMenuInputProcessor_0 this) (NoMenuInputProcessor.jm_getInstance_0)))
                (progn
                (setf _popupMenuInputProcessor (jm_getPopupMenuInputProcessor_0 this))
                (jm_init_1 _popupMenuInputProcessor _popupMenuRectangle)))
            (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_canvasStrings) 'f_ON_DISPLAY_CHANGE_EVENT) _e))))))

    
(unless (fboundp 'jm_getInGameMenuBehavior_0) (defgeneric jm_getInGameMenuBehavior_0 (this)))
(defmethod jm_getInGameMenuBehavior_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (InGameMenuBehavior.jm_getInstance_0)))))

    
(unless (fboundp 'jm_setCurrentThread_0) (defgeneric jm_setCurrentThread_0 (this)))
(defmethod jm_setCurrentThread_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (J2MEUtil.jm_isHTML_0)
            (progn
            (jm_setCurrentThreadFake_0 this))
            (progn
            (call-next-method this))))))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this AllBinaryGameCanvas) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onDisplayChangeEvent_1) (defgeneric jm_onDisplayChangeEvent_1 (this p1)))
(defmethod jm_onDisplayChangeEvent_1 ((this AllBinaryGameCanvas) _displayChangeEvent)
  (declare (ignorable this _displayChangeEvent))
  (let ()
    (block jreturn
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_START)) (jm_toString_0 (DisplayInfoSingleton.jm_getInstance_0)))) this (slot-value (slot-value this 'f_canvasStrings) 'f_UPDATE_MEASUREMENT))
            (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor))
            (jm_onDisplayChangeEvent_2 (slot-value this 'f_menuBehavior) this _displayChangeEvent))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_canvasStrings) 'f_ON_DISPLAY_CHANGE_EVENT) _e))))))

    
(unless (fboundp 'jm_updateMenuFromEvent_1) (defgeneric jm_updateMenuFromEvent_1 (this p1)))
(defmethod jm_updateMenuFromEvent_1 ((this AllBinaryGameCanvas) _displayChangeEvent)
  (declare (ignorable this _displayChangeEvent))
  (let (_formType _rectangle)
  (declare (ignorable _formType _rectangle))
    (block jreturn
        (setf _formType (jm_getFormType_0 (FormTypeFactory.jm_getInstance_0)))
        (setf _rectangle (jm_createFormRectangle_0 (slot-value this 'f_formUtil)))
        (jm_init_2 (slot-value this 'f_menuForm) _rectangle _formType)
        (if (not (eq (slot-value this 'f_currentTouchInputFactory) (NoButtonsTouchInputFactory.jm_getInstance_0)))
            (progn
            (jm_toggle_2 (slot-value this 'f_touchButtonFactory) (jm_isPaused_0 this) (jm_getList_0 (slot-value this 'f_currentTouchInputFactory)))))
        (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor)))))

    
(unless (fboundp 'jm_processSleep_0) (defgeneric jm_processSleep_0 (this)))
(defmethod jm_processSleep_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (call-next-method this)
        (if (AllBinaryMediaManager.jm_update_0)
            (progn
            (if (not (jm_process_0 (slot-value this 'f_primaryPlayerQueue)))
                (progn
                (jm_process_0 (slot-value this 'f_secondaryPlayerQueue))))))
        (if (not (eq (jm_processInputList_0 (slot-value this 'f_menuInputProcessor)) (JR.i32 (- 1))))
            (progn
            (jm_process_0 (slot-value this 'f_runnableCanvasRefreshHelper)))))))

    
(unless (fboundp 'jm_initPopupMenu_0) (defgeneric jm_initPopupMenu_0 (this)))
(defmethod jm_initPopupMenu_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_features _popupMenuRectangle)
  (declare (ignorable _features _popupMenuRectangle))
    (block jreturn
        (if (eq (slot-value this 'f_popupMenuInputProcessor) (NoMenuInputProcessor.jm_getInstance_0))
            (progn
            (setf _features (Features.jm_getInstance_0))
            (setf _popupMenuRectangle (jm_getPopupMenuRectangle_0 (slot-value this 'f_myFormUtil)))
            (if (jm_isFeature_1 _features (slot-value (slot-value this 'f_touchFeatureFactory) 'f_TOUCH_ENABLED))
                (progn
                (jm_setOpenMenuPaintable_1 this (BasicPopupMenuPaintable.jnew_3 _popupMenuRectangle (jm_getBackgroundBasicColor_0 (slot-value this 'f_gameLayerManager)) (jm_getForegroundBasicColor_0 (slot-value this 'f_gameLayerManager))))
                (jm_setPopupMenuInputProcessor_1 this (PopupMenuInputProcessor.jnew_4 (BasicArrayListD.jnew_0) (JR.i32 (- 1)) this _popupMenuRectangle)))))
            (progn
            nil)))))

    
(unless (fboundp 'jm_initMenu_0) (defgeneric jm_initMenu_0 (this)))
(defmethod jm_initMenu_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (handler-case (progn
            (jm_initMenu_1 (slot-value this 'f_menuBehavior) this))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "initMenu" _e))))))

    
(unless (fboundp 'jm_initMenu2_0) (defgeneric jm_initMenu2_0 (this)))
(defmethod jm_initMenu2_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_formType _gameLimitedCommandTextItemArrayFactory _commandTextItemArrayFactory _items _rectangle _scrollSelectionForm _features)
  (declare (ignorable _formType _gameLimitedCommandTextItemArrayFactory _commandTextItemArrayFactory _items _rectangle _scrollSelectionForm _features))
    (block jreturn
        (jm_closeMenu_0 this)
        (setf _formType (jm_getFormType_0 (FormTypeFactory.jm_getInstance_0)))
        (setf _gameLimitedCommandTextItemArrayFactory (GameLimitedCommandTextItemArrayFactory.jm_getInstance_0))
        (setf _commandTextItemArrayFactory (jm_getCommandTextItemArrayFactory_0 _gameLimitedCommandTextItemArrayFactory))
        (setf _items (jm_getInstance_3 _commandTextItemArrayFactory (jm_getCommandStack_0 this) (jm_getBackgroundBasicColor_0 (slot-value this 'f_gameLayerManager)) (jm_getForegroundBasicColor_0 (slot-value this 'f_gameLayerManager))))
        (setf _rectangle (jm_createFormRectangle_0 (slot-value this 'f_formUtil)))
        (jm_setMenuForm_1 this (CommandCurrentSelectionFormFactory.jm_getInstance_8 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) _items _rectangle _formType 25 nil (jm_getBackgroundBasicColor_0 (slot-value this 'f_gameLayerManager)) (jm_getForegroundBasicColor_0 (slot-value this 'f_gameLayerManager))))
        (setf _scrollSelectionForm (jm_getMenuForm_0 this))
        (setf _features (Features.jm_getInstance_0))
        (if (jm_isFeature_1 _features (slot-value (slot-value this 'f_touchFeatureFactory) 'f_TOUCH_ENABLED))
            (progn
            (setf (slot-value this 'f_mainMenuInputProcessor) (PopupCommandFormInputProcessor.jnew_5 (BasicArrayListD.jnew_0) (JR.i32 (- 1)) this _scrollSelectionForm (jm_getPopupMenuInputProcessor_0 this))))
            (progn
            nil))
        (jm_setMenuInputProcessor_1 this (jm_getPopupMenuInputProcessor_0 this))
        (if (not (eq _scrollSelectionForm (ScrollSelectionFormNoneFactory.jm_getInstance_0)))
            (progn
            (jm_setFormPaintable_1 this (FormPaintable.jnew_1 _scrollSelectionForm)))
            (progn
            nil))
        (jm_closeMenu_0 this))))

    
(unless (fboundp 'jm_updateMenu_0) (defgeneric jm_updateMenu_0 (this)))
(defmethod jm_updateMenu_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (handler-case (progn
            (jm_updateMenu_1 (slot-value this 'f_menuBehavior) this))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "initMenu" _e))))))

    
(unless (fboundp 'jm_updateMenu2_0) (defgeneric jm_updateMenu2_0 (this)))
(defmethod jm_updateMenu2_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_scrollSelectionForm _gameLimitedCommandTextItemArrayFactory _commandTextItemArrayFactory _items _size _index _formType _rectangle)
  (declare (ignorable _scrollSelectionForm _gameLimitedCommandTextItemArrayFactory _commandTextItemArrayFactory _items _size _index _formType _rectangle))
    (block jreturn
        (setf _scrollSelectionForm (jm_getMenuForm_0 this))
        (jm_deleteAll_0 _scrollSelectionForm)
        (setf _gameLimitedCommandTextItemArrayFactory (GameLimitedCommandTextItemArrayFactory.jm_getInstance_0))
        (setf _commandTextItemArrayFactory (jm_getCommandTextItemArrayFactory_0 _gameLimitedCommandTextItemArrayFactory))
        (setf _items (jm_getInstance_3 _commandTextItemArrayFactory (jm_getCommandStack_0 this) (jm_getBackgroundBasicColor_0 (slot-value this 'f_gameLayerManager)) (jm_getForegroundBasicColor_0 (slot-value this 'f_gameLayerManager))))
        (setf _size (length _items))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_append_1 _scrollSelectionForm (aref _items _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf _formType (jm_getFormType_0 (FormTypeFactory.jm_getInstance_0)))
        (setf _rectangle (jm_createFormRectangle_0 (slot-value this 'f_formUtil)))
        (jm_init_2 _scrollSelectionForm _rectangle _formType))))

    
(unless (fboundp 'jm_pause_0) (defgeneric jm_pause_0 (this)))
(defmethod jm_pause_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_pause_1 (slot-value this 'f_gameBehavior) this)
        (jm_closeMenu_0 this)
        (call-next-method this)
        (jm_toggle_2 (slot-value this 'f_touchButtonFactory) (jm_isPaused_0 this) (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0)))
        (jm_gc_0 (slot-value this 'f_tsUtil)))))

    
(unless (fboundp 'jm_unPause_0) (defgeneric jm_unPause_0 (this)))
(defmethod jm_unPause_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_gameStrings) 'f_UNPAUSE))
        (jm_closeMenu_0 this)
        (jm_gc_0 (slot-value this 'f_tsUtil))
        (call-next-method this)
        (jm_toggle_2 (slot-value this 'f_touchButtonFactory) (jm_isPaused_0 this) (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0)))
        (jm_unPause_1 (slot-value this 'f_gameBehavior) this))))

    
(unless (fboundp 'jm_isPausable_0) (defgeneric jm_isPausable_0 (this)))
(defmethod jm_isPausable_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (eq (jm_getUsedRunnable_0 (CurrentDisplayableFactory.jm_getInstance_0)) (NullWaitGameRunnable.jm_getInstance_0))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_popupMenu_0) (defgeneric jm_popupMenu_0 (this)))
(defmethod jm_popupMenu_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_popupMenu_1 (slot-value this 'f_menuBehavior) this))))

    
(unless (fboundp 'jm_popupMenu2_0) (defgeneric jm_popupMenu2_0 (this)))
(defmethod jm_popupMenu2_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_primaryPlayerQueue) (SelectSound.jm_getInstance_0))
        (jm_setMenuPaintable_1 this (jm_getFormPaintable_0 this))
        (jm_setMenuInputProcessor_1 this (slot-value this 'f_mainMenuInputProcessor))
        (jm_addListenerInterface_1 (slot-value this 'f_basicMotionGesturesHandler) (slot-value this 'f_mainMenuInputProcessor))
        (jm_addListener_1 (slot-value this 'f_gameKeyEventHandler) (slot-value this 'f_mainMenuInputProcessor)))))

    
(unless (fboundp 'jm_toggleMenu_0) (defgeneric jm_toggleMenu_0 (this)))
(defmethod jm_toggleMenu_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_gameStrings) 'f_TOGGLE_MENU))
        (if (eq (jm_getMenuPaintable_0 this) (jm_getOpenMenuPaintable_0 this))
            (progn
            (jm_pause_0 this)
            (jm_updateMenu_0 this)
            (jm_popupMenu_0 this))
            (if (eq (jm_getMenuPaintable_0 this) (jm_getFormPaintable_0 this))
            (progn
            (jm_add_1 (slot-value this 'f_primaryPlayerQueue) (SelectSound.jm_getInstance_0))
            (jm_unPause_0 this)))))))

    
(unless (fboundp 'jm_closeMenu_0) (defgeneric jm_closeMenu_0 (this)))
(defmethod jm_closeMenu_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_closeMenu_1 (slot-value this 'f_menuBehavior) this))))

    
(unless (fboundp 'jm_closeMenu2_0) (defgeneric jm_closeMenu2_0 (this)))
(defmethod jm_closeMenu2_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setMenuPaintable_1 this (jm_getOpenMenuPaintable_0 this))
        (jm_removeListener_1 (slot-value this 'f_basicMotionGesturesHandler) (slot-value this 'f_mainMenuInputProcessor))
        (jm_removeListener_1 (slot-value this 'f_gameKeyEventHandler) (slot-value this 'f_mainMenuInputProcessor))
        (jm_setMenuInputProcessor_1 this (jm_getPopupMenuInputProcessor_0 this)))))

    
(unless (fboundp 'jm_open_0) (defgeneric jm_open_0 (this)))
(defmethod jm_open_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_addListenerInterface_1 (slot-value this 'f_basicMotionGesturesHandler) (slot-value this 'f_menuInputProcessor))
        (jm_addListener_1 (slot-value this 'f_gameKeyEventHandler) (slot-value this 'f_menuInputProcessor)))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_removeListener_1 (slot-value this 'f_basicMotionGesturesHandler) (slot-value this 'f_menuInputProcessor))
        (jm_removeListener_1 (slot-value this 'f_gameKeyEventHandler) (slot-value this 'f_menuInputProcessor))
        (jm_clear_0 (slot-value this 'f_primaryPlayerQueue))
        (jm_clear_0 (slot-value this 'f_secondaryPlayerQueue)))))

    
(unless (fboundp 'jm_processorInit_0) (defgeneric jm_processorInit_0 (this)))
(defmethod jm_processorInit_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setMainStateProcessor_1 this (Processor.jm_getInstance_0))
        (jm_setProcessGameProcessorInit_0 this))))

    
(unless (fboundp 'jm_setProcessGameProcessorInit_0) (defgeneric jm_setProcessGameProcessorInit_0 (this)))
(defmethod jm_setProcessGameProcessorInit_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setProcessGameProcessor_1 this (GameProcessor.jnew_1 this)))))

    
(unless (fboundp 'jm_initSpecialPaint_0) (defgeneric jm_initSpecialPaint_0 (this)))
(defmethod jm_initSpecialPaint_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_initSpecialPaint_1 (slot-value this 'f_menuBehavior) this))))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this AllBinaryGameCanvas) _gameLayerManager _buffered)
  (declare (ignorable this _gameLayerManager _buffered))
  (let (_BUFF_MESSAGE _features)
  (declare (ignorable _BUFF_MESSAGE _features))
    (block jreturn
        (jm_setStartTimeTNT_0 (slot-value this 'f_gameStateTimeHelper))
        (jm_setHighScoreSubmitted_1 this nil)
        (jm_setLayerManager_1 this _gameLayerManager)
        (if (not _buffered)
            (progn
            (setf _BUFF_MESSAGE "XXX Not Buffering Causes Concurrency Issues XXX")
            (jm_putF_3 (slot-value this 'f_logUtil) _BUFF_MESSAGE this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR)))
            (progn
            (error (JR.newException "Exception" "Buffering is disabled"))))
        (jm_setGameInputProcessor_1 this (Processor.jm_getInstance_0))
        (setf _features (Features.jm_getInstance_0))
        (if (jm_isFeature_1 _features (slot-value (GameFeatureFactory.jm_getInstance_0) 'f_CHEATING))
            (progn
            (setf (slot-value this 'f_isCheating) t)
            (setf (slot-value this 'f_cheatProcessor) (CheatGameInputProcessor.jnew_1 this))
            (jm_addListener_1 (slot-value this 'f_gameKeyEventHandler) (slot-value this 'f_cheatProcessor)))
            (progn
            (setf (slot-value this 'f_isCheating) nil)
            (setf (slot-value this 'f_cheatProcessor) (NoPlayerGameInput.jm_getInstance_0))))
        (setf (slot-value this 'f_realEndGameProcessor) (EndGameProcessor.jnew_1 this))
        (jm_setEndGameProcessor_1 this (Processor.jm_getInstance_0))
        (setf (slot-value this 'f_realStartIntermissionProcessor) (StartIntermissionProcessor.jnew_1 this))
        (setf (slot-value this 'f_startIntermissionProcessor) (Processor.jm_getInstance_0))
        (jm_setEndGameStatePaintable_1 this (EndGamePaintable.jnew_1 this))
        (jm_setEndGamePaintable_1 this (NullPaintable.jm_getInstance_0))
        (jm_setIntermissionPaintable_1 this (NullPaintable.jm_getInstance_0))
        (jm_setListener_1 (jm_getStartIntermissionInterface_0 this) this))))

    
(unless (fboundp 'jm_notifyIntermission_1) (defgeneric jm_notifyIntermission_1 (this p1)))
(defmethod jm_notifyIntermission_1 ((this AllBinaryGameCanvas) _enable)
  (declare (ignorable this _enable))
  (let ()
    (block jreturn
        (if _enable
            (progn
            (setf (slot-value this 'f_startIntermissionProcessor) (slot-value this 'f_realStartIntermissionProcessor)))
            (progn
            (setf (slot-value this 'f_startIntermissionProcessor) (Processor.jm_getInstance_0))))
        (if _enable
            (progn
            (jm_setIntermissionPaintable_1 this (jm_getStartIntermissionPaintable_0 this)))
            (progn
            (jm_setIntermissionPaintable_1 this (NullPaintable.jm_getInstance_0)))))))

    
(unless (fboundp 'jm_mediaInit_0) (defgeneric jm_mediaInit_0 (this)))
(defmethod jm_mediaInit_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED) this))))

    
(unless (fboundp 'jm_initConfigurable_1) (defgeneric jm_initConfigurable_1 (this p1)))
(defmethod jm_initConfigurable_1 ((this AllBinaryGameCanvas) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let (_progressCanvas _gameFeatureFactory _changedGameFeatureListener _features _sensorFeatureFactory _resourceLoadingLevelFactory)
  (declare (ignorable _progressCanvas _gameFeatureFactory _changedGameFeatureListener _features _sensorFeatureFactory _resourceLoadingLevelFactory))
    (block jreturn
        (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (jm_addNormalPortion_2 _progressCanvas 50 "Setting Configurables")
        (jm_initGame_3 (GameInitializationUtil.jm_getInstance_0) _abeClientInformation this (slot-value this 'f_gameInitializationInterfaceFactoryInterface))
        (setf _gameFeatureFactory (GameFeatureFactory.jm_getInstance_0))
        (setf _changedGameFeatureListener (ChangedGameFeatureListener.jm_getInstance_0))
        (if (jm_isChangedFeature_1 _changedGameFeatureListener (slot-value _gameFeatureFactory 'f_SOUND))
            (progn
            (setf _features (Features.jm_getInstance_0))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendboolean_1 (jm_append_1 (StringMaker.jnew_0) "Sound Changing To: ") (jm_isFeature_1 _features (slot-value _gameFeatureFactory 'f_SOUND)))) this "initConfigurable")
            (jm_mediaInit_0 this)
            (jm_remove_1 _changedGameFeatureListener (slot-value _gameFeatureFactory 'f_SOUND))))
        (setf _sensorFeatureFactory (SensorFeatureFactory.jm_getInstance_0))
        (if (or (or (jm_isChangedFeature_1 _changedGameFeatureListener (slot-value _sensorFeatureFactory 'f_ORIENTATION_SENSORS)) (jm_isChangedFeature_1 _changedGameFeatureListener (slot-value _sensorFeatureFactory 'f_NO_ORIENTATION))) (jm_isChangedFeature_1 _changedGameFeatureListener (slot-value _sensorFeatureFactory 'f_SIMULATED_ORIENTATION_SENSORS)))
            (progn
            (jm_remove_1 _changedGameFeatureListener (slot-value _sensorFeatureFactory 'f_NO_ORIENTATION))
            (jm_remove_1 _changedGameFeatureListener (slot-value _sensorFeatureFactory 'f_ORIENTATION_SENSORS))
            (jm_remove_1 _changedGameFeatureListener (slot-value _sensorFeatureFactory 'f_SIMULATED_ORIENTATION_SENSORS))))
        (setf _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (jm_loadResourceLoadingLevel_1 this (slot-value _resourceLoadingLevelFactory 'f_LOAD_GAME)))))

    
(unless (fboundp 'jm_initApp_1) (defgeneric jm_initApp_1 (this p1)))
(defmethod jm_initApp_1 ((this AllBinaryGameCanvas) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let ()
    (block jreturn
        (jm_initConfigurable_1 this _abeClientInformation)
        (jm_processorInit_0 this)
        (jm_process_1 (slot-value this 'f_sensorGameUpdateProcessor) (slot-value this 'f_gameLayerManager))
        (jm_sendNotifications_1 (slot-value this 'f_sensorGameUpdateProcessor) (slot-value this 'f_gameLayerManager))
        (jm_initTouch_0 this))))

    
(unless (fboundp 'jm_initTouch_0) (defgeneric jm_initTouch_0 (this)))
(defmethod jm_initTouch_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_gameInitializedEvent _resourceLoadingLevelFactory)
  (declare (ignorable _gameInitializedEvent _resourceLoadingLevelFactory))
    (block jreturn
        (setf _gameInitializedEvent (slot-value (GameInitializationUtil.jm_getInstance_0) 'f_EVENT))
        (setf _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (jm_setResourceLoadingLevel_1 _gameInitializedEvent (slot-value _resourceLoadingLevelFactory 'f_LOAD_TOUCH))
        (jm_fireEvent_1 (GameInitializedEventHandler.jm_getInstance_0) _gameInitializedEvent)
        (jm_defaultList_0 (slot-value this 'f_touchButtonFactory))
        (jm_updateTouch_0 this)
        (jm_postInitTouch_0 this))))

    
(unless (fboundp 'jm_updateCurrentTouchInputFactory_1) (defgeneric jm_updateCurrentTouchInputFactory_1 (this p1)))
(defmethod jm_updateCurrentTouchInputFactory_1 ((this AllBinaryGameCanvas) _nextTouchInput)
  (declare (ignorable this _nextTouchInput))
  (let ()
    (block jreturn
        (if (not (eq _nextTouchInput (slot-value this 'f_currentTouchInputFactory)))
            (progn
            (setf (slot-value this 'f_currentTouchInputFactory) _nextTouchInput)
            (PreLogUtil.jm_put_3 (jm_toString_0 (slot-value this 'f_currentTouchInputFactory)) this (slot-value (slot-value this 'f_gameInputStrings) 'f_UDPATE_CURRENT_TOUCH_INPUT_FACTORY))
            (jm_toggle_2 (slot-value this 'f_touchButtonFactory) (jm_isPaused_0 this) (jm_getList_0 (slot-value this 'f_currentTouchInputFactory))))))))

    
(unless (fboundp 'jm_updateTouch_0) (defgeneric jm_updateTouch_0 (this)))
(defmethod jm_updateTouch_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_updateTouch_1 (slot-value this 'f_gameBehavior) this))))

    
(unless (fboundp 'jm_updateTouch2_0) (defgeneric jm_updateTouch2_0 (this)))
(defmethod jm_updateTouch2_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_features)
  (declare (ignorable _features))
    (block jreturn
        (setf _features (Features.jm_getInstance_0))
        (if (jm_isFeature_1 _features (slot-value (slot-value this 'f_touchFeatureFactory) 'f_AUTO_HIDE_SHOW_SCREEN_BUTTONS))
            (progn
            (if (eq (JR.i32 (- (jm_getCurrentLevel_0 (jm_getGameInfo_0 (slot-value this 'f_gameLayerManager))) (jm_getStartLevel_0 this))) 1)
                (progn
                (jm_setTouchPaintableP_1 this (NullPaintable.jm_getInstance_0)))))))))

    
(unless (fboundp 'jm_postInitTouch_0) (defgeneric jm_postInitTouch_0 (this)))
(defmethod jm_postInitTouch_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setTouchButtonsPaintable_1 this (TouchButtonsPaintableFactory.jm_getInstance_1 (jm_getForegroundBasicColor_0 (slot-value this 'f_gameLayerManager))))
        (jm_updateScreenButtonPaintable_0 this))))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this AllBinaryGameCanvas) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let ()
    (block jreturn
        (jm_removeAllCommands_0 this)
        (jm_addCommands_0 this)
        (jm_setCommandListener_1 this _cmdListener))))

    
(unless (fboundp 'jm_addCommands_0) (defgeneric jm_addCommands_0 (this)))
(defmethod jm_addCommands_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_gameCommandsFactory _myCommandsFactory _isOverScan)
  (declare (ignorable _gameCommandsFactory _myCommandsFactory _isOverScan))
    (block jreturn
        (setf _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (setf _myCommandsFactory (MyCommandsFactory.jm_getInstance_0))
        (if (not (eq (DebugFactory.jm_getInstance_0) (NoDebug.jm_getInstance_0)))
            (progn
            (jm_addCommand_1 this (slot-value _gameCommandsFactory 'f_START_TRACE))))
        (jm_addCommand_1 this (slot-value _gameCommandsFactory 'f_RESTART_COMMAND))
        (jm_addCommand_1 this (slot-value _myCommandsFactory 'f_PAUSE_COMMAND))
        (jm_addCommand_1 this (slot-value _gameCommandsFactory 'f_QUIT_COMMAND))
        (setf _isOverScan (jm_isOverScan_0 (jm_getOperatingSystemInstance_0 (OperatingSystemFactory.jm_getInstance_0))))
        (if (J2MEUtil.jm_isHTML_0)
            (progn
            nil)
            (if (SWTUtil.jstatic_isSWT)
            (progn
            nil)
            (if (not _isOverScan)
            (progn
            (if (and (jm_isTouch_0 (TouchScreenFactory.jm_getInstance_0)) (jm_isAny_0 (InGameFeatures.jnew_0)))
                (progn
                (jm_addCommand_1 this (InGameOptionsForm.jstatic_DISPLAY))))
            (jm_addCommand_1 this (slot-value _gameCommandsFactory 'f_SAVE))
            (jm_addCommand_1 this (slot-value _gameCommandsFactory 'f_DISPLAY_LOAD_FORM)))))))))

    
(unless (fboundp 'jm_itemStateChanged_1) (defgeneric jm_itemStateChanged_1 (this p1)))
(defmethod jm_itemStateChanged_1 ((this AllBinaryGameCanvas) _item)
  (declare (ignorable this _item))
  (let (_itemLabel _gameFeatureUtil)
  (declare (ignorable _itemLabel _gameFeatureUtil))
    (block jreturn
        (handler-case (progn
            (setf _itemLabel (jm_getLabel_0 _item))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonLabels) 'f_ITEM_LABEL)) _itemLabel)) this "itemStateChanged")
            (if (typep _item 'ChoiceGroup)
                (progn
                (setf _gameFeatureUtil (GameFeatureUtil.jm_getInstance_0))
                (if (jm_isExclusive_1 _gameFeatureUtil _itemLabel)
                    (progn
                    (jm_updateExclusiveForChoiceGroup_1 _gameFeatureUtil _item))
                    (progn
                    (jm_updateMultiple_1 _gameFeatureUtil _item)))))
            (jm_process_1 (slot-value this 'f_sensorGameUpdateProcessor) (slot-value this 'f_gameLayerManager))
            (jm_updateTouch_0 this)
            (jm_updateScreenButtonPaintable_0 this)
            (jm_sendNotifications_1 (slot-value this 'f_sensorGameUpdateProcessor) (slot-value this 'f_gameLayerManager)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "itemStateChanged" _e))))))

    
(unless (fboundp 'jm_updateScreenButtonPaintable_0) (defgeneric jm_updateScreenButtonPaintable_0 (this)))
(defmethod jm_updateScreenButtonPaintable_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_updateScreenButtonPaintable_1 (slot-value this 'f_gameBehavior) this))))

    
(unless (fboundp 'jm_updateScreenButtonPaintable2_0) (defgeneric jm_updateScreenButtonPaintable2_0 (this)))
(defmethod jm_updateScreenButtonPaintable2_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_features)
  (declare (ignorable _features))
    (block jreturn
        (setf _features (Features.jm_getInstance_0))
        (if (jm_isFeature_1 _features (slot-value (slot-value this 'f_touchFeatureFactory) 'f_AUTO_HIDE_SHOW_SCREEN_BUTTONS))
            (progn
            (jm_setTouchPaintableP_1 this (jm_getTouchButtonsPaintable_0 this))
            (jm_setStartLevel_1 this (jm_getCurrentLevel_0 (jm_getGameInfo_0 (slot-value this 'f_gameLayerManager)))))
            (if (jm_isFeature_1 _features (slot-value (slot-value this 'f_touchFeatureFactory) 'f_SHOW_SCREEN_BUTTONS))
            (progn
            (jm_setTouchPaintableP_1 this (jm_getTouchButtonsPaintable_0 this)))
            (if (jm_isFeature_1 _features (slot-value (slot-value this 'f_touchFeatureFactory) 'f_HIDE_SCREEN_BUTTONS))
            (progn
            (jm_setTouchPaintableP_1 this (NullPaintable.jm_getInstance_0)))
            (progn
            (jm_setTouchPaintableP_1 this (NullPaintable.jm_getInstance_0)))))))))

    
(unless (fboundp 'jm_getLayerManager_0) (defgeneric jm_getLayerManager_0 (this)))
(defmethod jm_getLayerManager_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameLayerManager)))))

    
(unless (fboundp 'jm_setLayerManager_1) (defgeneric jm_setLayerManager_1 (this p1)))
(defmethod jm_setLayerManager_1 ((this AllBinaryGameCanvas) _layerManager)
  (declare (ignorable this _layerManager))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameLayerManager) _layerManager))))

    
(unless (fboundp 'jm_isGameOver_0) (defgeneric jm_isGameOver_0 (this)))
(defmethod jm_isGameOver_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameOver)))))

    
(unless (fboundp 'jm_setGameOver_1) (defgeneric jm_setGameOver_1 (this p1)))
(defmethod jm_setGameOver_1 ((this AllBinaryGameCanvas) _gameOver)
  (declare (ignorable this _gameOver))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameOver) _gameOver))))

    
(unless (fboundp 'jm_processGameOver_0) (defgeneric jm_processGameOver_0 (this)))
(defmethod jm_processGameOver_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (PreLogUtil.jm_put_3 (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_gameStrings) 'f_SET_GAME_OVER))
        (jm_setGameOver_1 this t)
        (jm_removePauseCommand_0 this)
        (jm_setGameState_1 this (slot-value (slot-value this 'f_gameStateFactory) 'f_SHOW_END_RESULT_GAME_STATE))
        (jm_setEndGamePaintable_1 this (jm_getEndGameStatePaintable_0 this)))))

    
(unless (fboundp 'jm_isHighScoreSubmitted_0) (defgeneric jm_isHighScoreSubmitted_0 (this)))
(defmethod jm_isHighScoreSubmitted_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_highScoreSubmitted)))))

    
(unless (fboundp 'jm_setHighScoreSubmitted_1) (defgeneric jm_setHighScoreSubmitted_1 (this p1)))
(defmethod jm_setHighScoreSubmitted_1 ((this AllBinaryGameCanvas) _highScoreSubmitted)
  (declare (ignorable this _highScoreSubmitted))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_highScoreSubmitted) _highScoreSubmitted)
        (if _highScoreSubmitted
            (progn
            (jm_setSelectedHighScores_1 (slot-value this 'f_highScoresHelper) (NullHighScoresSingletonFactory.jm_getInstance_0))))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendboolean_1 (jm_append_1 (StringMaker.jnew_0) "isHighScoreSubmitted: ") _highScoreSubmitted)) this "setHighScoreSubmitted"))))

    
(unless (fboundp 'jm_getGameState_0) (defgeneric jm_getGameState_0 (this)))
(defmethod jm_getGameState_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameState)))))

    
(unless (fboundp 'jm_setGameState_1) (defgeneric jm_setGameState_1 (this p1)))
(defmethod jm_setGameState_1 ((this AllBinaryGameCanvas) _gameState)
  (declare (ignorable this _gameState))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_gameStrings) 'f_GAME_STATE)) (JR.toString (slot-value this 'f_stringUtil)))) this (slot-value (slot-value this 'f_gameStrings) 'f_SET_GAME_STATE))
        (setf (slot-value this 'f_gameState) _gameState)
        (jm_setStartTimeTNT_0 (slot-value this 'f_gameStateTimeHelper))
        (jm_updateEndGameProcessor_0 this)
        (jm_updateGameKeyEventProcessor_0 this)
        (jm_setGameState_1 (slot-value this 'f_gameBehavior) this))))

    
(unless (fboundp 'jm_updateGameState_0) (defgeneric jm_updateGameState_0 (this)))
(defmethod jm_updateGameState_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_gameAdState)
  (declare (ignorable _gameAdState))
    (block jreturn
        (setf _gameAdState (jm_getCurrentInstance_0 (slot-value this 'f_gameAdStateFactory)))
        (jm_processAdState_2 _gameAdState (slot-value this 'f_gameState) (jm_getGameType_0 (jm_getGameInfo_0 (slot-value this 'f_gameLayerManager))))
        (if (not (eq (slot-value this 'f_gameState) (slot-value (slot-value this 'f_gameStateFactory) 'f_PLAYING_GAME_STATE)))
            (progn
            (jm_processPageAdState_0 _gameAdState))))))

    
(unless (fboundp 'jm_updateGameKeyEventProcessor_0) (defgeneric jm_updateGameKeyEventProcessor_0 (this)))
(defmethod jm_updateGameKeyEventProcessor_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (or (not (eq (jm_getGameState_0 this) (slot-value (slot-value this 'f_gameStateFactory) 'f_PLAYING_GAME_STATE))) (slot-value this 'f_isCheating))
            (progn
            nil)
            (progn
            nil)))))

    
(unless (fboundp 'jm_removeAllGameKeyInputListenersOnBuild_0) (defgeneric jm_removeAllGameKeyInputListenersOnBuild_0 (this)))
(defmethod jm_removeAllGameKeyInputListenersOnBuild_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_removeAllGameKeyInputListeners_0 this))))

    
(unless (fboundp 'jm_removeAllGameKeyInputListeners_0) (defgeneric jm_removeAllGameKeyInputListeners_0 (this)))
(defmethod jm_removeAllGameKeyInputListeners_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_removeAllGameKeyInputListeners_1 (slot-value this 'f_gameBehavior) this))))

    
(unless (fboundp 'jm_removeAllGameKeyInputListeners2_0) (defgeneric jm_removeAllGameKeyInputListeners2_0 (this)))
(defmethod jm_removeAllGameKeyInputListeners2_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_playerGameInput _index)
  (declare (ignorable _playerGameInput _index))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) "Remove PlayerInput Listeners" this "removeAllGameKeyInputListeners")
        (progn
            (setf _index (JR.i32 (- (jm_size_0 (slot-value this 'f_localPlayerGameInputList)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _playerGameInput (jm_get_1 (slot-value this 'f_localPlayerGameInputList) _index))
            (jm_removeKeyInputListener_1 this _playerGameInput)
            (jm_removeNonAIInputGameKeyEvents_0 _playerGameInput))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_removeKeyInputListener_1) (defgeneric jm_removeKeyInputListener_1 (this p1)))
(defmethod jm_removeKeyInputListener_1 ((this AllBinaryGameCanvas) _playerGameInput)
  (declare (ignorable this _playerGameInput))
  (let ()
    (block jreturn
        (jm_removeListener_1 (slot-value this 'f_gameKeyEventHandler) _playerGameInput))))

    
(unless (fboundp 'jm_updateEndGameProcessor_0) (defgeneric jm_updateEndGameProcessor_0 (this)))
(defmethod jm_updateEndGameProcessor_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_updateEndGameProcessor_1 (slot-value this 'f_gameBehavior) this))))

    
(unless (fboundp 'jm_updateEndGameProcessor2_0) (defgeneric jm_updateEndGameProcessor2_0 (this)))
(defmethod jm_updateEndGameProcessor2_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (or (eq (jm_getGameState_0 this) (slot-value (slot-value this 'f_gameStateFactory) 'f_SHOW_END_RESULT_GAME_STATE)) (eq (jm_getGameState_0 this) (slot-value (slot-value this 'f_gameStateFactory) 'f_SHOW_HIGH_SCORE_GAME_STATE)))
            (progn
            (jm_setEndGameProcessor_1 this (slot-value this 'f_realEndGameProcessor)))
            (progn
            (jm_setEndGameProcessor_1 this (Processor.jm_getInstance_0)))))))

    
(unless (fboundp 'jm_buildGameInit_1) (defgeneric jm_buildGameInit_1 (this p1)))
(defmethod jm_buildGameInit_1 ((this AllBinaryGameCanvas) _isPortion)
  (declare (ignorable this _isPortion))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_cleanupGame_0) (defgeneric jm_cleanupGame_0 (this)))
(defmethod jm_cleanupGame_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_progressCanvas)
  (declare (ignorable _progressCanvas))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CLEANUP))
        (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (jm_addNormalPortion_2 _progressCanvas 10 "Cleaning Up")
        (jm_clear_0 (slot-value this 'f_primaryPlayerQueue))
        (jm_clear_0 (slot-value this 'f_secondaryPlayerQueue))
        (jm_clear_0 (GameLevelDisplayChangeEventListenersFactory.jm_getInstance_0)))))

    
(unless (fboundp 'jm_loadResourceLoadingLevel_1) (defgeneric jm_loadResourceLoadingLevel_1 (this p1)))
(defmethod jm_loadResourceLoadingLevel_1 ((this AllBinaryGameCanvas) _resourceLoadingLevel)
  (declare (ignorable this _resourceLoadingLevel))
  (let (_gameInitializedEvent)
  (declare (ignorable _gameInitializedEvent))
    (block jreturn
        (setf _gameInitializedEvent (slot-value (GameInitializationUtil.jm_getInstance_0) 'f_EVENT))
        (jm_setResourceLoadingLevel_1 _gameInitializedEvent _resourceLoadingLevel)
        (jm_fireEvent_1 (GameInitializedEventHandler.jm_getInstance_0) _gameInitializedEvent))))

    
(unless (fboundp 'jm_loadResources_1) (defgeneric jm_loadResources_1 (this p1)))
(defmethod jm_loadResources_1 ((this AllBinaryGameCanvas) _level)
  (declare (ignorable this _level))
  (let (_gameInitializedEvent)
  (declare (ignorable _gameInitializedEvent))
    (block jreturn
        (setf _gameInitializedEvent (slot-value (GameInitializationUtil.jm_getInstance_0) 'f_EVENT))
        (jm_setLevel_1 _gameInitializedEvent _level)
        (jm_fireEvent_1 (GameInitializedEventHandler.jm_getInstance_0) _gameInitializedEvent))))

    
(unless (fboundp 'jm_updateColor_0) (defgeneric jm_updateColor_0 (this)))
(defmethod jm_updateColor_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_buildGame_1) (defgeneric jm_buildGame_1 (this p1)))
(defmethod jm_buildGame_1 ((this AllBinaryGameCanvas) _portion)
  (declare (ignorable this _portion))
  (let (_progressCanvas _features)
  (declare (ignorable _progressCanvas _features))
    (block jreturn
        (jm_endRecording_0 (slot-value this 'f_screenCapture))
        (jm_startRecording_0 (slot-value this 'f_screenCapture))
        (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (setf _features (Features.jm_getInstance_0))
        (jm_addNormalPortion_2 _progressCanvas _portion "Generic Build")
        (jm_removeAllGameKeyInputListenersOnBuild_0 this)
        (jm_updateTouch_0 this)
        (jm_addNormalPortion_2 _progressCanvas _portion "High Scores")
        (jm_fetchHighScores_2 (slot-value this 'f_highScoresFactoryInterface) (jm_getGameInfo_0 (slot-value this 'f_gameLayerManager)) (slot-value this 'f_highScoresHelper))
        (jm_setHighScoresPaintable_1 this (NullPaintable.jm_getInstance_0))
        (jm_addNormalPortion_2 _progressCanvas _portion "Finishing.")
        (jm_update_2 (jm_getEndGameInfoP_0 this) (jm_getGameInfo_0 (jm_getLayerManager_0 this)) this)
        (setf (slot-value this 'f_isSingleKeyRepeatableProcessing) (jm_isFeature_1 _features (slot-value (InputFeatureFactory.jm_getInstance_0) 'f_SINGLE_KEY_REPEAT_PRESS)))
        (jm_setGameOver_1 this nil)
        (jm_addNormalPortion_2 _progressCanvas _portion "Finishing..")
        (jm_updateColor_0 this)
        (jm_update_0 (jm_getStartIntermissionPaintable_0 this))
        (if (not (jm_isRunningInAnotherThread_0 this))
            (progn
            (return-from jreturn)))
        (jm_addNormalPortion_2 _progressCanvas _portion "Finishing...")
        (if (or (jm_isMainCanvas_0 this) (not (jm_isInitialized_0 this)))
            (progn
            (if (jm_isFeature_1 _features (slot-value (MainFeatureFactory.jm_getInstance_0) 'f_LOAD_ONDEMAND))
                (progn
                (if (not (null (jm_getCustomCommandListener_0 this)))
                    (progn
                    (jm_end_0 _progressCanvas))))
                (progn
                (jm_end_0 _progressCanvas)))
            (jm_setInitialized_1 this t)))
        (if (eq (jm_getCustomCommandListener_0 this) (NullCommandListener.jstatic_NULL_COMMAND_LISTENER))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "Show Game Paintable in DemoCanvas Thread" this (slot-value this 'f_BUILD_GAME))
            (jm_showGamePaintable_0 (slot-value this 'f_gameCanvasStartListener)))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "No GameCanvasStartListener" this (slot-value this 'f_BUILD_GAME))))
        (jm_setBasicColorP_1 (slot-value this 'f_colorFillPaintable) (jm_getBackgroundBasicColor_0 (slot-value this 'f_gameLayerManager)))
        (jm_buildGame_1 (slot-value this 'f_gameBehavior) this))))

    
(unless (fboundp 'jm_buildGame2_0) (defgeneric jm_buildGame2_0 (this)))
(defmethod jm_buildGame2_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_playerGameInput _index)
  (declare (ignorable _playerGameInput _index))
    (block jreturn
        (PreLogUtil.jm_put_3 (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_gameInputStrings) 'f_ENABLE_PLAYER_GAME_INPUTS)) (jm_size_0 (slot-value this 'f_localPlayerGameInputList)))) this (slot-value this 'f_BUILD_GAME))
        (setf _playerGameInput nil)
        (progn
            (setf _index (JR.i32 (- (jm_size_0 (slot-value this 'f_localPlayerGameInputList)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _playerGameInput (jm_get_1 (slot-value this 'f_localPlayerGameInputList) _index))
            (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_gameInputStrings) 'f_ENABLE_PLAYER_GAME_INPUT)) (jm_toString_0 _playerGameInput))) this (slot-value this 'f_BUILD_GAME))
            (jm_removeNonAIInputGameKeyEvents_0 _playerGameInput)
            (jm_addKeyInputListener_1 this _playerGameInput))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_addKeyInputListener_1) (defgeneric jm_addKeyInputListener_1 (this p1)))
(defmethod jm_addKeyInputListener_1 ((this AllBinaryGameCanvas) _playerGameInput)
  (declare (ignorable this _playerGameInput))
  (let ()
    (block jreturn
        (jm_addListenerForPlayer_2 (GameKeyEventHandler.jm_getInstance_0) _playerGameInput (jm_getPlayerInputId_0 _playerGameInput)))))

    
(unless (fboundp 'jm_setGameCanvasStartListener_1) (defgeneric jm_setGameCanvasStartListener_1 (this p1)))
(defmethod jm_setGameCanvasStartListener_1 ((this AllBinaryGameCanvas) _gameCanvasStartListener)
  (declare (ignorable this _gameCanvasStartListener))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameCanvasStartListener) _gameCanvasStartListener))))

    
(unless (fboundp 'jm_loadState_0) (defgeneric jm_loadState_0 (this)))
(defmethod jm_loadState_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_hashtable _levelAsString _level _gameInfo)
  (declare (ignorable _hashtable _levelAsString _level _gameInfo))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_LOAD))
        (setf _hashtable (jm_getLoadStateHashtable_0 this))
        (if (and (not (null _hashtable)) (> (jm_size_0 _hashtable) 0))
            (progn
            (setf _levelAsString (jm_get_1 _hashtable (GameInfo.jstatic_LEVEL_NAME)))
            (setf _level (jm_intValue_0 _levelAsString))
            (setf _gameInfo (jm_getGameInfo_0 (slot-value this 'f_gameLayerManager)))
            (jm_setCurrentLevel_1 _gameInfo _level))))))

    
(unless (fboundp 'jm_getLoadStateHashtable_0) (defgeneric jm_getLoadStateHashtable_0 (this)))
(defmethod jm_getLoadStateHashtable_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonLabels) 'f_START_LABEL)) (JR.toString (slot-value this 'f_stringUtil)))) this "getLoadStateHashtable")
        (return-from jreturn (slot-value this 'f_hashtable)))))

    
(unless (fboundp 'jm_setLoadStateHashtable_1) (defgeneric jm_setLoadStateHashtable_1 (this p1)))
(defmethod jm_setLoadStateHashtable_1 ((this AllBinaryGameCanvas) _hashtable)
  (declare (ignorable this _hashtable))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonLabels) 'f_START_LABEL)) (JR.toString (slot-value this 'f_stringUtil)))) this "setLoadStateHashtable")
        (setf (slot-value this 'f_hashtable) _hashtable))))

    
(unless (fboundp 'jm_getCurrentStateHashtable_0) (defgeneric jm_getCurrentStateHashtable_0 (this)))
(defmethod jm_getCurrentStateHashtable_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_hashtable _level)
  (declare (ignorable _hashtable _level))
    (block jreturn
        (setf _hashtable (jm_createHashtable_0 (slot-value this 'f_stdUtil)))
        (setf _level (jm_getCurrentLevel_0 (jm_getGameInfo_0 (slot-value this 'f_gameLayerManager))))
        (jm_put_2 _hashtable (JR.toString (GameInfo.jstatic_LEVEL_NAME)) (JR.str _level))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "End: ") (JR.toString (slot-value this 'f_stringUtil)))) this "getCurrentStateHashtable")
        (return-from jreturn _hashtable))))

    
(unless (fboundp 'jm_paintGameOver_1) (defgeneric jm_paintGameOver_1 (this p1)))
(defmethod jm_paintGameOver_1 ((this AllBinaryGameCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED) this))))

    
(unless (fboundp 'jm_draw_1) (defgeneric jm_draw_1 (this p1)))
(defmethod jm_draw_1 ((this AllBinaryGameCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paint_1 (slot-value this 'f_colorFillPaintable) _graphics)
        (jm_setBasicColorP_2 (slot-value this 'f_basicSetColorUtil) _graphics (jm_getForegroundBasicColor_0 (slot-value this 'f_gameLayerManager)))
        (jm_paint_1 (slot-value this 'f_gameSpecificPaintable) _graphics))))

    
(unless (fboundp 'jm_clear_1) (defgeneric jm_clear_1 (this p1)))
(defmethod jm_clear_1 ((this AllBinaryGameCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paint_1 (slot-value this 'f_colorFillPaintable) _graphics))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this AllBinaryGameCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_nextRefresh_0 (slot-value this 'f_baseGameStatistics))
        (jm_draw_1 this _graphics)
        (jm_paint_1 (slot-value this 'f_menuPaintable) _graphics)
        (jm_paint_1 (slot-value this 'f_progressPaintable) _graphics))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this AllBinaryGameCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processEndLevelIntermissionGameState_0) (defgeneric jm_processEndLevelIntermissionGameState_0 (this)))
(defmethod jm_processEndLevelIntermissionGameState_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_nonBotPaint_1) (defgeneric jm_nonBotPaint_1 (this p1)))
(defmethod jm_nonBotPaint_1 ((this AllBinaryGameCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paint_1 (slot-value this 'f_endGamePaintable) _graphics)
        (jm_paint_1 (slot-value this 'f_intermissionPaintable) _graphics)
        (jm_paintIntermission_1 this _graphics)
        (jm_paint_1 (slot-value this 'f_touchPaintable) _graphics))))

    
(unless (fboundp 'jm_paintIntermission_1) (defgeneric jm_paintIntermission_1 (this p1)))
(defmethod jm_paintIntermission_1 ((this AllBinaryGameCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_keyPressed_1) (defgeneric jm_keyPressed_1 (this p1)))
(defmethod jm_keyPressed_1 ((this AllBinaryGameCanvas) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyPressedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyReleased_1) (defgeneric jm_keyReleased_1 (this p1)))
(defmethod jm_keyReleased_1 ((this AllBinaryGameCanvas) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyReleasedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyRepeated_1) (defgeneric jm_keyRepeated_1 (this p1)))
(defmethod jm_keyRepeated_1 ((this AllBinaryGameCanvas) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyRepeatedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyPressedByDevice_2) (defgeneric jm_keyPressedByDevice_2 (this p1 p2)))
(defmethod jm_keyPressedByDevice_2 ((this AllBinaryGameCanvas) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn
        (jm_keyPressedByDevice_2 (slot-value this 'f_inputProcessor) _keyCode _deviceId))))

    
(unless (fboundp 'jm_keyRepeatedByDevice_2) (defgeneric jm_keyRepeatedByDevice_2 (this p1 p2)))
(defmethod jm_keyRepeatedByDevice_2 ((this AllBinaryGameCanvas) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn
        (if (slot-value this 'f_isSingleKeyRepeatableProcessing)
            (progn
            (jm_keyPressedByDevice_2 (slot-value this 'f_inputProcessor) _keyCode _deviceId))))))

    
(unless (fboundp 'jm_keyReleasedByDevice_2) (defgeneric jm_keyReleasedByDevice_2 (this p1 p2)))
(defmethod jm_keyReleasedByDevice_2 ((this AllBinaryGameCanvas) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn
        (jm_keyReleasedByDevice_3 (slot-value this 'f_inputProcessor) this _keyCode _deviceId))))

    
(unless (fboundp 'jm_handleRawKey_3) (defgeneric jm_handleRawKey_3 (this p1 p2 p3)))
(defmethod jm_handleRawKey_3 ((this AllBinaryGameCanvas) _keyCode _deviceId _repeated)
  (declare (ignorable this _keyCode _deviceId _repeated))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_endProgress_1) (defgeneric jm_endProgress_1 (this p1)))
(defmethod jm_endProgress_1 ((this AllBinaryGameCanvas) _isProgress)
  (declare (ignorable this _isProgress))
  (let (_portion _myCommandsFactory _progressCanvas)
  (declare (ignorable _portion _myCommandsFactory _progressCanvas))
    (block jreturn
        (setf _portion 30)
        (if (and _isProgress (jm_isMainCanvas_0 this))
            (progn
            (setf _myCommandsFactory (MyCommandsFactory.jm_getInstance_0))
            (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
            (jm_start_0 _progressCanvas)
            (jm_commandAction_2 (jm_getCustomCommandListener_0 this) (slot-value _myCommandsFactory 'f_SET_DISPLAYABLE) _progressCanvas)
            (setf _portion 4)))
        (return-from jreturn _portion))))

    
(unless (fboundp 'jm_processPlayingGame_0) (defgeneric jm_processPlayingGame_0 (this)))
(defmethod jm_processPlayingGame_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_update_0 (slot-value this 'f_cheatProcessor))
        (jm_update_0 (jm_getInputSensor_0 (slot-value this 'f_sensorGameUpdateProcessor)))
        (jm_process_0 (slot-value this 'f_gameInputProcessor))
        (jm_process_0 (slot-value this 'f_gameLayerManager))
        (jm_process_0 (slot-value this 'f_startIntermissionProcessor)))))

    
(unless (fboundp 'jm_threadInit_0) (defgeneric jm_threadInit_0 (this)))
(defmethod jm_threadInit_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processGame_0) (defgeneric jm_processGame_0 (this)))
(defmethod jm_processGame_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_process_0 this)
        (if (AllBinaryMediaManager.jm_update_0)
            (progn
            (if (not (jm_process_0 (slot-value this 'f_primaryPlayerQueue)))
                (progn
                (jm_process_0 (slot-value this 'f_secondaryPlayerQueue))))))
        (jm_process_0 (slot-value this 'f_mainStateProcessor))
        (jm_processInputList_0 (slot-value this 'f_menuInputProcessor))
        (jm_process_0 (slot-value this 'f_endGameProcessor))
        (jm_nextFrame_0 (slot-value this 'f_baseGameStatistics)))))

    
(unless (fboundp 'jm_notifyDonePainting_0) (defgeneric jm_notifyDonePainting_0 (this)))
(defmethod jm_notifyDonePainting_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (progn
            (jm_notifyObject_1 (slot-value this 'f_threadObjectUtil) this)))))

    
(unless (fboundp 'jm_shouldWait_0) (defgeneric jm_shouldWait_0 (this)))
(defmethod jm_shouldWait_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_features _openGLImageSpecificFactory)
  (declare (ignorable _features _openGLImageSpecificFactory))
    (block jreturn
        (setf _features (Features.jm_getInstance_0))
        (if (AndroidUtil.jm_isAndroid_0)
            (progn
            nil)
            (if (jm_isFeature_1 _features (slot-value (slot-value this 'f_openGLFeatureFactory) 'f_OPENGL_2D))
            (progn
            nil)
            (progn
            (if (jm_isDefault_1 _features (slot-value (slot-value this 'f_openGLFeatureFactory) 'f_OPENGL))
                (progn
                (setf _openGLImageSpecificFactory (OpenGLImageSpecificFactory.jm_getInstance_0))
                (block jbreak (loop while (slot-value _openGLImageSpecificFactory 'f_updating) do
                        (block jcontinue
                    (Thread.jm_sleep_1 (slot-value this 'f_YIELD_SLEEP)))))))))))))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_progressCanvas _gameAdState)
  (declare (ignorable _progressCanvas _gameAdState))
    (block jreturn
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START_RUNNABLE) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))
            (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
            (jm_addNormalPortion_2 _progressCanvas 50 "Game Thread")
            (jm_setCurrentThread_0 this)
            (jm_setRunning_1 this t)
            (if (eq (jm_getCustomCommandListener_0 this) (NullCommandListener.jstatic_NULL_COMMAND_LISTENER))
                (progn
                (Thread.jm_sleep_1 (slot-value this 'f_YIELD_SLEEP))))
            (jm_shouldWait_0 this)
            (jm_threadInit_0 this)
            (if (eq (jm_getCustomCommandListener_0 this) (NullCommandListener.jstatic_NULL_COMMAND_LISTENER))
                (progn
                (Thread.jm_sleep_1 (slot-value this 'f_YIELD_SLEEP))))
            (jm_open_0 this)
            (setf _gameAdState (jm_getCurrentInstance_0 (slot-value this 'f_gameAdStateFactory)))
            (jm_init_0 _gameAdState)
            (jm_setGameIsReady_1 _gameAdState t)
            (jm_run_1 (slot-value this 'f_gameBehavior) this)
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_END_RUNNABLE) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN) _e))))))

    
(unless (fboundp 'jm_run2_0) (defgeneric jm_run2_0 (this)))
(defmethod jm_run2_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_features _currentDisplayableFactory)
  (declare (ignorable _features _currentDisplayableFactory))
    (block jreturn
        (setf _features (Features.jm_getInstance_0))
        (if (or (jm_isDefault_1 _features (slot-value (slot-value this 'f_openGLFeatureFactory) 'f_OPENGL_AS_GAME_THREAD)) (J2MEUtil.jm_isHTML_0))
            (progn
            (if (jm_isDefault_1 _features (slot-value (slot-value this 'f_openGLFeatureFactory) 'f_OPENGL_AS_GAME_THREAD))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_getName_0 (slot-value (slot-value this 'f_openGLFeatureFactory) 'f_OPENGL_AS_GAME_THREAD)) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))))
            (if (J2MEUtil.jm_isHTML_0)
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (GraphicsStrings.jm_getInstance_0) 'f_HTML) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))))
            (setf _currentDisplayableFactory (CurrentDisplayableFactory.jm_getInstance_0))
            (jm_setRunnable_1 _currentDisplayableFactory (slot-value this 'f_gameRunnable))
            (jm_setDisplayable_1 _currentDisplayableFactory this)
            (jm_onResume_0 (OpenGLThreadUtil.jm_getInstance_0)))
            (if (jm_isDefault_1 _features (slot-value (slot-value this 'f_openGLFeatureFactory) 'f_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_getName_0 (slot-value (slot-value this 'f_openGLFeatureFactory) 'f_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))
            (jm_onResume_0 (OpenGLThreadUtil.jm_getInstance_0))
            (block jbreak (loop while (jm_isRunning_0 this) do
                    (block jcontinue
                (jm_run3_0 this))))
            (jm_end_0 this))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "this thread" this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))
            (block jbreak (loop while (jm_isRunning_0 this) do
                    (block jcontinue
                (jm_run3_0 this))))
            (jm_end_0 this)))))))

    
(unless (fboundp 'jm_run3_0) (defgeneric jm_run3_0 (this)))
(defmethod jm_run3_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setStartTime_1 (slot-value this 'f_loopTimeHelper) (jm_setStartTime_0 (slot-value this 'f_gameTickTimeDelayHelper)))
        (jm_update_0 (slot-value this 'f_gameTickDisplayInfoSingleton))
        (jm_processGame_0 this)
        (jm_processLoopSleep_0 this))))

    
(unless (fboundp 'jm_setRunning_1) (defgeneric jm_setRunning_1 (this p1)))
(defmethod jm_setRunning_1 ((this AllBinaryGameCanvas) _running)
  (declare (ignorable this _running))
  (let (_features _currentDisplayableFactory)
  (declare (ignorable _features _currentDisplayableFactory))
    (block jreturn
        (call-next-method this _running)
        (handler-case (progn
            (setf _features (Features.jm_getInstance_0))
            (if _running
                (progn
                nil)
                (progn
                (if (or (jm_isDefault_1 _features (slot-value (slot-value this 'f_openGLFeatureFactory) 'f_OPENGL)) (SWTUtil.jstatic_isSWT))
                    (progn
                    (if (not (eq (jm_getGameType_0 (jm_getGameInfo_0 (slot-value this 'f_gameLayerManager))) (slot-value (slot-value this 'f_gameTypeFactory) 'f_BOT)))
                        (progn
                        (setf _currentDisplayableFactory (CurrentDisplayableFactory.jm_getInstance_0))
                        (jm_clearRunnable_0 _currentDisplayableFactory)))
                    (jm_end_0 this))))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value this 'f_SET_RUNNING) _e))))))

    
(unless (fboundp 'jm_end_0) (defgeneric jm_end_0 (this)))
(defmethod jm_end_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_endRecording_0 (slot-value this 'f_screenCapture))
        (jm_add_1 (slot-value this 'f_baseGameStatistics) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (jm_toString_0 (slot-value this 'f_baseGameStatistics))) (slot-value (CommonSeps.jm_getInstance_0) 'f_NEW_LINE))))
        (jm_init_0 (slot-value this 'f_baseGameStatistics))
        (jm_removeListener_1 (slot-value this 'f_gameKeyEventHandler) (slot-value this 'f_cheatProcessor))
        (jm_close_0 this)
        (jm_removeAllGameKeyInputListeners_0 this)
        (jm_endGameThread_0 this))))

    
(unless (fboundp 'jm_endGameThread_0) (defgeneric jm_endGameThread_0 (this)))
(defmethod jm_endGameThread_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_gameAdState)
  (declare (ignorable _gameAdState))
    (block jreturn
        (jm_removeListener_1 (DisplayChangeEventHandler.jm_getInstance_0) this)
        (jm_clear_0 (GameLevelDisplayChangeEventListenersFactory.jm_getInstance_0))
        (setf _gameAdState (jm_getCurrentInstance_0 (slot-value this 'f_gameAdStateFactory)))
        (jm_notPlayingAdState_0 _gameAdState))))

    
(unless (fboundp 'jm_createHighScore_1) (defgeneric jm_createHighScore_1 (this p1)))
(defmethod jm_createHighScore_1 ((this AllBinaryGameCanvas) _score)
  (declare (ignorable this _score))
  (let (_gameInfo)
  (declare (ignorable _gameInfo))
    (block jreturn
        (setf _gameInfo (jm_getGameInfo_0 (slot-value this 'f_gameLayerManager)))
        (return-from jreturn (HighScore.jnew_4 0 "NONE" (GameInfo.jnew_5 (jm_getGameType_0 _gameInfo) (jm_getGameMode_0 _gameInfo) (slot-value (PlayerTypesFactory.jm_getInstance_0) 'f_PLAYER_TYPE_ONE) 0 0) _score)))))

    
(unless (fboundp 'jm_setHighScore_5) (defgeneric jm_setHighScore_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_setHighScore_5 ((this AllBinaryGameCanvas) _abeClientInformation _name _score _autoSubmit _isLast)
  (declare (ignorable this _abeClientInformation _name _score _autoSubmit _isLast))
  (let ()
    (block jreturn
        (jm_setHighScore_6 (slot-value this 'f_gameBehavior) _abeClientInformation this _name _score _autoSubmit _isLast))))

    
(unless (fboundp 'jm_setHighScore2_5) (defgeneric jm_setHighScore2_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_setHighScore2_5 ((this AllBinaryGameCanvas) _abeClientInformation _name _score _autoSubmit _isLast)
  (declare (ignorable this _abeClientInformation _name _score _autoSubmit _isLast))
  (let (_highScore _textBox)
  (declare (ignorable _highScore _textBox))
    (block jreturn
        (setf _highScore (jm_createHighScore_1 this _score))
        (setf _textBox (HighScoreTextBox.jnew_9 (slot-value this 'f_highScoresFactoryInterface) (slot-value this 'f_highScoresHelper) _abeClientInformation (jm_getGameInfo_0 (slot-value this 'f_gameLayerManager)) (jm_getCustomCommandListener_0 this) _name _highScore (jm_getBackgroundBasicColor_0 (slot-value this 'f_gameLayerManager)) (jm_getForegroundBasicColor_0 (slot-value this 'f_gameLayerManager))))
        (if _isLast
            (progn
            (jm_commandAction_2 (jm_getCustomCommandListener_0 this) (slot-value (GameCommandsFactory.jm_getInstance_0) 'f_SET_MENU_DISPLAYABLE) _textBox)))
        (if _autoSubmit
            (progn
            (jm_runTask_1 (SecondaryThreadPool.jm_getInstance_0) (SaveHighScoreRunnable.jnew_2 _isLast _textBox)))))))

    
(unless (fboundp 'jm_getGameStateTimeHelper_0) (defgeneric jm_getGameStateTimeHelper_0 (this)))
(defmethod jm_getGameStateTimeHelper_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameStateTimeHelper)))))

    
(unless (fboundp 'jm_setInitialized_1) (defgeneric jm_setInitialized_1 (this p1)))
(defmethod jm_setInitialized_1 ((this AllBinaryGameCanvas) _initialized)
  (declare (ignorable this _initialized))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_initialized) _initialized))))

    
(unless (fboundp 'jm_isInitialized_0) (defgeneric jm_isInitialized_0 (this)))
(defmethod jm_isInitialized_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_initialized)))))

    
(unless (fboundp 'jm_getSourceId_0) (defgeneric jm_getSourceId_0 (this)))
(defmethod jm_getSourceId_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (AllBinaryGameCanvas.jstatic_id)))))

    
(unless (fboundp 'jm_setProgressPaintable_1) (defgeneric jm_setProgressPaintable_1 (this p1)))
(defmethod jm_setProgressPaintable_1 ((this AllBinaryGameCanvas) _paintable)
  (declare (ignorable this _paintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_progressPaintable) _paintable))))

    
(unless (fboundp 'jm_getStartIntermissionInterface_0) (defgeneric jm_getStartIntermissionInterface_0 (this)))
(defmethod jm_getStartIntermissionInterface_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_startIntermissionInterface)))))

    
(unless (fboundp 'jm_getEndLevelIntermissionInterface_0) (defgeneric jm_getEndLevelIntermissionInterface_0 (this)))
(defmethod jm_getEndLevelIntermissionInterface_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_endLevelIntermissionInterface)))))

    
(unless (fboundp 'jm_setTouchPaintableP_1) (defgeneric jm_setTouchPaintableP_1 (this p1)))
(defmethod jm_setTouchPaintableP_1 ((this AllBinaryGameCanvas) _paintable)
  (declare (ignorable this _paintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_touchPaintable) _paintable))))

    
(unless (fboundp 'jm_getTouchPaintableP_0) (defgeneric jm_getTouchPaintableP_0 (this)))
(defmethod jm_getTouchPaintableP_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_touchPaintable)))))

    
(unless (fboundp 'jm_setEndGamePaintable_1) (defgeneric jm_setEndGamePaintable_1 (this p1)))
(defmethod jm_setEndGamePaintable_1 ((this AllBinaryGameCanvas) _endGamePaintable)
  (declare (ignorable this _endGamePaintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_endGamePaintable) _endGamePaintable))))

    
(unless (fboundp 'jm_getEndGamePaintable_0) (defgeneric jm_getEndGamePaintable_0 (this)))
(defmethod jm_getEndGamePaintable_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_endGamePaintable)))))

    
(unless (fboundp 'jm_setIntermissionPaintable_1) (defgeneric jm_setIntermissionPaintable_1 (this p1)))
(defmethod jm_setIntermissionPaintable_1 ((this AllBinaryGameCanvas) _intermissionPaintable)
  (declare (ignorable this _intermissionPaintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_intermissionPaintable) _intermissionPaintable))))

    
(unless (fboundp 'jm_getIntermissionPaintable_0) (defgeneric jm_getIntermissionPaintable_0 (this)))
(defmethod jm_getIntermissionPaintable_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_intermissionPaintable)))))

    
(unless (fboundp 'jm_getEndGameInfoP_0) (defgeneric jm_getEndGameInfoP_0 (this)))
(defmethod jm_getEndGameInfoP_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_endGameInfo)))))

    
(unless (fboundp 'jm_setHighScoresPaintable_1) (defgeneric jm_setHighScoresPaintable_1 (this p1)))
(defmethod jm_setHighScoresPaintable_1 ((this AllBinaryGameCanvas) _highScoresPaintable)
  (declare (ignorable this _highScoresPaintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_highScoresPaintable) _highScoresPaintable))))

    
(unless (fboundp 'jm_getHighScoresPaintable_0) (defgeneric jm_getHighScoresPaintable_0 (this)))
(defmethod jm_getHighScoresPaintable_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_highScoresPaintable)))))

    
(unless (fboundp 'jm_getRealHighScoresPaintable_0) (defgeneric jm_getRealHighScoresPaintable_0 (this)))
(defmethod jm_getRealHighScoresPaintable_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_realHighScoresPaintable)))))

    
(unless (fboundp 'jm_clearPlayerGameInputList_0) (defgeneric jm_clearPlayerGameInputList_0 (this)))
(defmethod jm_clearPlayerGameInputList_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let (_playerGameInput _index)
  (declare (ignorable _playerGameInput _index))
    (block jreturn
        (setf _playerGameInput nil)
        (progn
            (setf _index (JR.i32 (- (jm_size_0 (slot-value this 'f_localPlayerGameInputList)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _playerGameInput (jm_get_1 (slot-value this 'f_localPlayerGameInputList) _index))
            (jm_removeListener_1 (slot-value this 'f_gameKeyEventHandler) _playerGameInput))
                (setf _index (JR.i32 (- _index 1))))))
        (jm_clear_0 (slot-value this 'f_localPlayerGameInputList)))))

    
(unless (fboundp 'jm_addPlayerGameInput_1) (defgeneric jm_addPlayerGameInput_1 (this p1)))
(defmethod jm_addPlayerGameInput_1 ((this AllBinaryGameCanvas) _playerGameInput)
  (declare (ignorable this _playerGameInput))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_localPlayerGameInputList) _playerGameInput))))

    
(unless (fboundp 'jm_setMenuInputProcessor_1) (defgeneric jm_setMenuInputProcessor_1 (this p1)))
(defmethod jm_setMenuInputProcessor_1 ((this AllBinaryGameCanvas) _menuInputProcessor)
  (declare (ignorable this _menuInputProcessor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_menuInputProcessor) _menuInputProcessor))))

    
(unless (fboundp 'jm_getMenuInputProcessor_0) (defgeneric jm_getMenuInputProcessor_0 (this)))
(defmethod jm_getMenuInputProcessor_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_menuInputProcessor)))))

    
(unless (fboundp 'jm_getMenuForm_0) (defgeneric jm_getMenuForm_0 (this)))
(defmethod jm_getMenuForm_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_menuForm)))))

    
(unless (fboundp 'jm_setMenuForm_1) (defgeneric jm_setMenuForm_1 (this p1)))
(defmethod jm_setMenuForm_1 ((this AllBinaryGameCanvas) _menuForm)
  (declare (ignorable this _menuForm))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_menuForm) _menuForm))))

    
(unless (fboundp 'jm_getStartLevel_0) (defgeneric jm_getStartLevel_0 (this)))
(defmethod jm_getStartLevel_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_startLevel)))))

    
(unless (fboundp 'jm_setStartLevel_1) (defgeneric jm_setStartLevel_1 (this p1)))
(defmethod jm_setStartLevel_1 ((this AllBinaryGameCanvas) _startLevel)
  (declare (ignorable this _startLevel))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_startLevel) _startLevel))))

    
(unless (fboundp 'jm_setTouchButtonsPaintable_1) (defgeneric jm_setTouchButtonsPaintable_1 (this p1)))
(defmethod jm_setTouchButtonsPaintable_1 ((this AllBinaryGameCanvas) _touchButtonsPaintable)
  (declare (ignorable this _touchButtonsPaintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_touchButtonsPaintable) _touchButtonsPaintable))))

    
(unless (fboundp 'jm_getTouchButtonsPaintable_0) (defgeneric jm_getTouchButtonsPaintable_0 (this)))
(defmethod jm_getTouchButtonsPaintable_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_touchButtonsPaintable)))))

    
(unless (fboundp 'jm_setGameInputProcessor_1) (defgeneric jm_setGameInputProcessor_1 (this p1)))
(defmethod jm_setGameInputProcessor_1 ((this AllBinaryGameCanvas) _gameInputProcessor)
  (declare (ignorable this _gameInputProcessor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameInputProcessor) _gameInputProcessor))))

    
(unless (fboundp 'jm_getGameInputProcessor_0) (defgeneric jm_getGameInputProcessor_0 (this)))
(defmethod jm_getGameInputProcessor_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameInputProcessor)))))

    
(unless (fboundp 'jm_setEndGameProcessor_1) (defgeneric jm_setEndGameProcessor_1 (this p1)))
(defmethod jm_setEndGameProcessor_1 ((this AllBinaryGameCanvas) _endGameProcessor)
  (declare (ignorable this _endGameProcessor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_endGameProcessor) _endGameProcessor))))

    
(unless (fboundp 'jm_getEndGameProcessor_0) (defgeneric jm_getEndGameProcessor_0 (this)))
(defmethod jm_getEndGameProcessor_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_endGameProcessor)))))

    
(unless (fboundp 'jm_setEndGameStatePaintable_1) (defgeneric jm_setEndGameStatePaintable_1 (this p1)))
(defmethod jm_setEndGameStatePaintable_1 ((this AllBinaryGameCanvas) _endGameStatePaintable)
  (declare (ignorable this _endGameStatePaintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_endGameStatePaintable) _endGameStatePaintable))))

    
(unless (fboundp 'jm_getEndGameStatePaintable_0) (defgeneric jm_getEndGameStatePaintable_0 (this)))
(defmethod jm_getEndGameStatePaintable_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_endGameStatePaintable)))))

    
(unless (fboundp 'jm_setNonBotPaintableP_1) (defgeneric jm_setNonBotPaintableP_1 (this p1)))
(defmethod jm_setNonBotPaintableP_1 ((this AllBinaryGameCanvas) _nonBotPaintable)
  (declare (ignorable this _nonBotPaintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_nonBotPaintable) _nonBotPaintable))))

    
(unless (fboundp 'jm_getNonBotPaintableP_0) (defgeneric jm_getNonBotPaintableP_0 (this)))
(defmethod jm_getNonBotPaintableP_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_nonBotPaintable)))))

    
(unless (fboundp 'jm_setStartIntermissionPaintable_1) (defgeneric jm_setStartIntermissionPaintable_1 (this p1)))
(defmethod jm_setStartIntermissionPaintable_1 ((this AllBinaryGameCanvas) _startIntermissionPaintable)
  (declare (ignorable this _startIntermissionPaintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_startIntermissionPaintable) _startIntermissionPaintable))))

    
(unless (fboundp 'jm_getStartIntermissionPaintable_0) (defgeneric jm_getStartIntermissionPaintable_0 (this)))
(defmethod jm_getStartIntermissionPaintable_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_startIntermissionPaintable)))))

    
(unless (fboundp 'jm_setMainStateProcessor_1) (defgeneric jm_setMainStateProcessor_1 (this p1)))
(defmethod jm_setMainStateProcessor_1 ((this AllBinaryGameCanvas) _mainStateProcessor)
  (declare (ignorable this _mainStateProcessor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_mainStateProcessor) _mainStateProcessor))))

    
(unless (fboundp 'jm_getMainStateProcessor_0) (defgeneric jm_getMainStateProcessor_0 (this)))
(defmethod jm_getMainStateProcessor_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_mainStateProcessor)))))

    
(unless (fboundp 'jm_setProcessGameProcessor_1) (defgeneric jm_setProcessGameProcessor_1 (this p1)))
(defmethod jm_setProcessGameProcessor_1 ((this AllBinaryGameCanvas) _processGameProcessor)
  (declare (ignorable this _processGameProcessor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_processGameProcessor) _processGameProcessor))))

    
(unless (fboundp 'jm_getProcessGameProcessor_0) (defgeneric jm_getProcessGameProcessor_0 (this)))
(defmethod jm_getProcessGameProcessor_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_processGameProcessor)))))

    
(unless (fboundp 'jm_setOpenMenuPaintable_1) (defgeneric jm_setOpenMenuPaintable_1 (this p1)))
(defmethod jm_setOpenMenuPaintable_1 ((this AllBinaryGameCanvas) _openMenuPaintable)
  (declare (ignorable this _openMenuPaintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_openMenuPaintable) _openMenuPaintable))))

    
(unless (fboundp 'jm_getOpenMenuPaintable_0) (defgeneric jm_getOpenMenuPaintable_0 (this)))
(defmethod jm_getOpenMenuPaintable_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_openMenuPaintable)))))

    
(unless (fboundp 'jm_setPopupMenuInputProcessor_1) (defgeneric jm_setPopupMenuInputProcessor_1 (this p1)))
(defmethod jm_setPopupMenuInputProcessor_1 ((this AllBinaryGameCanvas) _popupMenuInputProcessor)
  (declare (ignorable this _popupMenuInputProcessor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_popupMenuInputProcessor) _popupMenuInputProcessor))))

    
(unless (fboundp 'jm_getPopupMenuInputProcessor_0) (defgeneric jm_getPopupMenuInputProcessor_0 (this)))
(defmethod jm_getPopupMenuInputProcessor_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_popupMenuInputProcessor)))))

    
(unless (fboundp 'jm_getSensorGameUpdateProcessor_0) (defgeneric jm_getSensorGameUpdateProcessor_0 (this)))
(defmethod jm_getSensorGameUpdateProcessor_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_sensorGameUpdateProcessor)))))

    
(unless (fboundp 'jm_getRawGameInputProcessor_0) (defgeneric jm_getRawGameInputProcessor_0 (this)))
(defmethod jm_getRawGameInputProcessor_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_rawGameInputProcessor)))))

    
(unless (fboundp 'jm_getRawInputProcessor_0) (defgeneric jm_getRawInputProcessor_0 (this)))
(defmethod jm_getRawInputProcessor_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_rawInputProcessor)))))

    
(unless (fboundp 'jm_setInputProcessor_1) (defgeneric jm_setInputProcessor_1 (this p1)))
(defmethod jm_setInputProcessor_1 ((this AllBinaryGameCanvas) _inputProcessor)
  (declare (ignorable this _inputProcessor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_inputProcessor) _inputProcessor))))

    
(unless (fboundp 'jm_getInputProcessor_0) (defgeneric jm_getInputProcessor_0 (this)))
(defmethod jm_getInputProcessor_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_inputProcessor)))))

    
(unless (fboundp 'jm_setMenuPaintable_1) (defgeneric jm_setMenuPaintable_1 (this p1)))
(defmethod jm_setMenuPaintable_1 ((this AllBinaryGameCanvas) _menuPaintable)
  (declare (ignorable this _menuPaintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_menuPaintable) _menuPaintable))))

    
(unless (fboundp 'jm_getMenuPaintable_0) (defgeneric jm_getMenuPaintable_0 (this)))
(defmethod jm_getMenuPaintable_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_menuPaintable)))))

    
(unless (fboundp 'jm_setFormPaintable_1) (defgeneric jm_setFormPaintable_1 (this p1)))
(defmethod jm_setFormPaintable_1 ((this AllBinaryGameCanvas) _formPaintable)
  (declare (ignorable this _formPaintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_formPaintable) _formPaintable))))

    
(unless (fboundp 'jm_getFormPaintable_0) (defgeneric jm_getFormPaintable_0 (this)))
(defmethod jm_getFormPaintable_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_formPaintable)))))

    
(unless (fboundp 'jm_setGameSpecificPaintableP_1) (defgeneric jm_setGameSpecificPaintableP_1 (this p1)))
(defmethod jm_setGameSpecificPaintableP_1 ((this AllBinaryGameCanvas) _gameSpecificPaintable)
  (declare (ignorable this _gameSpecificPaintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameSpecificPaintable) _gameSpecificPaintable))))

    
(unless (fboundp 'jm_getGameSpecificPaintableP_0) (defgeneric jm_getGameSpecificPaintableP_0 (this)))
(defmethod jm_getGameSpecificPaintableP_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameSpecificPaintable)))))

    
(unless (fboundp 'jm_isSingleThread_0) (defgeneric jm_isSingleThread_0 (this)))
(defmethod jm_isSingleThread_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (or (jm_isAnyThreed_0 (OpenGLFeatureUtil.jm_getInstance_0)) (SWTUtil.jstatic_isSWT))))))

    
(unless (fboundp 'jm_isRunningInAnotherThread_0) (defgeneric jm_isRunningInAnotherThread_0 (this)))
(defmethod jm_isRunningInAnotherThread_0 ((this AllBinaryGameCanvas))
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

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (AllBinaryGameCanvas.jstatic_TYPE)))))

    
(unless (fboundp 'jm_getTitle_0) (defgeneric jm_getTitle_0 (this)))
(defmethod jm_getTitle_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_isPaused_0) (defgeneric jm_isPaused_0 (this)))
(defmethod jm_isPaused_0 ((this AllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))



