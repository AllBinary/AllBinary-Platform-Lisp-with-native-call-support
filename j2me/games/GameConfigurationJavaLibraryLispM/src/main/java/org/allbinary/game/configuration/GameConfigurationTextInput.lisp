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
;;;; package org.allbinary.game.configuration

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameConfigurationTextInput (JObject)
  ((f_label :initform nil)
   (f_text :initform nil)))

(defvar GameConfigurationTextInput.jcell_hashtable :jnone)
(defun GameConfigurationTextInput.jstatic_hashtable ()
  (when (eq GameConfigurationTextInput.jcell_hashtable :jnone) (setf GameConfigurationTextInput.jcell_hashtable (jm_createHashtable_0 (StdUtil.jm_getInstance_0))))
  GameConfigurationTextInput.jcell_hashtable)
(defun (setf GameConfigurationTextInput.jstatic_hashtable) (value) (setf GameConfigurationTextInput.jcell_hashtable value))

(defvar GameConfigurationTextInput.jcell_SIMULATOR_IP :jnone)
(defun GameConfigurationTextInput.jstatic_SIMULATOR_IP ()
  (when (eq GameConfigurationTextInput.jcell_SIMULATOR_IP :jnone) (setf GameConfigurationTextInput.jcell_SIMULATOR_IP (GameConfigurationTextInput.jnew_2 "IP: " "192.168.1.3")))
  GameConfigurationTextInput.jcell_SIMULATOR_IP)
(defun (setf GameConfigurationTextInput.jstatic_SIMULATOR_IP) (value) (setf GameConfigurationTextInput.jcell_SIMULATOR_IP value))

(defvar GameConfigurationTextInput.jcell_SIMULATOR_PORT :jnone)
(defun GameConfigurationTextInput.jstatic_SIMULATOR_PORT ()
  (when (eq GameConfigurationTextInput.jcell_SIMULATOR_PORT :jnone) (setf GameConfigurationTextInput.jcell_SIMULATOR_PORT (GameConfigurationTextInput.jnew_2 "Port: " "8010")))
  GameConfigurationTextInput.jcell_SIMULATOR_PORT)
(defun (setf GameConfigurationTextInput.jstatic_SIMULATOR_PORT) (value) (setf GameConfigurationTextInput.jcell_SIMULATOR_PORT value))

    
(defun GameConfigurationTextInput.jnew_2 (_label _text)
  (declare (ignorable _label _text))
  (let ((this (make-instance 'GameConfigurationTextInput)))
    (setf (slot-value this 'f_label) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_text) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
  (let ()
    (block jreturn
        (jm_setText_1 this _text)
        (jm_setLabel_1 this _label)
        (jm_put_2 (GameConfigurationTextInput.jstatic_hashtable) (jm_getLabel_0 this) this)))
    this))

    
(defun GameConfigurationTextInput.jm_update_1 (_textField)
  (declare (ignorable _textField))
  (let (_anyType _gameConfigurationTextInput)
  (declare (ignorable _anyType _gameConfigurationTextInput))
    (block jreturn
        (setf _anyType (jm_getLabel_0 _textField))
        (setf _gameConfigurationTextInput (jm_get_1 (GameConfigurationTextInput.jstatic_hashtable) _anyType))
        (jm_setText_1 _gameConfigurationTextInput (jm_getString_0 _textField)))))

    
(unless (fboundp 'jm_setText_1) (defgeneric jm_setText_1 (this p1)))
(defmethod jm_setText_1 ((this GameConfigurationTextInput) _text)
  (declare (ignorable this _text))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_text) _text))))

    
(unless (fboundp 'jm_getText_0) (defgeneric jm_getText_0 (this)))
(defmethod jm_getText_0 ((this GameConfigurationTextInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_text)))))

    
(unless (fboundp 'jm_setLabel_1) (defgeneric jm_setLabel_1 (this p1)))
(defmethod jm_setLabel_1 ((this GameConfigurationTextInput) _label)
  (declare (ignorable this _label))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_label) _label))))

    
(unless (fboundp 'jm_getLabel_0) (defgeneric jm_getLabel_0 (this)))
(defmethod jm_getLabel_0 ((this GameConfigurationTextInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_label)))))

    
(defun GameConfigurationTextInput.jm_getHashtable_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameConfigurationTextInput.jstatic_hashtable)))))



