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

(defclass GameKeyFactory (JObject)
  ((f_NONE :initform nil)
   (f_UP :initform nil)
   (f_DOWN :initform nil)
   (f_LEFT :initform nil)
   (f_RIGHT :initform nil)
   (f_KEY_POUND :initform nil)
   (f_KEY_STAR :initform nil)
   (f_KEY_NUM0 :initform nil)
   (f_KEY_NUM1 :initform nil)
   (f_KEY_NUM2 :initform nil)
   (f_KEY_NUM3 :initform nil)
   (f_KEY_NUM4 :initform nil)
   (f_KEY_NUM5 :initform nil)
   (f_KEY_NUM6 :initform nil)
   (f_KEY_NUM7 :initform nil)
   (f_KEY_NUM8 :initform nil)
   (f_KEY_NUM9 :initform nil)
   (f_GAME_A :initform nil)
   (f_GAME_B :initform nil)
   (f_GAME_C :initform nil)
   (f_GAME_D :initform nil)
   (f_FIRE :initform nil)
   (f_LEVEL_DOWN :initform nil)
   (f_LEVEL_UP :initform nil)))

(defvar GameKeyFactory.jcell_instance :jnone)
(defun GameKeyFactory.jstatic_instance ()
  (when (eq GameKeyFactory.jcell_instance :jnone) (setf GameKeyFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  GameKeyFactory.jcell_instance)
(defun (setf GameKeyFactory.jstatic_instance) (value) (setf GameKeyFactory.jcell_instance value))

(defun GameKeyFactory.jnew_0 ()
  (let ((this (make-instance 'GameKeyFactory)))
    (setf (slot-value this 'f_NONE) (GameKey.jnew_2 (JR.i32 (- (slot-value (InputFactory.jm_getInstance_0) 'f_MAX) 1)) "None"))
    (setf (slot-value this 'f_UP) (GameKey.jnew_2 (Canvas.jstatic_UP) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_UP)))
    (setf (slot-value this 'f_DOWN) (GameKey.jnew_2 (Canvas.jstatic_DOWN) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_DOWN)))
    (setf (slot-value this 'f_LEFT) (GameKey.jnew_2 (Canvas.jstatic_LEFT) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_LEFT)))
    (setf (slot-value this 'f_RIGHT) (GameKey.jnew_2 (Canvas.jstatic_RIGHT) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_RIGHT)))
    (setf (slot-value this 'f_KEY_POUND) (GameKey.jnew_2 (Canvas.jstatic_KEY_POUND) "POUND"))
    (setf (slot-value this 'f_KEY_STAR) (GameKey.jnew_2 (Canvas.jstatic_KEY_STAR) "STAR"))
    (setf (slot-value this 'f_KEY_NUM0) (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM0) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_ZERO)))
    (setf (slot-value this 'f_KEY_NUM1) (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM1) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_ONE)))
    (setf (slot-value this 'f_KEY_NUM2) (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM2) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_TWO)))
    (setf (slot-value this 'f_KEY_NUM3) (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM3) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_THREE)))
    (setf (slot-value this 'f_KEY_NUM4) (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM4) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_FOUR)))
    (setf (slot-value this 'f_KEY_NUM5) (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM5) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_FIVE)))
    (setf (slot-value this 'f_KEY_NUM6) (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM6) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_SIX)))
    (setf (slot-value this 'f_KEY_NUM7) (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM7) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_SEVEN)))
    (setf (slot-value this 'f_KEY_NUM8) (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM8) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_EIGHT)))
    (setf (slot-value this 'f_KEY_NUM9) (GameKey.jnew_2 (Canvas.jstatic_KEY_NUM9) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_NINE)))
    (setf (slot-value this 'f_GAME_A) (GameKey.jnew_2 (Canvas.jstatic_GAME_A) "Game A"))
    (setf (slot-value this 'f_GAME_B) (GameKey.jnew_2 (Canvas.jstatic_GAME_B) "Game B"))
    (setf (slot-value this 'f_GAME_C) (GameKey.jnew_2 (Canvas.jstatic_GAME_C) "Game C"))
    (setf (slot-value this 'f_GAME_D) (GameKey.jnew_2 (Canvas.jstatic_GAME_D) "Game D"))
    (setf (slot-value this 'f_FIRE) (GameKey.jnew_2 (Canvas.jstatic_FIRE) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_FIRE)))
    (setf (slot-value this 'f_LEVEL_DOWN) (GameKey.jnew_2 (JR.i32 (+ (Canvas.jstatic_KEY_NUM9) 1)) "Cheat Level Up"))
    (setf (slot-value this 'f_LEVEL_UP) (GameKey.jnew_2 (JR.i32 (+ (Canvas.jstatic_KEY_NUM9) 2)) "Cheat Level Down"))
    this))

    
(defun GameKeyFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (GameKeyFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (GameKeyFactory.jstatic_instance) (GameKeyFactory.jnew_0))))
        (return-from jreturn (GameKeyFactory.jstatic_instance)))))



