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
;;;; package org.allbinary.game

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameInfo (JObject)
  ((f_logUtil :initform nil)
   (f_gameInfoData :initform nil)
   (f_gameType :initform nil)
   (f_gameMode :initform nil)
   (f_playerType :initform nil)
   (f_highestLevel :initform 0)
   (f_currentLevel :initform 0)
   (f_NEW_LEVEL :initform nil)
   (f_SET_CURRENT_LEVEL :initform nil)
   (f_NEXT_GAME_LEVEL :initform nil)))

(defvar GameInfo.jcell_NONE :jnone)
(defun GameInfo.jstatic_NONE ()
  (when (eq GameInfo.jcell_NONE :jnone) (setf GameInfo.jcell_NONE (GameInfo.jnew_5 (slot-value (GameTypeFactory.jm_getInstance_0) 'f_NONE) (GameMode.jstatic_NONE) (slot-value (PlayerTypesFactory.jm_getInstance_0) 'f_PLAYER_TYPE_ONE) (JR.i32 (- 1)) (JR.i32 (- 1)))))
  GameInfo.jcell_NONE)
(defun (setf GameInfo.jstatic_NONE) (value) (setf GameInfo.jcell_NONE value))

(defvar GameInfo.jcell_LEVEL_NAME :jnone)
(defun GameInfo.jstatic_LEVEL_NAME ()
  (when (eq GameInfo.jcell_LEVEL_NAME :jnone) (setf GameInfo.jcell_LEVEL_NAME "LEVEL"))
  GameInfo.jcell_LEVEL_NAME)
