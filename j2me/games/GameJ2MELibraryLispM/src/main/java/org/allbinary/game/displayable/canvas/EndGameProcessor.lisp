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

(defclass EndGameProcessor (Processor)
  ((f_gameStateFactory :initform nil)
   (f_gameCanvas :initform nil)
   (f_WAIT :initform 0)))

    
(defun EndGameProcessor.jnew_1 (_gameCanvas)
  (declare (ignorable _gameCanvas))
  (let ((this (make-instance 'EndGameProcessor)))
    (setf (slot-value this 'f_gameStateFactory) (GameStateFactory.jm_getInstance_0))
    
    (setf (slot-value this 'f_WAIT) 5000)
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameCanvas) _gameCanvas)))
    this))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this EndGameProcessor))
  (declare (ignorable this))
  (let (_highScoresBase _highScores)
  (declare (ignorable _highScoresBase _highScores))
    (block jreturn
        (if (jm_isHighScoreSubmitted_0 (slot-value this 'f_gameCanvas))
            (progn
            (if (jm_isElapsedTNT_1 (jm_getGameStateTimeHelper_0 (slot-value this 'f_gameCanvas)) (slot-value this 'f_WAIT))
                (progn
                (if (eq (jm_getGameState_0 (slot-value this 'f_gameCanvas)) (slot-value (slot-value this 'f_gameStateFactory) 'f_SHOW_END_RESULT_GAME_STATE))
                    (progn
                    (setf _highScoresBase (slot-value (slot-value this 'f_gameCanvas) 'f_highScoresHelper))
                    (setf _highScores (jm_getSelectedHighScores_0 _highScoresBase))
                    (if (not (eq _highScores (NullHighScoresSingletonFactory.jm_getInstance_0)))
                        (progn
                        (jm_selectHighScores_0 _highScoresBase)
                        (jm_setHighScores_1 (jm_getRealHighScoresPaintable_0 (slot-value this 'f_gameCanvas)) _highScores)
                        (jm_setGameState_1 (slot-value this 'f_gameCanvas) (slot-value (slot-value this 'f_gameStateFactory) 'f_SHOW_HIGH_SCORE_GAME_STATE))
                        (jm_setHighScoresPaintable_1 (slot-value this 'f_gameCanvas) (jm_getRealHighScoresPaintable_0 (slot-value this 'f_gameCanvas))))))
                    (if (eq (jm_getGameState_0 (slot-value this 'f_gameCanvas)) (slot-value (slot-value this 'f_gameStateFactory) 'f_SHOW_HIGH_SCORE_GAME_STATE))
                    (progn
                    (jm_setGameState_1 (slot-value this 'f_gameCanvas) (slot-value (slot-value this 'f_gameStateFactory) 'f_SHOW_END_RESULT_GAME_STATE))
                    (jm_setHighScoresPaintable_1 (slot-value this 'f_gameCanvas) (NullPaintable.jm_getInstance_0))))))))))))



