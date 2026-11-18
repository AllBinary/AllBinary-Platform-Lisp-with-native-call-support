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

(defclass J2MEKeyFactory (JObject)
  ((f_gameKeyFactory :initform nil)))

(defvar J2MEKeyFactory.jcell_instance :jnone)
(defun J2MEKeyFactory.jstatic_instance ()
  (when (eq J2MEKeyFactory.jcell_instance :jnone) (setf J2MEKeyFactory.jcell_instance (J2MEKeyFactory.jnew_0)))
  J2MEKeyFactory.jcell_instance)
(defun (setf J2MEKeyFactory.jstatic_instance) (value) (setf J2MEKeyFactory.jcell_instance value))

    
(defun J2MEKeyFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (J2MEKeyFactory.jstatic_instance)))))

    
(defun J2MEKeyFactory.jnew_0 ()
  (let ((this (make-instance 'J2MEKeyFactory)))
    (setf (slot-value this 'f_gameKeyFactory) (GameKeyFactory.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this J2MEKeyFactory))
  (declare (ignorable this))
  (let (_gameKeyArray _inputFactory _index)
  (declare (ignorable _gameKeyArray _inputFactory _index))
    (block jreturn
        (setf _gameKeyArray (vector (slot-value (slot-value this 'f_gameKeyFactory) 'f_DOWN) (slot-value (slot-value this 'f_gameKeyFactory) 'f_FIRE) (slot-value (slot-value this 'f_gameKeyFactory) 'f_GAME_A) (slot-value (slot-value this 'f_gameKeyFactory) 'f_GAME_B) (slot-value (slot-value this 'f_gameKeyFactory) 'f_GAME_C) (slot-value (slot-value this 'f_gameKeyFactory) 'f_GAME_D) (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_NUM0) (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_NUM1) (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_NUM2) (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_NUM3) (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_NUM4) (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_NUM5) (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_NUM6) (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_NUM7) (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_NUM8) (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_NUM9) (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_POUND) (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_STAR) (slot-value (slot-value this 'f_gameKeyFactory) 'f_LEFT) (slot-value (slot-value this 'f_gameKeyFactory) 'f_LEVEL_DOWN) (slot-value (slot-value this 'f_gameKeyFactory) 'f_LEVEL_UP) (slot-value (slot-value this 'f_gameKeyFactory) 'f_NONE) (slot-value (slot-value this 'f_gameKeyFactory) 'f_RIGHT) (slot-value (slot-value this 'f_gameKeyFactory) 'f_UP)))
        (setf _inputFactory (InputFactory.jm_getInstance_0))
        (progn
            (setf _index (length _gameKeyArray))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (jm_add_2 _inputFactory (jm_getId_0 (aref _gameKeyArray _index)) (aref _gameKeyArray _index)))))))))

    
(unless (fboundp 'jm_isSubmission_1) (defgeneric jm_isSubmission_1 (this p1)))
(defmethod jm_isSubmission_1 ((this J2MEKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (if (eq _input (slot-value (slot-value this 'f_gameKeyFactory) 'f_FIRE))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isDelete_1) (defgeneric jm_isDelete_1 (this p1)))
(defmethod jm_isDelete_1 ((this J2MEKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (if (eq _input (slot-value (slot-value this 'f_gameKeyFactory) 'f_GAME_D))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isBackSpace_1) (defgeneric jm_isBackSpace_1 (this p1)))
(defmethod jm_isBackSpace_1 ((this J2MEKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isUp_1) (defgeneric jm_isUp_1 (this p1)))
(defmethod jm_isUp_1 ((this J2MEKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (if (eq _input (slot-value (slot-value this 'f_gameKeyFactory) 'f_UP))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isDown_1) (defgeneric jm_isDown_1 (this p1)))
(defmethod jm_isDown_1 ((this J2MEKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (if (eq _input (slot-value (slot-value this 'f_gameKeyFactory) 'f_DOWN))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isLeft_1) (defgeneric jm_isLeft_1 (this p1)))
(defmethod jm_isLeft_1 ((this J2MEKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (if (eq _input (slot-value (slot-value this 'f_gameKeyFactory) 'f_LEFT))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isRight_1) (defgeneric jm_isRight_1 (this p1)))
(defmethod jm_isRight_1 ((this J2MEKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (if (eq _input (slot-value (slot-value this 'f_gameKeyFactory) 'f_RIGHT))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isEnter_1) (defgeneric jm_isEnter_1 (this p1)))
(defmethod jm_isEnter_1 ((this J2MEKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (if (eq _input (slot-value (slot-value this 'f_gameKeyFactory) 'f_FIRE))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))



