;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game.midlet

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameMidletStateFactory (JObject)
  ((f_logUtil :initform nil)
   (f_currentGameState :initform nil)))

(defvar GameMidletStateFactory.jcell_INSTANCE :jnone)
(defun GameMidletStateFactory.jstatic_INSTANCE ()
  (when (eq GameMidletStateFactory.jcell_INSTANCE :jnone) (setf GameMidletStateFactory.jcell_INSTANCE (GameMidletStateFactory.jnew_0)))
  GameMidletStateFactory.jcell_INSTANCE)
(defun (setf GameMidletStateFactory.jstatic_INSTANCE) (value) (setf GameMidletStateFactory.jcell_INSTANCE value))

    
(defun GameMidletStateFactory.jnew_0 ()
  (let ((this (make-instance 'GameMidletStateFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_currentGameState) (slot-value (GameStateFactory.jm_getInstance_0) 'f_NO_GAME_STATE))
  (let ()
    (block jreturn nil))
    this))

    
(defun GameMidletStateFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameMidletStateFactory.jstatic_INSTANCE)))))

    
(unless (fboundp 'jm_getCurrentGameState_0) (defgeneric jm_getCurrentGameState_0 (this)))
(defmethod jm_getCurrentGameState_0 ((this GameMidletStateFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_currentGameState)))))

    
(unless (fboundp 'jm_setCurrentGameState_1) (defgeneric jm_setCurrentGameState_1 (this p1)))
(defmethod jm_setCurrentGameState_1 ((this GameMidletStateFactory) _currentGameState)
  (declare (ignorable this _currentGameState))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_CURRENT)) " GameState: ") (jm_toString_1 (StringUtil.jm_getInstance_0) _currentGameState))) this "setCurrentGameState")
        (setf (slot-value this 'f_currentGameState) _currentGameState))))



