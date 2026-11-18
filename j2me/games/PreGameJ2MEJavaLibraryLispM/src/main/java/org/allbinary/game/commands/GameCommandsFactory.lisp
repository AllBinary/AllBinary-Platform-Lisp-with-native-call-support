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
;;;; package org.allbinary.game.commands

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameCommandsFactory (JObject)
  ((f_TOGGLE_FULLSCREEN :initform nil)
   (f_TOGGLE_KEYBOARD :initform nil)
   (f_SET_MENU_DISPLAYABLE :initform nil)
   (f_APPLICATION_UPDATE :initform nil)
   (f_DISPLAY_ABOUT :initform nil)
   (f_OPEN_WEB_URL :initform nil)
   (f_CLOSE_OPTIONS :initform nil)
   (f_DISPLAY_OPTIONS :initform nil)
   (f_START_TRACE :initform nil)
   (f_STOP_TRACE :initform nil)
   (f_DEFAULT_OPTIONS :initform nil)
   (f_SHOW_GAME_CANVAS :initform nil)
   (f_CLOSE_AND_SHOW_GAME_CANVAS :initform nil)
   (f_QUIT_COMMAND :initform nil)
   (f_RESTART_COMMAND :initform nil)
   (f_DISPLAY_SAVE_FORM :initform nil)
   (f_SAVE :initform nil)
   (f_DISPLAY_LOAD_FORM :initform nil)
   (f_LOAD_FILE :initform nil)
   (f_DELETE_FILE :initform nil)
   (f_EXIT_COMMAND :initform nil)
   (f_EXIT_WITHOUT_PROGRESS_COMMAND :initform nil)
   (f_START_COMMAND :initform nil)
   (f_CONTINUE_COMMAND :initform nil)
   (f_SELECT_COMMAND :initform nil)
   (f_FEATURE_UPDATE :initform nil)
   (f_BUY_COMMAND :initform nil)))

(defvar GameCommandsFactory.jcell_instance :jnone)
(defun GameCommandsFactory.jstatic_instance ()
  (when (eq GameCommandsFactory.jcell_instance :jnone) (setf GameCommandsFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  GameCommandsFactory.jcell_instance)
(defun (setf GameCommandsFactory.jstatic_instance) (value) (setf GameCommandsFactory.jcell_instance value))

    
(defun GameCommandsFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (GameCommandsFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (GameCommandsFactory.jstatic_instance) (GameCommandsFactory.jnew_0))))
        (return-from jreturn (GameCommandsFactory.jstatic_instance)))))

    
(defun GameCommandsFactory.jnew_0 ()
  (let ((this (make-instance 'GameCommandsFactory)))
    (setf (slot-value this 'f_TOGGLE_FULLSCREEN) (Command.jnew_4 "Toggle FullScreen" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_TOGGLE_KEYBOARD) (Command.jnew_4 "Keyboard" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_SET_MENU_DISPLAYABLE) (Command.jnew_4 "Set Menu Displayable" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_APPLICATION_UPDATE) (Command.jnew_4 (slot-value (CommonStrings.jm_getInstance_0) 'f_UPDATE) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_DISPLAY_ABOUT) (Command.jnew_4 (slot-value (CanvasStrings.jm_getInstance_0) 'f_ABOUT) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 2))
    (setf (slot-value this 'f_OPEN_WEB_URL) (Command.jnew_4 "Open Web URL" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 2))
    (setf (slot-value this 'f_CLOSE_OPTIONS) (Command.jnew_4 "Back" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_DISPLAY_OPTIONS) (Command.jnew_4 (slot-value (CanvasStrings.jm_getInstance_0) 'f_OPTIONS) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 2))
    (setf (slot-value this 'f_START_TRACE) (Command.jnew_4 "Start Trace" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_STOP_TRACE) (Command.jnew_4 "Stop Trace" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_DEFAULT_OPTIONS) (Command.jnew_4 "Default" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_SHOW_GAME_CANVAS) (Command.jnew_4 "Back to Game" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_CLOSE_AND_SHOW_GAME_CANVAS) (Command.jnew_4 "Back" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_QUIT_COMMAND) (Command.jnew_4 "Quit" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_STOP) 1))
    (setf (slot-value this 'f_RESTART_COMMAND) (Command.jnew_4 "Restart" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 0))
    (setf (slot-value this 'f_DISPLAY_SAVE_FORM) (Command.jnew_4 "Save To" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 3))
    (setf (slot-value this 'f_SAVE) (Command.jnew_4 "Save" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 3))
    (setf (slot-value this 'f_DISPLAY_LOAD_FORM) (Command.jnew_4 "Load" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 3))
    (setf (slot-value this 'f_LOAD_FILE) (Command.jnew_4 "Load File" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 3))
    (setf (slot-value this 'f_DELETE_FILE) (Command.jnew_4 "Delete File" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_EXIT_COMMAND) (Command.jnew_4 "Exit" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_EXIT) 2))
    (setf (slot-value this 'f_EXIT_WITHOUT_PROGRESS_COMMAND) (Command.jnew_4 "Exit Without Progress" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_EXIT) 2))
    (setf (slot-value this 'f_START_COMMAND) (Command.jnew_4 (slot-value (CommonStrings.jm_getInstance_0) 'f_START) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_CONTINUE_COMMAND) (Command.jnew_4 "Continue" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_SELECT_COMMAND) (Command.jnew_4 "Select" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_FEATURE_UPDATE) (Command.jnew_4 "Feature Update" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
    (setf (slot-value this 'f_BUY_COMMAND) (Command.jnew_4 "BUY" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1))
  (let ()
    (block jreturn nil))
    this))



