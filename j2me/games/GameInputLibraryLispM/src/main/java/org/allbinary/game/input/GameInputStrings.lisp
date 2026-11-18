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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameInputStrings (JObject)
  ((f_PROCESS_INPUT :initform nil)
   (f_KEY_PRESSED :initform nil)
   (f_KEY_RELEASED :initform nil)
   (f_KEY_REPEATED :initform nil)
   (f_ON_PRESS_GAME_KEY :initform nil)
   (f_ON_DOWN_GAME_KEY :initform nil)
   (f_ON_UP_GAME_KEY :initform nil)
   (f_NO_KEY :initform nil)
   (f_ADD_KEY_EVENT :initform nil)
   (f_REMOVE_KEY_EVENT :initform nil)
   (f_STRAFE_LEFT :initform nil)
   (f_STRAFE_RIGHT :initform nil)
   (f_PROCESS_MOTION_INPUT :initform nil)
   (f_UDPATE_CURRENT_TOUCH_INPUT_FACTORY :initform nil)
   (f_ENABLE_PLAYER_GAME_INPUTS :initform nil)
   (f_ENABLE_PLAYER_GAME_INPUT :initform nil)))

(defvar GameInputStrings.jcell_instance :jnone)
(defun GameInputStrings.jstatic_instance ()
  (when (eq GameInputStrings.jcell_instance :jnone) (setf GameInputStrings.jcell_instance (GameInputStrings.jnew_0)))
  GameInputStrings.jcell_instance)
(defun (setf GameInputStrings.jstatic_instance) (value) (setf GameInputStrings.jcell_instance value))

(defun GameInputStrings.jnew_0 ()
  (let ((this (make-instance 'GameInputStrings)))
    (setf (slot-value this 'f_PROCESS_INPUT) "processInput")
    (setf (slot-value this 'f_KEY_PRESSED) "keyPressed")
    (setf (slot-value this 'f_KEY_RELEASED) "keyReleased")
    (setf (slot-value this 'f_KEY_REPEATED) "keyRepeated")
    (setf (slot-value this 'f_ON_PRESS_GAME_KEY) "onPressGameKeyEvent")
    (setf (slot-value this 'f_ON_DOWN_GAME_KEY) "onDownGameKeyEvent")
    (setf (slot-value this 'f_ON_UP_GAME_KEY) "onUpGameKeyEvent")
    (setf (slot-value this 'f_NO_KEY) "Key Code Not Mapped For Game: ")
    (setf (slot-value this 'f_ADD_KEY_EVENT) "addGameKeyEvent")
    (setf (slot-value this 'f_REMOVE_KEY_EVENT) "removeGameKeyEvent")
    (setf (slot-value this 'f_STRAFE_LEFT) "strafeLeft")
    (setf (slot-value this 'f_STRAFE_RIGHT) "strafeRight")
    (setf (slot-value this 'f_PROCESS_MOTION_INPUT) "processMotionInput")
    (setf (slot-value this 'f_UDPATE_CURRENT_TOUCH_INPUT_FACTORY) "updateCurrentTouchInputFactory")
    (setf (slot-value this 'f_ENABLE_PLAYER_GAME_INPUTS) "Enabling PlayerGameInputs: ")
    (setf (slot-value this 'f_ENABLE_PLAYER_GAME_INPUT) "Enabling PlayerGameInput: ")
    this))

    
(defun GameInputStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameInputStrings.jstatic_instance)))))



