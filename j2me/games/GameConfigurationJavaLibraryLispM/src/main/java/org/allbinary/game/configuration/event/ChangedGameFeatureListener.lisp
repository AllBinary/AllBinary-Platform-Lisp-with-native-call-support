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
;;;; package org.allbinary.game.configuration.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ChangedGameFeatureListener (BaseChangedGameFeatureListener)
  ())

(defvar ChangedGameFeatureListener.jcell_gameFeatureListener :jnone)
(defun ChangedGameFeatureListener.jstatic_gameFeatureListener ()
  (when (eq ChangedGameFeatureListener.jcell_gameFeatureListener :jnone) (setf ChangedGameFeatureListener.jcell_gameFeatureListener (ChangedGameFeatureListener.jnew_0)))
  ChangedGameFeatureListener.jcell_gameFeatureListener)
(defun (setf ChangedGameFeatureListener.jstatic_gameFeatureListener) (value) (setf ChangedGameFeatureListener.jcell_gameFeatureListener value))

(defun ChangedGameFeatureListener.jnew_0 ()
  (let ((this (make-instance 'ChangedGameFeatureListener)))
    this))

    
(defun ChangedGameFeatureListener.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ChangedGameFeatureListener.jstatic_gameFeatureListener)))))

    
(unless (fboundp 'jm_isChangedGameConfiguration_1) (defgeneric jm_isChangedGameConfiguration_1 (this p1)))
(defmethod jm_isChangedGameConfiguration_1 ((this ChangedGameFeatureListener) _gameConfiguration)
  (declare (ignorable this _gameConfiguration))
  (let ()
    (block jreturn
        (return-from jreturn (jm_contains_1 (slot-value this 'f_list) _gameConfiguration)))))



