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

(defclass GameKeyMappingFactory (JObject)
  ((f_intKeyToGameKey :initform nil)))

(defvar GameKeyMappingFactory.jcell_instance :jnone)
(defun GameKeyMappingFactory.jstatic_instance ()
  (when (eq GameKeyMappingFactory.jcell_instance :jnone) (setf GameKeyMappingFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  GameKeyMappingFactory.jcell_instance)
(defun (setf GameKeyMappingFactory.jstatic_instance) (value) (setf GameKeyMappingFactory.jcell_instance value))

    
(defun GameKeyMappingFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (GameKeyMappingFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (GameKeyMappingFactory.jstatic_instance) (GameKeyMappingFactory.jnew_0))))
        (return-from jreturn (GameKeyMappingFactory.jstatic_instance)))))

    
(defun GameKeyMappingFactory.jnew_0 ()
  (let ((this (make-instance 'GameKeyMappingFactory)))
    (setf (slot-value this 'f_intKeyToGameKey) (JR.newArray nil (slot-value (InputFactory.jm_getInstance_0) 'f_MAX)))
  (let (_gameKeyFactory)
  (declare (ignorable _gameKeyFactory))
    (block jreturn
        (setf _gameKeyFactory (GameKeyFactory.jm_getInstance_0))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_NONE))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_UP))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_DOWN))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_LEFT))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_RIGHT))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_KEY_POUND))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_KEY_STAR))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_KEY_NUM0))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_KEY_NUM1))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_KEY_NUM2))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_KEY_NUM3))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_KEY_NUM4))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_KEY_NUM5))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_KEY_NUM6))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_KEY_NUM7))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_KEY_NUM8))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_KEY_NUM9))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_GAME_A))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_GAME_B))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_GAME_C))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_GAME_D))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_FIRE))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_LEVEL_DOWN))
        (jm_setGameKey_1 this (slot-value _gameKeyFactory 'f_LEVEL_UP))))
    this))

    
(unless (fboundp 'jm_getGameKey_1) (defgeneric jm_getGameKey_1 (this p1)))
(defmethod jm_getGameKey_1 ((this GameKeyMappingFactory) _key)
  (declare (ignorable this _key))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_intKeyToGameKey) _key)))))

    
(unless (fboundp 'jm_setGameKey_1) (defgeneric jm_setGameKey_1 (this p1)))
(defmethod jm_setGameKey_1 ((this GameKeyMappingFactory) _gameKey)
  (declare (ignorable this _gameKey))
  (let ()
    (block jreturn
        (setf (aref (slot-value this 'f_intKeyToGameKey) (jm_getId_0 _gameKey)) _gameKey))))



