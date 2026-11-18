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

(defclass MotionJ2MEDefaultGameInputMapping (PersistentInputMapping)
  ())

    
(defun MotionJ2MEDefaultGameInputMapping.jnew_0 ()
  (let ((this (make-instance 'MotionJ2MEDefaultGameInputMapping)))
  (let (_inputToGameKeyMapping _gameKeyFactory _basicTouchInputFactory)
  (declare (ignorable _inputToGameKeyMapping _gameKeyFactory _basicTouchInputFactory))
    (block jreturn
        nil
        (setf _inputToGameKeyMapping (jm_getInputMapping_0 this))
        (setf _gameKeyFactory (GameKeyFactory.jm_getInstance_0))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_UP) (slot-value _gameKeyFactory 'f_KEY_NUM2))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_LEFT) (slot-value _gameKeyFactory 'f_KEY_NUM4))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_RIGHT) (slot-value _gameKeyFactory 'f_KEY_NUM6))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_DOWN) (slot-value _gameKeyFactory 'f_KEY_NUM8))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM1) (slot-value _gameKeyFactory 'f_GAME_A))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM3) (slot-value _gameKeyFactory 'f_GAME_B))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM7) (slot-value _gameKeyFactory 'f_GAME_C))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM9) (slot-value _gameKeyFactory 'f_GAME_D))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_LEVEL_DOWN) (slot-value _gameKeyFactory 'f_LEVEL_DOWN))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_LEVEL_UP) (slot-value _gameKeyFactory 'f_LEVEL_UP))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_UP) (slot-value _gameKeyFactory 'f_UP))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_DOWN) (slot-value _gameKeyFactory 'f_DOWN))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_LEFT) (slot-value _gameKeyFactory 'f_LEFT))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_RIGHT) (slot-value _gameKeyFactory 'f_RIGHT))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_POUND) (slot-value _gameKeyFactory 'f_KEY_POUND))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_STAR) (slot-value _gameKeyFactory 'f_KEY_STAR))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM1) (slot-value _gameKeyFactory 'f_KEY_NUM1))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM3) (slot-value _gameKeyFactory 'f_KEY_NUM3))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM5) (slot-value _gameKeyFactory 'f_KEY_NUM5))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM7) (slot-value _gameKeyFactory 'f_KEY_NUM7))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM9) (slot-value _gameKeyFactory 'f_KEY_NUM9))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM0) (slot-value _gameKeyFactory 'f_KEY_NUM0))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM1) (slot-value _gameKeyFactory 'f_FIRE))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_UP) (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_UP))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_DOWN) (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_DOWN))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_LEFT) (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_LEFT))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_RIGHT) (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_RIGHT))
        (setf _basicTouchInputFactory (BasicTouchInputFactory.jm_getInstance_0))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_UP) (slot-value _basicTouchInputFactory 'f_UP))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_LEFT) (slot-value _basicTouchInputFactory 'f_LEFT))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_RIGHT) (slot-value _basicTouchInputFactory 'f_RIGHT))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_DOWN) (slot-value _basicTouchInputFactory 'f_DOWN))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM0) (slot-value _basicTouchInputFactory 'f_SPECIAL_BUTTON_FIVE))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM7) (slot-value _basicTouchInputFactory 'f_SPECIAL_BUTTON_FOUR))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM9) (slot-value _basicTouchInputFactory 'f_SPECIAL_BUTTON_THREE))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM1) (slot-value _basicTouchInputFactory 'f_SPECIAL_BUTTON_TWO))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM3) (slot-value _basicTouchInputFactory 'f_SPECIAL_BUTTON_ONE))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM2) (slot-value _basicTouchInputFactory 'f_SPECIAL_BUTTON_SIX))))
    this))



