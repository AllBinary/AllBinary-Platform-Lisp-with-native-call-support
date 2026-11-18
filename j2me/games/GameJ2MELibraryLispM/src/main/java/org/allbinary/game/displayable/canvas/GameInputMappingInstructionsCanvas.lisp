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

(defclass GameInputMappingInstructionsCanvas (GameCommandCanvas)
  ((f_drawStringUtil :initform nil)
   (f_TITLE :initform nil)
   (f_instructions :initform nil)
   (f_colorFillPaintable :initform nil)
   (f_anchor :initform 0)))

(defvar GameInputMappingInstructionsCanvas.jcell_DISPLAY :jnone)
(defun GameInputMappingInstructionsCanvas.jstatic_DISPLAY ()
  (when (eq GameInputMappingInstructionsCanvas.jcell_DISPLAY :jnone) (setf GameInputMappingInstructionsCanvas.jcell_DISPLAY (Command.jnew_4 "Help" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1)))
  GameInputMappingInstructionsCanvas.jcell_DISPLAY)
(defun (setf GameInputMappingInstructionsCanvas.jstatic_DISPLAY) (value) (setf GameInputMappingInstructionsCanvas.jcell_DISPLAY value))

(defvar GameInputMappingInstructionsCanvas.jcell_CLOSE :jnone)
(defun GameInputMappingInstructionsCanvas.jstatic_CLOSE ()
  (when (eq GameInputMappingInstructionsCanvas.jcell_CLOSE :jnone) (setf GameInputMappingInstructionsCanvas.jcell_CLOSE (Command.jnew_4 "Close" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1)))
  GameInputMappingInstructionsCanvas.jcell_CLOSE)
(defun (setf GameInputMappingInstructionsCanvas.jstatic_CLOSE) (value) (setf GameInputMappingInstructionsCanvas.jcell_CLOSE value))

(defvar GameInputMappingInstructionsCanvas.jcell_NAME :jnone)
(defun GameInputMappingInstructionsCanvas.jstatic_NAME ()
  (when (eq GameInputMappingInstructionsCanvas.jcell_NAME :jnone) (setf GameInputMappingInstructionsCanvas.jcell_NAME "GameInputMappingInstructionsCanvas"))
  GameInputMappingInstructionsCanvas.jcell_NAME)
(defun (setf GameInputMappingInstructionsCanvas.jstatic_NAME) (value) (setf GameInputMappingInstructionsCanvas.jcell_NAME value))

    
(defun GameInputMappingInstructionsCanvas.jnew_2 (_commandListener _allBinaryGameLayerManager)
  (declare (ignorable _commandListener _allBinaryGameLayerManager))
  (let ((this (make-instance 'GameInputMappingInstructionsCanvas)))
    (setf (slot-value this 'f_drawStringUtil) (DrawStringUtil.jm_getInstance_0))
    (setf (slot-value this 'f_TITLE) "Input Instructions")
    (setf (slot-value this 'f_instructions) (vector "Add Input Mapping:" "1. Select the desired action by generating a currently defined input for a given action." "(Example: Press the '1' key to select the Fire action)" "2. Make the newly desired input for the selected action." "(Example: Press 'f' to add it to the selected action)" "Note: If the input is already mapped to another action then it will not be added. You" "will need to deleted from the other action before adding it to another." "Warning: Not all keys map for a given platform and show as Unknown." (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) "Remove Input Mapping:" "1. Select the desired action by generating a currently defined input for a given action." "(Example: Press the key '1' to select the Fire action)" "2. Select a mapped input for the selected action." "(Example: Press the key '1' to select the '1' key input for the selected Fire action)" "3. Press the Delete Key."))
    
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
  (let ()
    (block jreturn
        nil
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
        (setf (slot-value this 'f_colorFillPaintable) (jm_getInstance_2 (ColorFillPaintableFactory.jm_getInstance_0) (jm_getBackgroundBasicColor_0 _allBinaryGameLayerManager) nil))))
    this))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this GameInputMappingInstructionsCanvas) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let ()
    (block jreturn
        (jm_removeAllCommands_0 this)
        (jm_addCommand_1 this (GameInputMappingInstructionsCanvas.jstatic_CLOSE))
        (jm_setCommandListener_1 this _cmdListener))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this GameInputMappingInstructionsCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let (_halfWidth _beginWidth)
  (declare (ignorable _halfWidth _beginWidth))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_paint_1 (slot-value this 'f_colorFillPaintable) _graphics)
        (setf _halfWidth (jm_getLastHalfWidth_0 (slot-value this 'f_displayInfo)))
        (setf _beginWidth (ash (jm_stringWidth_1 (jm_getFont_0 _graphics) (slot-value this 'f_TITLE)) (- (logand 1 31))))
        (jm_setColor_1 _graphics (slot-value this 'f_foregroundColor))
        (jm_drawString_4 _graphics (slot-value this 'f_TITLE) (JR.i32 (- _halfWidth _beginWidth)) (slot-value this 'f_fontHeight) (slot-value this 'f_anchor))
        (jm_drawCenterStrings_6 (slot-value this 'f_drawStringUtil) _graphics (slot-value this 'f_instructions) (jm_getLastWidth_0 (slot-value this 'f_displayInfo)) (slot-value this 'f_fontHeight) _halfWidth (JR.i32 (* 3 (slot-value this 'f_fontHeight))))
        (call-next-method this _graphics))))



