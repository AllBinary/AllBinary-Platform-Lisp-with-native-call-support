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

(defclass HighScoresCanvas (GameCommandCanvas)
  ((f_paintable :initform nil)
   (f_highScoreCommandsFactory :initform nil)
   (f_waitPaintable :initform nil)
   (f_highScoresPaintable :initform nil)
   (f_highScoresFactoryInterface :initform nil)
   (f_colorFillPaintable :initform nil)
   (f_highScoresHelper :initform nil)
   (f_gameInfo :initform nil)
   (f_highScoresCanvasInputProcessor :initform nil)
   (f_currentCommand :initform nil)
   (f_hasPainted :initform nil)))

(defvar HighScoresCanvas.jcell_NAME :jnone)
(defun HighScoresCanvas.jstatic_NAME ()
  (when (eq HighScoresCanvas.jcell_NAME :jnone) (setf HighScoresCanvas.jcell_NAME "HighScoresCanvas"))
  HighScoresCanvas.jcell_NAME)
(defun (setf HighScoresCanvas.jstatic_NAME) (value) (setf HighScoresCanvas.jcell_NAME value))

    
(defun HighScoresCanvas.jnew_6 (_commandListener _allBinaryGameLayerManager _gameInfo _paintable _highScoresFactoryInterface _highScoresCanvasInputProcessorFactoryInterface)
  (declare (ignorable _commandListener _allBinaryGameLayerManager _gameInfo _paintable _highScoresFactoryInterface _highScoresCanvasInputProcessorFactoryInterface))
  (let ((this (make-instance 'HighScoresCanvas)))
    (setf (slot-value this 'f_paintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_highScoreCommandsFactory) (HighScoreCommandsFactory.jm_getInstance_0))
    (setf (slot-value this 'f_waitPaintable) (SimpleTextPaintable.jnew_2 (slot-value (slot-value this 'f_commonStrings) 'f_PLEASE_WAIT_FOR_SERVER) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE)))
    
    
    
    (setf (slot-value this 'f_highScoresHelper) (HighScoresHelperBase.jnew_0))
    
    
    (setf (slot-value this 'f_currentCommand) (aref (slot-value (slot-value this 'f_highScoreCommandsFactory) 'f_HIGH_SCORE_COMMANDS) 0))
    (setf (slot-value this 'f_hasPainted) nil)
  (let ()
    (block jreturn
        nil
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
        (setf (slot-value this 'f_highScoresPaintable) _paintable)
        (setf (slot-value this 'f_highScoresFactoryInterface) _highScoresFactoryInterface)
        (setf (slot-value this 'f_highScoresCanvasInputProcessor) (jm_getInstance_1 _highScoresCanvasInputProcessorFactoryInterface this))
        (setf (slot-value this 'f_gameInfo) _gameInfo)
        (jm_setBasicColorP_1 (slot-value this 'f_waitPaintable) (jm_getForegroundBasicColor_0 _allBinaryGameLayerManager))
        (jm_setBasicColorP_1 (jm_getHighScoresPaintable_0 this) (jm_getForegroundBasicColor_0 _allBinaryGameLayerManager))
        (setf (slot-value this 'f_colorFillPaintable) (jm_getInstance_2 (ColorFillPaintableFactory.jm_getInstance_0) (jm_getBackgroundBasicColor_0 _allBinaryGameLayerManager) nil))
        (if (= (length (jm_getHighScoresArray_0 (slot-value this 'f_highScoresHelper))) (length (slot-value (NoHighScoresFactory.jm_getInstance_0) 'f_NO_HIGH_SCORES)))
            (progn
            (jm_setPaintable_1 this (slot-value this 'f_waitPaintable)))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "Show HighScores that are already loaded" this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
            (jm_updateCommand_1 this (slot-value this 'f_currentCommand))
            (jm_setPaintable_1 this (jm_getHighScoresPaintable_0 this))))
        (jm_runTask_1 (SecondaryThreadPool.jm_getInstance_0) (HighScoreRunnable.jnew_1 this))))
    this))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this HighScoresCanvas) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let ()
    (block jreturn
        (jm_removeAllCommands_0 this)
        (jm_addCommand_1 this (slot-value (GameCommandsFactory.jm_getInstance_0) 'f_CLOSE_AND_SHOW_GAME_CANVAS))
        (jm_setCommandListener_1 this _cmdListener))))

    
(unless (fboundp 'jm_open_0) (defgeneric jm_open_0 (this)))
(defmethod jm_open_0 ((this HighScoresCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (call-next-method this)
        (jm_open_0 (slot-value this 'f_highScoresCanvasInputProcessor)))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this HighScoresCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (call-next-method this)
        (jm_close_0 (slot-value this 'f_highScoresCanvasInputProcessor)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this HighScoresCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paint_1 (slot-value this 'f_colorFillPaintable) _graphics)
        (jm_paint_1 (slot-value this 'f_paintable) _graphics)
        (if (not (eq (slot-value this 'f_waitPaintable) (slot-value this 'f_paintable)))
            (progn
            (jm_paint_1 (slot-value this 'f_highScoresCanvasInputProcessor) _graphics)))
        (call-next-method this _graphics)
        (setf (slot-value this 'f_hasPainted) t))))

    
(unless (fboundp 'jm_executeUpdate_0) (defgeneric jm_executeUpdate_0 (this)))
(defmethod jm_executeUpdate_0 ((this HighScoresCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (handler-case (progn
            (jm_fetchHighScores_2 (slot-value this 'f_highScoresFactoryInterface) (jm_getGameInfo_0 this) this))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE) _e))))))

    
(unless (fboundp 'jm_getHighScoresPaintable_0) (defgeneric jm_getHighScoresPaintable_0 (this)))
(defmethod jm_getHighScoresPaintable_0 ((this HighScoresCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_highScoresPaintable)))))

    
(unless (fboundp 'jm_setHighScoresArray_1) (defgeneric jm_setHighScoresArray_1 (this p1)))
(defmethod jm_setHighScoresArray_1 ((this HighScoresCanvas) _highScoresArray)
  (declare (ignorable this _highScoresArray))
  (let ()
    (block jreturn
        (handler-case (progn
            (if (not (null _highScoresArray))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_START)) (length _highScoresArray))) this "setHighScoresArray"))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this "setHighScoresArray")))
            (jm_setHighScoresArray_1 (slot-value this 'f_highScoresHelper) _highScoresArray)
            (jm_updateCommand_1 this (slot-value this 'f_currentCommand))
            (jm_setPaintable_1 this (jm_getHighScoresPaintable_0 this)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE) _e))))))

    
(unless (fboundp 'jm_updateCommand_1) (defgeneric jm_updateCommand_1 (this p1)))
(defmethod jm_updateCommand_1 ((this HighScoresCanvas) _command)
  (declare (ignorable this _command))
  (let (_gameCommandsFactory _index _nextIndex _highScoresArray)
  (declare (ignorable _gameCommandsFactory _index _nextIndex _highScoresArray))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_START)) (JR.toString (slot-value this 'f_stringUtil)))) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE))
        (setf _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (if (jm_isHighScoreCommand_1 (slot-value this 'f_highScoreCommandsFactory) _command)
            (progn
            (setf _index (jm_getIndex_1 (slot-value this 'f_highScoreCommandsFactory) _command))
            (setf _nextIndex (JR.i32 (+ _index 1)))
            (setf _highScoresArray (jm_getHighScoresArray_0 (slot-value this 'f_highScoresHelper)))
            (if (>= _nextIndex (length _highScoresArray))
                (progn
                (setf _nextIndex 0)))
            (if (> (length _highScoresArray) 0)
                (progn
                (jm_setHighScores_1 (jm_getHighScoresPaintable_0 this) (aref _highScoresArray _index)))
                (progn
                (jm_setHighScores_1 (jm_getHighScoresPaintable_0 this) (NullHighScoresSingletonFactory.jm_getInstance_0))))
            (if (/= _index _nextIndex)
                (progn
                (jm_removeAllCommands_0 this)
                (jm_addCommand_1 this (slot-value _gameCommandsFactory 'f_CLOSE_AND_SHOW_GAME_CANVAS))
                (jm_addCommand_1 this (aref (slot-value (slot-value this 'f_highScoreCommandsFactory) 'f_HIGH_SCORE_COMMANDS) _nextIndex))))))
        (setf (slot-value this 'f_currentCommand) _command)
        (jm_close_0 this)
        (jm_initMenu_0 this)
        (jm_open_0 this)
        (jm_onChangeRepaint_1 (slot-value this 'f_repaintBehavior) this))))

    
(unless (fboundp 'jm_getGameInfo_0) (defgeneric jm_getGameInfo_0 (this)))
(defmethod jm_getGameInfo_0 ((this HighScoresCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameInfo)))))

    
(unless (fboundp 'jm_setPaintable_1) (defgeneric jm_setPaintable_1 (this p1)))
(defmethod jm_setPaintable_1 ((this HighScoresCanvas) _paintable)
  (declare (ignorable this _paintable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_paintable) _paintable)
        (jm_onChangeRepaint_1 (slot-value this 'f_repaintBehavior) this))))



