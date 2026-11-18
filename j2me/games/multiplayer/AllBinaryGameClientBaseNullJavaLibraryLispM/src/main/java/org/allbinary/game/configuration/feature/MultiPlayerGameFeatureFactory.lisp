;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game.configuration.feature

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MultiPlayerGameFeatureFactory (JObject)
  ())

(defvar MultiPlayerGameFeatureFactory.jcell_instance :jnone)
(defun MultiPlayerGameFeatureFactory.jstatic_instance ()
  (when (eq MultiPlayerGameFeatureFactory.jcell_instance :jnone) (setf MultiPlayerGameFeatureFactory.jcell_instance (MultiPlayerGameFeatureFactory.jnew_0)))
  MultiPlayerGameFeatureFactory.jcell_instance)
(defun (setf MultiPlayerGameFeatureFactory.jstatic_instance) (value) (setf MultiPlayerGameFeatureFactory.jcell_instance value))

    
(defun MultiPlayerGameFeatureFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MultiPlayerGameFeatureFactory.jstatic_instance)))))

    
(defun MultiPlayerGameFeatureFactory.jnew_0 ()
  (let ((this (make-instance 'MultiPlayerGameFeatureFactory)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_addCommands_1) (defgeneric jm_addCommands_1 (this p1)))
(defmethod jm_addCommands_1 ((this MultiPlayerGameFeatureFactory) _anyType)
  (declare (ignorable this _anyType))
  (let (_gameCommandsFactory _canvas)
  (declare (ignorable _gameCommandsFactory _canvas))
    (block jreturn
        (setf _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (setf _canvas _anyType)
        (jm_addCommand_1 _canvas (slot-value _gameCommandsFactory 'f_QUIT_COMMAND)))))



