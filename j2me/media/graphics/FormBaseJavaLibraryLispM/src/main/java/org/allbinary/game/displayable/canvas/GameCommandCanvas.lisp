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

(defclass GameCommandCanvas (MyCanvas)
  ((f_repaintProcessor :initform nil)
   (f_gameInputStrings :initform nil)
   (f_foregroundBasicColor :initform nil)
   (f_backgroundBasicColor :initform nil)
   (f_inputToGameKeyMapping :initform nil)
   (f_gameKeyFactory :initform nil)
   (f_gameKeyEventFactory :initform nil)
   (f_downGameKeyEventHandler :initform nil)
   (f_upGameKeyEventHandler :initform nil)
   (f_repaintBehavior :initform nil)
   (f_updateMyFontProcessor :initform nil)
   (f_myFontProcessor :initform nil)
   (f_foregroundColor :initform 0)
   (f_backgroundColor :initform 0)
   (f_menuInputProcessor :initform nil)
   (f_menuPaintable :initform nil)
   (f_menuForm :initform nil)
   (f_isSingleKeyRepeatableProcessing :initform nil)
   (f_fontHeight :initform 0)))

(defvar GameCommandCanvas.jcell_id :jnone)
(defun GameCommandCanvas.jstatic_id ()
  (when (eq GameCommandCanvas.jcell_id :jnone) (setf GameCommandCanvas.jcell_id 0))
  GameCommandCanvas.jcell_id)
