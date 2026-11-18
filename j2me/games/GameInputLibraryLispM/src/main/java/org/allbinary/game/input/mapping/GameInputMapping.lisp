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
;;;; package org.allbinary.game.input.mapping

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameInputMapping (JObject)
  ((f_name :initform nil)
   (f_gameKey :initform nil)))

    
(defun GameInputMapping.jnew_2 (_name _gameKey)
  (declare (ignorable _name _gameKey))
  (let ((this (make-instance 'GameInputMapping)))
    (setf (slot-value this 'f_name) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_gameKey) (GameKey.jstatic_NULL_GAME_KEY))
  (let ()
    (block jreturn
        (jm_setName_1 this _name)
        (jm_setGameKey_1 this _gameKey)))
    this))

    
(unless (fboundp 'jm_setGameKey_1) (defgeneric jm_setGameKey_1 (this p1)))
(defmethod jm_setGameKey_1 ((this GameInputMapping) _gameKey)
  (declare (ignorable this _gameKey))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameKey) _gameKey))))

    
(unless (fboundp 'jm_getGameKey_0) (defgeneric jm_getGameKey_0 (this)))
(defmethod jm_getGameKey_0 ((this GameInputMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameKey)))))

    
(unless (fboundp 'jm_setName_1) (defgeneric jm_setName_1 (this p1)))
(defmethod jm_setName_1 ((this GameInputMapping) _name)
  (declare (ignorable this _name))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _name))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this GameInputMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))



