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

(defclass PersistanceStrings (JObject)
  ((f_SAVING :initform nil)
   (f_NUMBER_OF_RECORDS :initform nil)
   (f_LOADING_ID :initform nil)
   (f_LOAD_ALL :initform nil)
   (f_DELETING_WITH_ID :initform nil)
   (f_CLOSING_RECORDSTORE :initform nil)
   (f_NOT_SAVING :initform nil)
   (f_ERROR_LOADING :initform nil)
   (f_ERROR_LOADING_ID :initform nil)
   (f_ID :initform nil)
   (f_GAME_ACTION_INPUT :initform nil)))

(defvar PersistanceStrings.jcell_instance :jnone)
(defun PersistanceStrings.jstatic_instance ()
  (when (eq PersistanceStrings.jcell_instance :jnone) (setf PersistanceStrings.jcell_instance (PersistanceStrings.jnew_0)))
  PersistanceStrings.jcell_instance)
(defun (setf PersistanceStrings.jstatic_instance) (value) (setf PersistanceStrings.jcell_instance value))

(defun PersistanceStrings.jnew_0 ()
  (let ((this (make-instance 'PersistanceStrings)))
    (setf (slot-value this 'f_SAVING) "Saving: ")
    (setf (slot-value this 'f_NUMBER_OF_RECORDS) "Number of records: ")
    (setf (slot-value this 'f_LOADING_ID) "Loading data with id: ")
    (setf (slot-value this 'f_LOAD_ALL) "loadAll")
    (setf (slot-value this 'f_DELETING_WITH_ID) "Deleting data with id: ")
    (setf (slot-value this 'f_CLOSING_RECORDSTORE) "Closing RecordStore")
    (setf (slot-value this 'f_NOT_SAVING) "Not Saving: ")
    (setf (slot-value this 'f_ERROR_LOADING) "Error Loading gameActionInput: ")
    (setf (slot-value this 'f_ERROR_LOADING_ID) "Error Loading id: ")
    (setf (slot-value this 'f_ID) " id: ")
    (setf (slot-value this 'f_GAME_ACTION_INPUT) " GameActionInput: ")
    this))

    
(defun PersistanceStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PersistanceStrings.jstatic_instance)))))



