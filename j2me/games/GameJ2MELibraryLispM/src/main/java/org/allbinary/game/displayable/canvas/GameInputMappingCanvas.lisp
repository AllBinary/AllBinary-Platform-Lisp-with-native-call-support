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

(defclass GameInputMappingCanvas (GameCommandCanvas)
  ((f_paintable :initform nil)
   (f_helpPaintable :initform nil)
   (f_colorFillPaintable :initform nil)
   (f_inputMapping :initform nil)
   (f_NONE :initform nil)
   (f_abeClientInformation :initform nil)
   (f_selectedGameKey :initform nil)
   (f_selectedInput :initform nil)
   (f_inputFactory :initform nil)))

(defvar GameInputMappingCanvas.jcell_NAME :jnone)
(defun GameInputMappingCanvas.jstatic_NAME ()
  (when (eq GameInputMappingCanvas.jcell_NAME :jnone) (setf GameInputMappingCanvas.jcell_NAME "GameInputMappingCanvas"))
  GameInputMappingCanvas.jcell_NAME)
(defun (setf GameInputMappingCanvas.jstatic_NAME) (value) (setf GameInputMappingCanvas.jcell_NAME value))

(defvar GameInputMappingCanvas.jcell_DISPLAY :jnone)
(defun GameInputMappingCanvas.jstatic_DISPLAY ()
  (when (eq GameInputMappingCanvas.jcell_DISPLAY :jnone) (setf GameInputMappingCanvas.jcell_DISPLAY (Command.jnew_4 "Controls" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 2)))
  GameInputMappingCanvas.jcell_DISPLAY)
(defun (setf GameInputMappingCanvas.jstatic_DISPLAY) (value) (setf GameInputMappingCanvas.jcell_DISPLAY value))

(defvar GameInputMappingCanvas.jcell_DEFAULT :jnone)
(defun GameInputMappingCanvas.jstatic_DEFAULT ()
  (when (eq GameInputMappingCanvas.jcell_DEFAULT :jnone) (setf GameInputMappingCanvas.jcell_DEFAULT (Command.jnew_4 "Default" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 2)))
  GameInputMappingCanvas.jcell_DEFAULT)
