;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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

(defclass BaseGameBehavior (DemoGameBehavior)
  ())

(defvar BaseGameBehavior.jcell_instanceC :jnone)
(defun BaseGameBehavior.jstatic_instanceC ()
  (when (eq BaseGameBehavior.jcell_instanceC :jnone) (setf BaseGameBehavior.jcell_instanceC (BaseGameBehavior.jnew_0)))
  BaseGameBehavior.jcell_instanceC)
(defun (setf BaseGameBehavior.jstatic_instanceC) (value) (setf BaseGameBehavior.jcell_instanceC value))

(defun BaseGameBehavior.jnew_0 ()
  (let ((this (make-instance 'BaseGameBehavior)))
    this))

    
(defun BaseGameBehavior.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BaseGameBehavior.jstatic_instanceC)))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this BaseGameBehavior))
  (declare (ignorable this))
  (let (_gameAdState)
  (declare (ignorable _gameAdState))
    (block jreturn
        (setf _gameAdState (jm_getCurrentInstance_0 (GameAdStateFactory.jm_getInstance_0)))
        (jm_playingAdState_0 _gameAdState))))

    
(unless (fboundp 'jm_pause_1) (defgeneric jm_pause_1 (this p1)))
(defmethod jm_pause_1 ((this BaseGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let (_features _currentDisplayableFactory)
  (declare (ignorable _features _currentDisplayableFactory))
    (block jreturn
        (setf _features (Features.jm_getInstance_0))
        (if (jm_isDefault_1 _features (slot-value (OpenGLFeatureFactory.jm_getInstance_0) 'f_OPENGL_AS_GAME_THREAD))
            (progn
            (setf _currentDisplayableFactory (CurrentDisplayableFactory.jm_getInstance_0))
            (jm_setRunnable_1 _currentDisplayableFactory (slot-value _allBinaryGameCanvas 'f_gamePauseRunnable)))))))

    
(unless (fboundp 'jm_unPause_1) (defgeneric jm_unPause_1 (this p1)))
(defmethod jm_unPause_1 ((this BaseGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let (_currentDisplayableFactory)
  (declare (ignorable _currentDisplayableFactory))
    (block jreturn
        (if (jm_isDefault_1 (Features.jm_getInstance_0) (slot-value (OpenGLFeatureFactory.jm_getInstance_0) 'f_OPENGL_AS_GAME_THREAD))
            (progn
            (setf _currentDisplayableFactory (CurrentDisplayableFactory.jm_getInstance_0))
            (jm_setRunnable_1 _currentDisplayableFactory (slot-value _allBinaryGameCanvas 'f_gameRunnable))
            (jm_setDisplayable_1 _currentDisplayableFactory _allBinaryGameCanvas))))))

    
(unless (fboundp 'jm_updateTouch_1) (defgeneric jm_updateTouch_1 (this p1)))
(defmethod jm_updateTouch_1 ((this BaseGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (jm_updateTouch2_0 _allBinaryGameCanvas))))

    
(unless (fboundp 'jm_updateScreenButtonPaintable_1) (defgeneric jm_updateScreenButtonPaintable_1 (this p1)))
(defmethod jm_updateScreenButtonPaintable_1 ((this BaseGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (jm_updateScreenButtonPaintable2_0 _allBinaryGameCanvas))))

    
(unless (fboundp 'jm_setGameState_1) (defgeneric jm_setGameState_1 (this p1)))
(defmethod jm_setGameState_1 ((this BaseGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (jm_updateGameState_0 _allBinaryGameCanvas))))

    
(unless (fboundp 'jm_removeAllGameKeyInputListeners_1) (defgeneric jm_removeAllGameKeyInputListeners_1 (this p1)))
(defmethod jm_removeAllGameKeyInputListeners_1 ((this BaseGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (jm_removeAllGameKeyInputListeners2_0 _allBinaryGameCanvas))))

    
(unless (fboundp 'jm_updateEndGameProcessor_1) (defgeneric jm_updateEndGameProcessor_1 (this p1)))
(defmethod jm_updateEndGameProcessor_1 ((this BaseGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (jm_updateEndGameProcessor2_0 _allBinaryGameCanvas))))

    
(unless (fboundp 'jm_buildGame_1) (defgeneric jm_buildGame_1 (this p1)))
(defmethod jm_buildGame_1 ((this BaseGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (jm_buildGame2_0 _allBinaryGameCanvas))))

    
(unless (fboundp 'jm_run_1) (defgeneric jm_run_1 (this p1)))
(defmethod jm_run_1 ((this BaseGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (jm_run2_0 _allBinaryGameCanvas))))

    
(unless (fboundp 'jm_setHighScore_6) (defgeneric jm_setHighScore_6 (this p1 p2 p3 p4 p5 p6)))
(defmethod jm_setHighScore_6 ((this BaseGameBehavior) _abeClientInformation _allBinaryGameCanvas _name _score _autoSubmit _isLast)
  (declare (ignorable this _abeClientInformation _allBinaryGameCanvas _name _score _autoSubmit _isLast))
  (let ()
    (block jreturn
        (jm_setHighScore2_5 _allBinaryGameCanvas _abeClientInformation _name _score _autoSubmit _isLast))))



