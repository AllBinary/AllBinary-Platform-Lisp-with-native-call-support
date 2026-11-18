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

(defclass GameInputProcessor (JObject)
  ())

(defvar GameInputProcessor.jcell_instance :jnone)
(defun GameInputProcessor.jstatic_instance ()
  (when (eq GameInputProcessor.jcell_instance :jnone) (setf GameInputProcessor.jcell_instance (GameInputProcessor.jnew_0)))
  GameInputProcessor.jcell_instance)
(defun (setf GameInputProcessor.jstatic_instance) (value) (setf GameInputProcessor.jcell_instance value))

    
(defun GameInputProcessor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameInputProcessor.jstatic_instance)))))

    
(defun GameInputProcessor.jnew_0 ()
  (let ((this (make-instance 'GameInputProcessor)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_processEvent_2) (defgeneric jm_processEvent_2 (this p1 p2)))
(defmethod jm_processEvent_2 ((this GameInputProcessor) _allbinaryLayerManager _gameKeyEvent)
  (declare (ignorable this _allbinaryLayerManager _gameKeyEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processReleasedEvent_2) (defgeneric jm_processReleasedEvent_2 (this p1 p2)))
(defmethod jm_processReleasedEvent_2 ((this GameInputProcessor) _allbinaryLayerManager _gameKeyEvent)
  (declare (ignorable this _allbinaryLayerManager _gameKeyEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processAnalog_3) (defgeneric jm_processAnalog_3 (this p1 p2 p3)))
(defmethod jm_processAnalog_3 ((this GameInputProcessor) _allbinaryLayerManager _gameKeyEvent _analogValue)
  (declare (ignorable this _allbinaryLayerManager _gameKeyEvent _analogValue))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this GameInputProcessor) _allbinaryLayerManager _keyAsInteger)
  (declare (ignorable this _allbinaryLayerManager _keyAsInteger))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processReleased_2) (defgeneric jm_processReleased_2 (this p1 p2)))
(defmethod jm_processReleased_2 ((this GameInputProcessor) _allbinaryLayerManager _keyAsInteger)
  (declare (ignorable this _allbinaryLayerManager _keyAsInteger))
  (let ()
    (block jreturn nil)))



