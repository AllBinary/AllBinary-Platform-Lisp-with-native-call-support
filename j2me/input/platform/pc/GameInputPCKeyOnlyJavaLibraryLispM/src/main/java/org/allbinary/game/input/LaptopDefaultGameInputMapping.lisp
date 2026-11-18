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

(defclass LaptopDefaultGameInputMapping (PersistentInputMapping)
  ())

    
(defun LaptopDefaultGameInputMapping.jnew_0 ()
  (let ((this (make-instance 'LaptopDefaultGameInputMapping)))
  (let (_inputToGameKeyMapping _pcKeyFactory _gameKeyFactory)
  (declare (ignorable _inputToGameKeyMapping _pcKeyFactory _gameKeyFactory))
    (block jreturn
        nil
        (setf _inputToGameKeyMapping (jm_getInputMapping_0 this))
        (setf _pcKeyFactory (PCKeyFactory.jm_getInstance_0))
        (setf _gameKeyFactory (GameKeyFactory.jm_getInstance_0))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_FIRE) (slot-value _pcKeyFactory 'f_ENTER))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM1) (slot-value _pcKeyFactory 'f_FOUR))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM1) (slot-value _pcKeyFactory 'f__P))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM1) (slot-value _pcKeyFactory 'f_p))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_UP) (slot-value _pcKeyFactory 'f_DPAD_UP))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_DOWN) (slot-value _pcKeyFactory 'f_DPAD_DOWN))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_LEFT) (slot-value _pcKeyFactory 'f_DPAD_LEFT))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_RIGHT) (slot-value _pcKeyFactory 'f_DPAD_RIGHT))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM1) (slot-value _pcKeyFactory 'f_FIVE))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM7) (slot-value _pcKeyFactory 'f__Y))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM9) (slot-value _pcKeyFactory 'f__I))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_UP) (slot-value _pcKeyFactory 'f__U))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_LEFT) (slot-value _pcKeyFactory 'f__H))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_RIGHT) (slot-value _pcKeyFactory 'f__J))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_DOWN) (slot-value _pcKeyFactory 'f__N))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM5) (slot-value _pcKeyFactory 'f__M))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM7) (slot-value _pcKeyFactory 'f_y))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM9) (slot-value _pcKeyFactory 'f_i))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_UP) (slot-value _pcKeyFactory 'f_u))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_LEFT) (slot-value _pcKeyFactory 'f_h))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_RIGHT) (slot-value _pcKeyFactory 'f_j))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_DOWN) (slot-value _pcKeyFactory 'f_n))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM5) (slot-value _pcKeyFactory 'f_m))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM7) (slot-value _pcKeyFactory 'f__Q))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM9) (slot-value _pcKeyFactory 'f__E))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_UP) (slot-value _pcKeyFactory 'f__W))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_LEFT) (slot-value _pcKeyFactory 'f__A))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_RIGHT) (slot-value _pcKeyFactory 'f__D))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_DOWN) (slot-value _pcKeyFactory 'f__S))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM5) (slot-value _pcKeyFactory 'f__X))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM7) (slot-value _pcKeyFactory 'f_q))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM9) (slot-value _pcKeyFactory 'f_e))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_UP) (slot-value _pcKeyFactory 'f_w))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_LEFT) (slot-value _pcKeyFactory 'f_a))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_RIGHT) (slot-value _pcKeyFactory 'f_d))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_DOWN) (slot-value _pcKeyFactory 'f_s))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM5) (slot-value _pcKeyFactory 'f_x))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM3) (slot-value _pcKeyFactory 'f_THREE))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM0) (slot-value _pcKeyFactory 'f_ZERO))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM0) (slot-value _pcKeyFactory 'f_ONE))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM0) (slot-value _pcKeyFactory 'f_SPACE))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_POUND) (slot-value _pcKeyFactory 'f_DEL))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_POUND) (slot-value _pcKeyFactory 'f_TWO))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_STAR) (slot-value _pcKeyFactory 'f_ESCAPE))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_STAR) (slot-value _pcKeyFactory 'f_STAR))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_LEVEL_DOWN) (slot-value _pcKeyFactory 'f_COMMA))
        (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_LEVEL_UP) (slot-value _pcKeyFactory 'f_PERIOD))))
    this))



