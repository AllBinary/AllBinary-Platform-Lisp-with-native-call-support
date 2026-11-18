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
;;;; package org.allbinary.game.configuration

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass InGameOptionsForm (CommandForm)
  ())

(defvar InGameOptionsForm.jcell_DISPLAY :jnone)
(defun InGameOptionsForm.jstatic_DISPLAY ()
  (when (eq InGameOptionsForm.jcell_DISPLAY :jnone) (setf InGameOptionsForm.jcell_DISPLAY (Command.jnew_4 "Options In Game" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1)))
  InGameOptionsForm.jcell_DISPLAY)
(defun (setf InGameOptionsForm.jstatic_DISPLAY) (value) (setf InGameOptionsForm.jcell_DISPLAY value))

(defvar InGameOptionsForm.jcell_SAVE :jnone)
(defun InGameOptionsForm.jstatic_SAVE ()
  (when (eq InGameOptionsForm.jcell_SAVE :jnone) (setf InGameOptionsForm.jcell_SAVE (Command.jnew_4 "Save" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1)))
  InGameOptionsForm.jcell_SAVE)
(defun (setf InGameOptionsForm.jstatic_SAVE) (value) (setf InGameOptionsForm.jcell_SAVE value))

(defvar InGameOptionsForm.jcell_DEFAULT :jnone)
(defun InGameOptionsForm.jstatic_DEFAULT ()
  (when (eq InGameOptionsForm.jcell_DEFAULT :jnone) (setf InGameOptionsForm.jcell_DEFAULT (Command.jnew_4 "Default" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1)))
  InGameOptionsForm.jcell_DEFAULT)
(defun (setf InGameOptionsForm.jstatic_DEFAULT) (value) (setf InGameOptionsForm.jcell_DEFAULT value))

    
(defun InGameOptionsForm.jnew_4 (_commandListener _title _backgrounBasicColor _foregroundBasicColor)
  (declare (ignorable _commandListener _title _backgrounBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'InGameOptionsForm)))
  (let (_gameFeatureFormUtil)
  (declare (ignorable _gameFeatureFormUtil))
    (block jreturn
        nil
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
        (setf _gameFeatureFormUtil (GameFeatureFormUtil.jm_getInstance_0))
        (jm_addChoiceGroup_3 _gameFeatureFormUtil this (jm_get_0 (InGameFeatureChoiceGroups.jm_getExclusiveInstance_0)) (Choice.jstatic_EXCLUSIVE))
        (jm_addChoiceGroup_3 _gameFeatureFormUtil this (jm_get_0 (InGameFeatureChoiceGroups.jm_getMultipleInstance_0)) (Choice.jstatic_MULTIPLE))
        (jm_initCommands_1 this _commandListener)))
    this))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this InGameOptionsForm) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let ()
    (block jreturn
        (jm_removeAllCommands_0 this)
        (jm_addCommand_1 this (slot-value (GameCommandsFactory.jm_getInstance_0) 'f_CLOSE_AND_SHOW_GAME_CANVAS))
        (jm_addCommand_1 this (InGameOptionsForm.jstatic_DEFAULT))
        (jm_setCommandListener_1 this _cmdListener))))



