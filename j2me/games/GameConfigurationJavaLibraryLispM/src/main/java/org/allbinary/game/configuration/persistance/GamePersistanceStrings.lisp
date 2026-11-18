;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.game.configuration.persistance

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GamePersistanceStrings (JObject)
  ((f_SAVED_GAME_RECORD_ID :initform nil)
   (f_SAVED_GAME_CONFIGURATION_RECORD_ID :initform nil)
   (f_DEFAULT_INPUT_MAPPING_RECORD_ID :initform nil)
   (f_SAVED_INPUT_CONFIGURATION_RECORD_ID :initform nil)))

(defvar GamePersistanceStrings.jcell_instance :jnone)
(defun GamePersistanceStrings.jstatic_instance ()
  (when (eq GamePersistanceStrings.jcell_instance :jnone) (setf GamePersistanceStrings.jcell_instance (GamePersistanceStrings.jnew_0)))
  GamePersistanceStrings.jcell_instance)
(defun (setf GamePersistanceStrings.jstatic_instance) (value) (setf GamePersistanceStrings.jcell_instance value))

(defun GamePersistanceStrings.jnew_0 ()
  (let ((this (make-instance 'GamePersistanceStrings)))
    (setf (slot-value this 'f_SAVED_GAME_RECORD_ID) "_SG")
    (setf (slot-value this 'f_SAVED_GAME_CONFIGURATION_RECORD_ID) "_SGC")
    (setf (slot-value this 'f_DEFAULT_INPUT_MAPPING_RECORD_ID) "_DIM")
    (setf (slot-value this 'f_SAVED_INPUT_CONFIGURATION_RECORD_ID) "_SIC")
    this))

    
(defun GamePersistanceStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GamePersistanceStrings.jstatic_instance)))))