(defun (setf GameInfo.jstatic_LEVEL_NAME) (value) (setf GameInfo.jcell_LEVEL_NAME value))

    
(defun GameInfo.jnew_5 (_gameType _gameMode _playerType _highestLevel _currentLevel)
  (declare (ignorable _gameType _gameMode _playerType _highestLevel _currentLevel))
  (let ((this (make-instance 'GameInfo)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_gameInfoData) (GameInfoData.jm_getInstance_0))
    
    
    
    
    
    (setf (slot-value this 'f_NEW_LEVEL) "New Level: ")
    (setf (slot-value this 'f_SET_CURRENT_LEVEL) "setCurrentLevel")
    (setf (slot-value this 'f_NEXT_GAME_LEVEL) "nextGameLevel")
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameType) _gameType)
        (setf (slot-value this 'f_gameMode) _gameMode)
        (jm_setHighestLevel_1 this _highestLevel)
        (setf (slot-value this 'f_currentLevel) _currentLevel)
        (setf (slot-value this 'f_playerType) _playerType)))
    this))

    
(unless (fboundp 'jm_getGameType_0) (defgeneric jm_getGameType_0 (this)))
(defmethod jm_getGameType_0 ((this GameInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameType)))))

    
(unless (fboundp 'jm_getGameMode_0) (defgeneric jm_getGameMode_0 (this)))
(defmethod jm_getGameMode_0 ((this GameInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameMode)))))

    
(unless (fboundp 'jm_getPlayerType_0) (defgeneric jm_getPlayerType_0 (this)))
(defmethod jm_getPlayerType_0 ((this GameInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_playerType)))))

    
(unless (fboundp 'jm_getHighestLevel_0) (defgeneric jm_getHighestLevel_0 (this)))
(defmethod jm_getHighestLevel_0 ((this GameInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_highestLevel)))))

    
(unless (fboundp 'jm_setHighestLevel_1) (defgeneric jm_setHighestLevel_1 (this p1)))
(defmethod jm_setHighestLevel_1 ((this GameInfo) _highestLevel)
  (declare (ignorable this _highestLevel))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_highestLevel) _highestLevel))))

    
(unless (fboundp 'jm_getCurrentLevel_0) (defgeneric jm_getCurrentLevel_0 (this)))
(defmethod jm_getCurrentLevel_0 ((this GameInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_currentLevel)))))

    
(unless (fboundp 'jm_setCurrentLevel_1) (defgeneric jm_setCurrentLevel_1 (this p1)))
(defmethod jm_setCurrentLevel_1 ((this GameInfo) _currentLevel)
  (declare (ignorable this _currentLevel))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_currentLevel) _currentLevel)
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_NEW_LEVEL)) (jm_getCurrentLevel_0 this))) this (slot-value this 'f_SET_CURRENT_LEVEL)))))

    
(unless (fboundp 'jm_nextGameLevel_0) (defgeneric jm_nextGameLevel_0 (this)))
(defmethod jm_nextGameLevel_0 ((this GameInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (< (jm_getCurrentLevel_0 this) (jm_getHighestLevel_0 this))
            (progn
            (setf (slot-value this 'f_currentLevel) (JR.i32 (+ (slot-value this 'f_currentLevel) 1)))))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_NEXT)) (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE)) (slot-value this 'f_NEW_LEVEL)) (jm_getCurrentLevel_0 this))) this (slot-value this 'f_NEXT_GAME_LEVEL)))))

    
(unless (fboundp 'jm_previousGameLevel_0) (defgeneric jm_previousGameLevel_0 (this)))
(defmethod jm_previousGameLevel_0 ((this GameInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (> (jm_getCurrentLevel_0 this) 1)
            (progn
            (setf (slot-value this 'f_currentLevel) (JR.i32 (- (slot-value this 'f_currentLevel) 1))))))))

    
(unless (fboundp 'jm_isLastLevel_0) (defgeneric jm_isLastLevel_0 (this)))
(defmethod jm_isLastLevel_0 ((this GameInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (>= (jm_getCurrentLevel_0 this) (jm_getHighestLevel_0 this))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_toHashtable_0) (defgeneric jm_toHashtable_0 (this)))
(defmethod jm_toHashtable_0 ((this GameInfo))
  (declare (ignorable this))
  (let (_hashtable)
  (declare (ignorable _hashtable))
    (block jreturn
        (setf _hashtable (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
        (jm_put_2 _hashtable (slot-value (slot-value this 'f_gameInfoData) 'f_GAME_TYPE) (jm_toString_0 (jm_getGameType_0 this)))
        (jm_put_2 _hashtable (slot-value (slot-value this 'f_gameInfoData) 'f_GAME_MODE) (jm_toString_0 (slot-value this 'f_gameMode)))
        (jm_put_2 _hashtable (slot-value (slot-value this 'f_gameInfoData) 'f_PLAYER_TYPE) (jm_toString_0 (slot-value this 'f_playerType)))
        (jm_put_2 _hashtable (slot-value (slot-value this 'f_gameInfoData) 'f_HIGHEST_LEVEL) (JR.str (jm_getHighestLevel_0 this)))
        (jm_put_2 _hashtable (slot-value (slot-value this 'f_gameInfoData) 'f_CURRENT_LEVEL) (JR.str (slot-value this 'f_currentLevel)))
        (return-from jreturn _hashtable))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this GameInfo))
  (declare (ignorable this))
  (let (_stringBuffer _commonSeps)
  (declare (ignorable _stringBuffer _commonSeps))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_gameInfoData) 'f_GAME_TYPE))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_EQUALS))
        (jm_append_1 _stringBuffer (jm_toString_0 (jm_getGameType_0 this)))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_gameInfoData) 'f_GAME_MODE))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_EQUALS))
        (jm_append_1 _stringBuffer (jm_toString_0 (slot-value this 'f_gameMode)))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_gameInfoData) 'f_PLAYER_TYPE))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_EQUALS))
        (jm_append_1 _stringBuffer (jm_toString_1 (StringUtil.jm_getInstance_0) (slot-value this 'f_playerType)))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_gameInfoData) 'f_HIGHEST_LEVEL))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (jm_getHighestLevel_0 this))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_gameInfoData) 'f_CURRENT_LEVEL))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (slot-value this 'f_currentLevel))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



