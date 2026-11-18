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

(defclass SaveGameForm (CommandForm)
  ((f_meUtil :initform nil)))

(defvar SaveGameForm.jcell_FORM :jnone)
(defun SaveGameForm.jstatic_FORM ()
  (when (eq SaveGameForm.jcell_FORM :jnone) (setf SaveGameForm.jcell_FORM (CommandForm.jm_getNullCommandForm_0)))
  SaveGameForm.jcell_FORM)
(defun (setf SaveGameForm.jstatic_FORM) (value) (setf SaveGameForm.jcell_FORM value))

    
(defun SaveGameForm.jm_createForm_4 (_commandListener _title _backgrounBasicColor _foregroundBasicColor)
  (declare (ignorable _commandListener _title _backgrounBasicColor _foregroundBasicColor))
  (let ()
    (block jreturn
        (setf (SaveGameForm.jstatic_FORM) (SaveGameForm.jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor))
        (return-from jreturn (SaveGameForm.jstatic_FORM)))))

    
(defun SaveGameForm.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SaveGameForm.jstatic_FORM)))))

    
(defun SaveGameForm.jnew_4 (_commandListener _title _backgrounBasicColor _foregroundBasicColor)
  (declare (ignorable _commandListener _title _backgrounBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'SaveGameForm)))
    (setf (slot-value this 'f_meUtil) (MIDPUtil.jm_getInstance_0))
  (let (_timeString)
  (declare (ignorable _timeString))
    (block jreturn
        nil
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
        (setf _timeString (JR.str (jm_currentTimeMillis_0 (ABSystemWrapper.jm_getInstance_0))))
        (jm_appendItem_2 (slot-value this 'f_meUtil) this (TextField.jnew_4 "Name: " _timeString 30 (TextField.jstatic_ANY)))
        (jm_initCommands_1 this _commandListener)))
    this))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this SaveGameForm) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let (_gameCommandsFactory)
  (declare (ignorable _gameCommandsFactory))
    (block jreturn
        (setf _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (jm_removeAllCommands_0 this)
        (jm_addCommand_1 this (slot-value _gameCommandsFactory 'f_SAVE))
        (jm_addCommand_1 this (slot-value _gameCommandsFactory 'f_CLOSE_AND_SHOW_GAME_CANVAS))
        (jm_setCommandListener_1 this _cmdListener))))