(defun (setf GameInputMappingCanvas.jstatic_DEFAULT) (value) (setf GameInputMappingCanvas.jcell_DEFAULT value))

    
(defun GameInputMappingCanvas.jnew_4 (_abeClientInformation _commandListener _allBinaryGameLayerManager _helpPaintable)
  (declare (ignorable _abeClientInformation _commandListener _allBinaryGameLayerManager _helpPaintable))
  (let ((this (make-instance 'GameInputMappingCanvas)))
    
    
    
    
    (setf (slot-value this 'f_NONE) (slot-value (GameKeyFactory.jm_getInstance_0) 'f_NONE))
    
    (setf (slot-value this 'f_selectedGameKey) (slot-value this 'f_NONE))
    (setf (slot-value this 'f_selectedInput) (slot-value this 'f_NONE))
    (setf (slot-value this 'f_inputFactory) (InputFactory.jm_getInstance_0))
  (let ()
    (block jreturn
        nil
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
        (if (null _helpPaintable)
            (progn
            (error (JR.newException "Exception" "Help Paintable Exception"))))
        (setf (slot-value this 'f_abeClientInformation) _abeClientInformation)
        (setf (slot-value this 'f_helpPaintable) _helpPaintable)
        (setf (slot-value this 'f_inputMapping) (jm_getPersistentInputMappingInstance_0 (PlatformInputMappingFactory.jm_getInstance_0)))
        (setf (slot-value this 'f_paintable) (ProcessPaintable.jnew_0))
        (setf (slot-value this 'f_colorFillPaintable) (jm_getInstance_2 (ColorFillPaintableFactory.jm_getInstance_0) (jm_getBackgroundBasicColor_0 _allBinaryGameLayerManager) nil))))
    this))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this GameInputMappingCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (call-next-method this)
        (jm_process_0 (slot-value this 'f_paintable))
        (setf (slot-value this 'f_selectedGameKey) (slot-value this 'f_NONE))
        (setf (slot-value this 'f_selectedInput) (slot-value this 'f_NONE))
        (jm_update_0 this))))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this GameInputMappingCanvas) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let ()
    (block jreturn
        (jm_removeAllCommands_0 this)
        (jm_addCommand_1 this (slot-value (GameCommandsFactory.jm_getInstance_0) 'f_CLOSE_AND_SHOW_GAME_CANVAS))
        (jm_addCommand_1 this (GameInputMappingCanvas.jstatic_DEFAULT))
        (jm_addCommand_1 this (GameInputMappingInstructionsCanvas.jstatic_DISPLAY))
        (jm_setCommandListener_1 this _cmdListener))))

    
(unless (fboundp 'jm_keyPressed_1) (defgeneric jm_keyPressed_1 (this p1)))
(defmethod jm_keyPressed_1 ((this GameInputMappingCanvas) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyPressedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyReleased_1) (defgeneric jm_keyReleased_1 (this p1)))
(defmethod jm_keyReleased_1 ((this GameInputMappingCanvas) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyReleasedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyRepeated_1) (defgeneric jm_keyRepeated_1 (this p1)))
(defmethod jm_keyRepeated_1 ((this GameInputMappingCanvas) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyRepeatedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyPressedByDevice_2) (defgeneric jm_keyPressedByDevice_2 (this p1 p2)))
(defmethod jm_keyPressedByDevice_2 ((this GameInputMappingCanvas) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn
        (jm_addGameKey_2 this _keyCode nil)
        (call-next-method this _keyCode 0))))

    
(unless (fboundp 'jm_addGameKey_2) (defgeneric jm_addGameKey_2 (this p1 p2)))
(defmethod jm_addGameKey_2 ((this GameInputMappingCanvas) _keyCode _repeated)
  (declare (ignorable this _keyCode _repeated))
  (let (_gameKey _input)
  (declare (ignorable _gameKey _input))
    (block jreturn
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Raw Device Key Code: ") (Integer.jm_toHexString_1 _keyCode))) this (slot-value (slot-value this 'f_gameInputStrings) 'f_ADD_KEY_EVENT))
            (setf _gameKey (jm_getInstanceForCanvas_2 (slot-value this 'f_inputToGameKeyMapping) this _keyCode))
            (setf _input (jm_getInstanceById_1 (slot-value this 'f_inputFactory) _keyCode))
            (jm_processInputMapping_2 this _gameKey _input))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) "Key Event Error" this (slot-value (slot-value this 'f_gameInputStrings) 'f_ADD_KEY_EVENT) _e))))))

    
(unless (fboundp 'jm_processInputMapping_2) (defgeneric jm_processInputMapping_2 (this p1 p2)))
(defmethod jm_processInputMapping_2 ((this GameInputMappingCanvas) _gameKey _input)
  (declare (ignorable this _gameKey _input))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "Start Passed GameKey: ")
        (jm_append_1 _stringBuffer (JR.toString (slot-value this 'f_stringUtil)))
        (jm_append_1 _stringBuffer " Input: ")
        (jm_append_1 _stringBuffer (JR.toString (slot-value this 'f_stringUtil)))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (slot-value (slot-value this 'f_commonStrings) 'f_PROCESS))
        (if (not (eq (slot-value this 'f_selectedGameKey) (slot-value this 'f_NONE)))
            (progn
            (jm_gameActionCrud_2 this _gameKey _input))
            (progn
            (jm_setSelectedAction_1 this _gameKey))))))

    
(unless (fboundp 'jm_setSelectedAction_1) (defgeneric jm_setSelectedAction_1 (this p1)))
(defmethod jm_setSelectedAction_1 ((this GameInputMappingCanvas) _gameKey)
  (declare (ignorable this _gameKey))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Selected GameKey: ") (JR.toString (slot-value this 'f_stringUtil)))) this "setSelectedAction")
        (setf (slot-value this 'f_selectedGameKey) _gameKey)
        (setf (slot-value this 'f_selectedInput) (slot-value this 'f_NONE))
        (jm_update_2 (slot-value this 'f_helpPaintable) (slot-value this 'f_selectedGameKey) (slot-value this 'f_selectedInput))
        (jm_onChangeRepaint_1 (slot-value this 'f_repaintBehavior) this))))

    
(unless (fboundp 'jm_gameActionCrud_2) (defgeneric jm_gameActionCrud_2 (this p1 p2)))
(defmethod jm_gameActionCrud_2 ((this GameInputMappingCanvas) _gameKey _input)
  (declare (ignorable this _gameKey _input))
  (let (_stringBuffer _list _isInputAlreadyMappedToSelectedAction)
  (declare (ignorable _stringBuffer _list _isInputAlreadyMappedToSelectedAction))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "Start GameKey: ")
        (jm_append_1 _stringBuffer (JR.toString (slot-value this 'f_stringUtil)))
        (jm_append_1 _stringBuffer " Input: ")
        (jm_append_1 _stringBuffer (JR.toString (slot-value this 'f_stringUtil)))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this "gameActionCrud")
        (if (eq (slot-value this 'f_selectedInput) (slot-value this 'f_NONE))
            (progn
            (setf _list (jm_getMappedInput_1 (jm_getInputMapping_0 (slot-value this 'f_inputMapping)) (slot-value this 'f_selectedGameKey)))
            (setf _isInputAlreadyMappedToSelectedAction (jm_contains_1 _list _input))
            (if _isInputAlreadyMappedToSelectedAction
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Already Mapped Input: ") (JR.toString (slot-value this 'f_stringUtil)))) this "gameActionCrud")
                (setf (slot-value this 'f_selectedInput) _input)
                (jm_update_2 (slot-value this 'f_helpPaintable) (slot-value this 'f_selectedGameKey) (slot-value this 'f_selectedInput))
                (jm_onChangeRepaint_1 (slot-value this 'f_repaintBehavior) this))
                (progn
                (jm_addNewMapping_2 this _gameKey _input))))
            (if (jm_isDelete_1 (slot-value this 'f_inputMapping) _input)
            (progn
            (jm_deleteCurrentMapping_0 this))
            (progn
            (jm_setSelectedAction_1 this _gameKey)))))))

    
(unless (fboundp 'jm_addNewMapping_2) (defgeneric jm_addNewMapping_2 (this p1 p2)))
(defmethod jm_addNewMapping_2 ((this GameInputMappingCanvas) _gameKey _input)
  (declare (ignorable this _gameKey _input))
  (let (_METHOD_NAME _isInputAlreadyMapped _stringBuffer)
  (declare (ignorable _METHOD_NAME _isInputAlreadyMapped _stringBuffer))
    (block jreturn
        (setf _METHOD_NAME "addNewMapping")
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this _METHOD_NAME)
        (setf _isInputAlreadyMapped (jm_isMapped_1 (jm_getInputMapping_0 (slot-value this 'f_inputMapping)) _input))
        (if (and (not _isInputAlreadyMapped) (not (jm_isSystemInput_1 (slot-value this 'f_inputMapping) _input)))
            (progn
            (setf _stringBuffer (StringMaker.jnew_0))
            (jm_append_1 _stringBuffer "Add Key Mapping : GameKey: ")
            (jm_append_1 _stringBuffer (JR.toString (slot-value this 'f_stringUtil)))
            (jm_append_1 _stringBuffer " Input: ")
            (jm_append_1 _stringBuffer (JR.toString (slot-value this 'f_stringUtil)))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this _METHOD_NAME)
            (jm_add_2 (jm_getInputMapping_0 (slot-value this 'f_inputMapping)) (slot-value this 'f_selectedGameKey) _input)
            (setf (slot-value this 'f_selectedInput) _input)
            (jm_update_0 this))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to" this _METHOD_NAME)
            (jm_setSelectedAction_1 this _gameKey))))))

    
(unless (fboundp 'jm_deleteCurrentMapping_0) (defgeneric jm_deleteCurrentMapping_0 (this)))
(defmethod jm_deleteCurrentMapping_0 ((this GameInputMappingCanvas))
  (declare (ignorable this))
  (let (_METHOD_NAME _list _stringBuffer)
  (declare (ignorable _METHOD_NAME _list _stringBuffer))
    (block jreturn
        (setf _METHOD_NAME "deleteCurrentMapping")
        (setf _list (jm_getMappedInput_1 (jm_getInputMapping_0 (slot-value this 'f_inputMapping)) (slot-value this 'f_selectedGameKey)))
        (if (> (jm_size_0 _list) 1)
            (progn
            (setf _stringBuffer (StringMaker.jnew_0))
            (jm_append_1 _stringBuffer "Start GameKey: ")
            (jm_append_1 _stringBuffer "Remove Key Mapping: GameKey: ")
            (jm_append_1 _stringBuffer (JR.toString (slot-value this 'f_stringUtil)))
            (jm_append_1 _stringBuffer " Input: ")
            (jm_append_1 _stringBuffer (JR.toString (slot-value this 'f_stringUtil)))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this _METHOD_NAME)
            (jm_remove_2 (jm_getInputMapping_0 (slot-value this 'f_inputMapping)) (slot-value this 'f_selectedGameKey) (slot-value this 'f_selectedInput))
            (setf (slot-value this 'f_selectedInput) (slot-value this 'f_NONE))
            (jm_update_0 this))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "Can't Remove Last Key Mapping" this _METHOD_NAME))))))

    
(unless (fboundp 'jm_setDefault_0) (defgeneric jm_setDefault_0 (this)))
(defmethod jm_setDefault_0 ((this GameInputMappingCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setDefault_1 (slot-value this 'f_inputMapping) (slot-value this 'f_abeClientInformation))
        (jm_update_2 (slot-value this 'f_helpPaintable) (slot-value this 'f_NONE) (slot-value this 'f_NONE))
        (jm_onChangeRepaint_1 (slot-value this 'f_repaintBehavior) this))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this GameInputMappingCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_update_1 (slot-value this 'f_inputMapping) (slot-value this 'f_abeClientInformation))
        (jm_update_2 (slot-value this 'f_helpPaintable) (slot-value this 'f_selectedGameKey) (slot-value this 'f_selectedInput))
        (jm_onChangeRepaint_1 (slot-value this 'f_repaintBehavior) this))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this GameInputMappingCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paint_1 (slot-value this 'f_colorFillPaintable) _graphics)
        (jm_paint_1 (slot-value this 'f_helpPaintable) _graphics)
        (jm_paint_1 (slot-value this 'f_paintable) _graphics)
        (call-next-method this _graphics))))