(defun (setf GameCommandCanvas.jstatic_id) (value) (setf GameCommandCanvas.jcell_id value))

    
(defun GameCommandCanvas.jnew_4 (_cmdListener _name _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _cmdListener _name _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'GameCommandCanvas)))
    (setf (slot-value this 'f_repaintProcessor) (jm_create_1 (ScreenRepaintProcessorFactory.jm_getInstance_0) this))
    (setf (slot-value this 'f_gameInputStrings) (GameInputStrings.jm_getInstance_0))
    
    
    (setf (slot-value this 'f_inputToGameKeyMapping) (jm_getInputMapping_0 (jm_getPersistentInputMappingInstance_0 (PlatformInputMappingFactory.jm_getInstance_0))))
    (setf (slot-value this 'f_gameKeyFactory) (GameKeyFactory.jm_getInstance_0))
    (setf (slot-value this 'f_gameKeyEventFactory) (GameKeyEventFactory.jm_getInstance_0))
    (setf (slot-value this 'f_downGameKeyEventHandler) (DownGameKeyEventHandler.jm_getInstance_0))
    (setf (slot-value this 'f_upGameKeyEventHandler) (UpGameKeyEventHandler.jm_getInstance_0))
    
    (setf (slot-value this 'f_updateMyFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor))
    
    
    (setf (slot-value this 'f_menuInputProcessor) (NoMenuInputProcessor.jm_getInstance_0))
    (setf (slot-value this 'f_menuPaintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_menuForm) (PaintableForm.jm_getNullPaintableForm_0))
    (setf (slot-value this 'f_isSingleKeyRepeatableProcessing) (jm_isFeature_1 (Features.jm_getInstance_0) (slot-value (InputFeatureFactory.jm_getInstance_0) 'f_SINGLE_KEY_REPEAT_PRESS)))
    (setf (slot-value this 'f_fontHeight) 0)
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_repaintBehavior) (RepaintBehavior.jm_getInstance_0))
        (setf (slot-value this 'f_foregroundBasicColor) _foregroundBasicColor)
        (setf (slot-value this 'f_backgroundBasicColor) _backgroundBasicColor)
        (setf (slot-value this 'f_foregroundColor) (jm_intValue_0 (slot-value this 'f_foregroundBasicColor)))
        (setf (slot-value this 'f_backgroundColor) (jm_intValue_0 (slot-value this 'f_backgroundBasicColor)))
        (jm_initCommands_1 this _cmdListener)
        (if (not (eq _cmdListener (NullCommandListener.jstatic_NULL_COMMAND_LISTENER)))
            (progn
            (handler-case (progn
                (jm_initMenu_0 this)
                (jm_process_0 (slot-value this 'f_repaintProcessor)))
                (error (_e) (declare (ignorable _e))
                (error (JR.newException "RuntimeException"))))))))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this GameCommandCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let (_font _rectangle)
  (declare (ignorable _font _rectangle))
    (block jreturn
        (handler-case (progn
            (setf _font (jm_getFont_0 _graphics))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_START)) (slot-value (slot-value this 'f_canvasStrings) 'f_FD_WIDTH)) (MyFontProcessor.jm_defaultCharWidth_1 _font)) (slot-value (slot-value this 'f_canvasStrings) 'f_FD_HEIGHT)) (jm_getHeight_0 _font))) this (slot-value (slot-value this 'f_canvasStrings) 'f_UPDATE_MEASUREMENT))
            (setf (slot-value this 'f_fontHeight) (jm_getHeight_0 _font))
            (setf _rectangle (jm_createRectangle_1 this (jm_size_0 (slot-value this 'f_menuForm))))
            (jm_init_2 (slot-value this 'f_menuForm) _rectangle (slot-value (FormTypeFactory.jm_getInstance_0) 'f_VERTICAL_CENTER_FORM))
            (jm_update_0 this))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_canvasStrings) 'f_ON_DISPLAY_CHANGE_EVENT) _e)))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this GameCommandCanvas) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onDisplayChangeEvent_1) (defgeneric jm_onDisplayChangeEvent_1 (this p1)))
(defmethod jm_onDisplayChangeEvent_1 ((this GameCommandCanvas) _displayChangeEvent)
  (declare (ignorable this _displayChangeEvent))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_START)) (jm_toString_0 (DisplayInfoSingleton.jm_getInstance_0)))) this (slot-value (slot-value this 'f_canvasStrings) 'f_ON_DISPLAY_CHANGE_EVENT))
        (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor)))))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this GameCommandCanvas) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let ()
    (block jreturn
        (jm_removeAllCommands_0 this)
        (jm_addCommand_1 this (slot-value (GameCommandsFactory.jm_getInstance_0) 'f_CLOSE_AND_SHOW_GAME_CANVAS))
        (jm_setCommandListener_1 this _cmdListener))))

    
(unless (fboundp 'jm_initMenu_0) (defgeneric jm_initMenu_0 (this)))
(defmethod jm_initMenu_0 ((this GameCommandCanvas))
  (declare (ignorable this))
  (let (_form)
  (declare (ignorable _form))
    (block jreturn
        (setf _form (jm_createForm_0 this))
        (setf (slot-value this 'f_menuForm) _form)
        (if (not (eq _form (ScrollSelectionFormNoneFactory.jm_getInstance_0)))
            (progn
            (jm_setMenuInputProcessor_1 this (ImmediateCommandFormInputProcessor.jnew_4 (BasicArrayListD.jnew_0) (JR.i32 (- 1)) this _form))
            (setf (slot-value this 'f_menuPaintable) (FormPaintable.jnew_1 _form))))
        (jm_onChangeRepaint_1 (slot-value this 'f_repaintBehavior) this))))

    
(unless (fboundp 'jm_createForm_0) (defgeneric jm_createForm_0 (this)))
(defmethod jm_createForm_0 ((this GameCommandCanvas))
  (declare (ignorable this))
  (let (_items _rectangle)
  (declare (ignorable _items _rectangle))
    (block jreturn
        (setf _items (jm_getInstance_3 (CommandTextItemArrayFactory.jnew_1 (AllCommandsVisitor.jnew_0)) (jm_getCommandStack_0 this) (slot-value this 'f_backgroundBasicColor) (slot-value this 'f_foregroundBasicColor)))
        (setf _rectangle (jm_createRectangle_1 this (length _items)))
        (return-from jreturn (CommandCurrentSelectionFormFactory.jm_getInstance_8 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) _items _rectangle (slot-value (FormTypeFactory.jm_getInstance_0) 'f_VERTICAL_CENTER_FORM) 15 nil (slot-value this 'f_backgroundBasicColor) (slot-value this 'f_foregroundBasicColor))))))

    
(unless (fboundp 'jm_createRectangle_1) (defgeneric jm_createRectangle_1 (this p1)))
(defmethod jm_createRectangle_1 ((this GameCommandCanvas) _size)
  (declare (ignorable this _size))
  (let (_height _startY _pointFactory _rectangle)
  (declare (ignorable _height _startY _pointFactory _rectangle))
    (block jreturn
        (setf _height (JR.i32 (* _size (slot-value this 'f_fontHeight))))
        (setf _startY (JR.i32 (- (JR.idiv (JR.i32 (* (jm_getLastHeight_0 (slot-value this 'f_displayInfo)) 2)) 3) _height)))
        (setf _pointFactory (PointFactory.jm_getInstance_0))
        (setf _rectangle (Rectangle.jnew_3 (jm_createXY_2 _pointFactory 30 _startY) (JR.i32 (- (jm_getLastWidth_0 (slot-value this 'f_displayInfo)) 30)) _startY))
        (return-from jreturn _rectangle))))

    
(unless (fboundp 'jm_open_0) (defgeneric jm_open_0 (this)))
(defmethod jm_open_0 ((this GameCommandCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this "open")
        (jm_addListenerInterface_1 (BasicMotionGesturesHandler.jm_getInstance_0) (jm_getMenuInputProcessor_0 this))
        (jm_addListener_1 (GameKeyEventHandler.jm_getInstance_0) (jm_getMenuInputProcessor_0 this))
        (jm_addListenerInterface_1 (DisplayChangeEventHandler.jm_getInstance_0) this))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this GameCommandCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CLOSE))
        (jm_removeListener_1 (BasicMotionGesturesHandler.jm_getInstance_0) (jm_getMenuInputProcessor_0 this))
        (jm_removeListener_1 (GameKeyEventHandler.jm_getInstance_0) (jm_getMenuInputProcessor_0 this))
        (jm_removeListener_1 (DisplayChangeEventHandler.jm_getInstance_0) this))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this GameCommandCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_process_0 (slot-value this 'f_repaintProcessor)))))

    
(unless (fboundp 'jm_getSourceId_0) (defgeneric jm_getSourceId_0 (this)))
(defmethod jm_getSourceId_0 ((this GameCommandCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (GameCommandCanvas.jstatic_id)))))

    
(unless (fboundp 'jm_keyPressed_1) (defgeneric jm_keyPressed_1 (this p1)))
(defmethod jm_keyPressed_1 ((this GameCommandCanvas) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyPressedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyReleased_1) (defgeneric jm_keyReleased_1 (this p1)))
(defmethod jm_keyReleased_1 ((this GameCommandCanvas) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyReleasedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyRepeated_1) (defgeneric jm_keyRepeated_1 (this p1)))
(defmethod jm_keyRepeated_1 ((this GameCommandCanvas) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyRepeatedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyPressedByDevice_2) (defgeneric jm_keyPressedByDevice_2 (this p1 p2)))
(defmethod jm_keyPressedByDevice_2 ((this GameCommandCanvas) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE)) _keyCode)) this (slot-value (slot-value this 'f_gameInputStrings) 'f_KEY_PRESSED))
        (jm_addGameKeyEvent_3 this _keyCode 0 nil))))

    
(unless (fboundp 'jm_keyReleasedByDevice_2) (defgeneric jm_keyReleasedByDevice_2 (this p1 p2)))
(defmethod jm_keyReleasedByDevice_2 ((this GameCommandCanvas) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn
        (jm_removeGameKeyEvent_3 this _keyCode _deviceId nil))))

    
(unless (fboundp 'jm_keyRepeatedByDevice_2) (defgeneric jm_keyRepeatedByDevice_2 (this p1 p2)))
(defmethod jm_keyRepeatedByDevice_2 ((this GameCommandCanvas) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn
        (if (slot-value this 'f_isSingleKeyRepeatableProcessing)
            (progn
            (jm_addGameKeyEvent_3 this _keyCode _deviceId t))))))

    
(unless (fboundp 'jm_addGameKeyEvent_3) (defgeneric jm_addGameKeyEvent_3 (this p1 p2 p3)))
(defmethod jm_addGameKeyEvent_3 ((this GameCommandCanvas) _keyCode _deviceId _repeated)
  (declare (ignorable this _keyCode _deviceId _repeated))
  (let (_gameKey _gameKeyEvent)
  (declare (ignorable _gameKey _gameKeyEvent))
    (block jreturn
        (handler-case (progn
            (setf _gameKey (jm_getInstanceForCanvas_2 (slot-value this 'f_inputToGameKeyMapping) this _keyCode))
            (if (not (eq _gameKey (slot-value (slot-value this 'f_gameKeyFactory) 'f_NONE)))
                (progn
                (setf _gameKeyEvent (jm_getInstanceForInput_2 (slot-value this 'f_gameKeyEventFactory) this _gameKey))
                (jm_fireEvent_1 (slot-value this 'f_downGameKeyEventHandler) _gameKeyEvent)
                (jm_fireEvent_1 (jm_getInstanceForDevice_1 (slot-value this 'f_downGameKeyEventHandler) _deviceId) _gameKeyEvent))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_gameInputStrings) 'f_NO_KEY)) _keyCode)) this (slot-value (slot-value this 'f_gameInputStrings) 'f_ADD_KEY_EVENT)))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) "Key Event Error" this (slot-value (slot-value this 'f_gameInputStrings) 'f_ADD_KEY_EVENT) _e))))))

    
(unless (fboundp 'jm_removeGameKeyEvent_3) (defgeneric jm_removeGameKeyEvent_3 (this p1 p2 p3)))
(defmethod jm_removeGameKeyEvent_3 ((this GameCommandCanvas) _keyCode _deviceId _repeated)
  (declare (ignorable this _keyCode _deviceId _repeated))
  (let (_gameKey _gameKeyEvent)
  (declare (ignorable _gameKey _gameKeyEvent))
    (block jreturn
        (handler-case (progn
            (setf _gameKey (jm_getInstanceForCanvas_2 (slot-value this 'f_inputToGameKeyMapping) this _keyCode))
            (if (not (eq _gameKey (slot-value (slot-value this 'f_gameKeyFactory) 'f_NONE)))
                (progn
                (setf _gameKeyEvent (jm_getInstanceForInput_2 (slot-value this 'f_gameKeyEventFactory) this _gameKey))
                (jm_fireEvent_1 (slot-value this 'f_upGameKeyEventHandler) _gameKeyEvent)
                (jm_fireEvent_1 (jm_getInstanceForDevice_1 (slot-value this 'f_upGameKeyEventHandler) _deviceId) _gameKeyEvent))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_gameInputStrings) 'f_NO_KEY)) _keyCode)) this (slot-value (slot-value this 'f_gameInputStrings) 'f_REMOVE_KEY_EVENT)))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) "Key Event Error" this (slot-value (slot-value this 'f_gameInputStrings) 'f_REMOVE_KEY_EVENT) _e))))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this GameCommandCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_paint_1 (slot-value this 'f_menuPaintable) _graphics)
        (jm_repaint_1 (slot-value this 'f_repaintBehavior) this))))

    
(unless (fboundp 'jm_setMenuInputProcessor_1) (defgeneric jm_setMenuInputProcessor_1 (this p1)))
(defmethod jm_setMenuInputProcessor_1 ((this GameCommandCanvas) _menuInputProcessor)
  (declare (ignorable this _menuInputProcessor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_menuInputProcessor) _menuInputProcessor))))

    
(unless (fboundp 'jm_getMenuInputProcessor_0) (defgeneric jm_getMenuInputProcessor_0 (this)))
(defmethod jm_getMenuInputProcessor_0 ((this GameCommandCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_menuInputProcessor)))))



