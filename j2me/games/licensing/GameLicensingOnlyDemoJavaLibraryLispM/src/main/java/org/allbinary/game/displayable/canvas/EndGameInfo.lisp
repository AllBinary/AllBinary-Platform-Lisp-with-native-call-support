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

(defclass EndGameInfo (JObject)
  ((f_NORMAL_GAME_OVER_WIN :initform nil)
   (f_TEASER_DEMO_GAME_END_LAST_LEVEL :initform nil)
   (f_TEASER_DEMO_GAME_END :initform nil)
   (f_gameOverStr :initform nil)
   (f_winStr :initform nil)))

(defun EndGameInfo.jnew_0 ()
  (let ((this (make-instance 'EndGameInfo)))
    (setf (slot-value this 'f_NORMAL_GAME_OVER_WIN) "You Won")
    (setf (slot-value this 'f_TEASER_DEMO_GAME_END_LAST_LEVEL) "End of Demo.")
    (setf (slot-value this 'f_TEASER_DEMO_GAME_END) "Demo Game Over.")
    (setf (slot-value this 'f_gameOverStr) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_winStr) (slot-value this 'f_gameOverStr))
    this))

    
(unless (fboundp 'jm_update_2) (defgeneric jm_update_2 (this p1 p2)))
(defmethod jm_update_2 ((this EndGameInfo) _gameInfo _myCanvas)
  (declare (ignorable this _gameInfo _myCanvas))
  (let ()
    (block jreturn
        (if (jm_isLastLevel_0 _gameInfo)
            (progn
            (jm_setWinStr_1 this (slot-value this 'f_TEASER_DEMO_GAME_END_LAST_LEVEL))
            (jm_setGameOverStr_1 this (slot-value this 'f_TEASER_DEMO_GAME_END_LAST_LEVEL)))
            (progn
            (jm_setWinStr_1 this (slot-value this 'f_NORMAL_GAME_OVER_WIN))
            (jm_setGameOverStr_1 this (slot-value this 'f_TEASER_DEMO_GAME_END)))))))

    
(unless (fboundp 'jm_getGameOverStr_0) (defgeneric jm_getGameOverStr_0 (this)))
(defmethod jm_getGameOverStr_0 ((this EndGameInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameOverStr)))))

    
(unless (fboundp 'jm_setGameOverStr_1) (defgeneric jm_setGameOverStr_1 (this p1)))
(defmethod jm_setGameOverStr_1 ((this EndGameInfo) _gameOverStr)
  (declare (ignorable this _gameOverStr))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameOverStr) _gameOverStr))))

    
(unless (fboundp 'jm_getWinStr_0) (defgeneric jm_getWinStr_0 (this)))
(defmethod jm_getWinStr_0 ((this EndGameInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_winStr)))))

    
(unless (fboundp 'jm_setWinStr_1) (defgeneric jm_setWinStr_1 (this p1)))
(defmethod jm_setWinStr_1 ((this EndGameInfo) _winStr)
  (declare (ignorable this _winStr))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_winStr) _winStr))))



