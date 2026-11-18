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
;;;; package org.allbinary.game.score.displayable

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HighScoreTextBox (CustomTextBox)
  ((f_virtualKeyboardEventHandler :initform nil)
   (f_highScoreUtil :initform nil)
   (f_pleaseWait :initform nil)
   (f_paintable :initform nil)
   (f_submitted :initform nil)))

    
(defun HighScoreTextBox.jnew_9 (_highScoresFactoryInterface _highScoresHelper _abeClientInformation _gameInfo _cmdListener _name _highScore _backgrounBasicColor _foregroundBasicColor)
  (declare (ignorable _highScoresFactoryInterface _highScoresHelper _abeClientInformation _gameInfo _cmdListener _name _highScore _backgrounBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'HighScoreTextBox)))
    (setf (slot-value this 'f_virtualKeyboardEventHandler) (VirtualKeyboardEventHandler.jm_getInstance_0))
    
    (setf (slot-value this 'f_pleaseWait) (SimpleTextPaintable.jnew_2 (slot-value (slot-value this 'f_commonStrings) 'f_PLEASE_WAIT) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE)))
    (setf (slot-value this 'f_paintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_submitted) nil)
  (let (_operatingSystemInterface _username)
  (declare (ignorable _operatingSystemInterface _username))
    (block jreturn
        nil
        (setf (slot-value this 'f_highScoreUtil) (HighScoreUtil.jnew_7 _highScoresFactoryInterface _highScoresHelper _abeClientInformation _gameInfo _cmdListener _name _highScore))
        (setf _operatingSystemInterface (jm_getOperatingSystemInstance_0 (OperatingSystemFactory.jm_getInstance_0)))
        (if (jm_isOverScan_0 _operatingSystemInterface)
            (progn
            (setf _username (jm_getUserName_0 (InApplicationPurchaseFactory.jm_getInstance_0)))
            (jm_setString_1 (jm_getTextFieldItem_0 this) _username)))))
    this))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this HighScoreTextBox) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let ()
    (block jreturn
        (jm_removeAllCommands_0 this)
        (jm_addCommands_1 (PostGameCommandFactory.jm_getInstance_0) this)
        (jm_addCommand_1 this (HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND))
        (jm_setCommandListener_1 this _cmdListener))))

    
(unless (fboundp 'jm_open_0) (defgeneric jm_open_0 (this)))
(defmethod jm_open_0 ((this HighScoreTextBox))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_open_0 (slot-value this 'f_virtualKeyboardEventHandler))
        (setf (slot-value this 'f_paintable) (NullPaintable.jm_getInstance_0))
        (call-next-method this))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this HighScoreTextBox))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_close_0 (slot-value this 'f_virtualKeyboardEventHandler))
        (setf (slot-value this 'f_paintable) (slot-value this 'f_pleaseWait))
        (jm_onChangeRepaint_1 (slot-value this 'f_repaintBehavior) this)
        (call-next-method this)
        (jm_removeCommand_1 this (HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND))
        (jm_update_0 this)
        (if (slot-value this 'f_submitted)
            (progn
            (jm_saveHighScore_0 (slot-value this 'f_highScoreUtil)))
            (progn
            nil))
        (setf (slot-value this 'f_paintable) (NullPaintable.jm_getInstance_0))
        (jm_onChangeRepaint_1 (slot-value this 'f_repaintBehavior) this))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this HighScoreTextBox))
  (declare (ignorable this))
  (let (_name)
  (declare (ignorable _name))
    (block jreturn
        (setf _name (jm_getString_0 (jm_getTextFieldItem_0 this)))
        (jm_update_1 (slot-value this 'f_highScoreUtil) _name)
        (call-next-method this))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this HighScoreTextBox) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (call-next-method this _graphics)
        (jm_paint_1 (slot-value this 'f_paintable) _graphics))))

    
(unless (fboundp 'jm_saveHighScore_0) (defgeneric jm_saveHighScore_0 (this)))
(defmethod jm_saveHighScore_0 ((this HighScoreTextBox))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_saveHighScore_0 (slot-value this 'f_highScoreUtil)))))

    
(unless (fboundp 'jm_submit_0) (defgeneric jm_submit_0 (this)))
(defmethod jm_submit_0 ((this HighScoreTextBox))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_submit_1 (slot-value this 'f_highScoreUtil) this))))



