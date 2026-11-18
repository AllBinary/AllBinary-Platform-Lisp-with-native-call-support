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

(defclass NullRecordStore (RecordStore)
  ())

(defvar NullRecordStore.jcell_NULL_RECORD_STORE :jnone)
(defun NullRecordStore.jstatic_NULL_RECORD_STORE ()
  (when (eq NullRecordStore.jcell_NULL_RECORD_STORE :jnone) (setf NullRecordStore.jcell_NULL_RECORD_STORE (NullRecordStore.jnew_0)))
  NullRecordStore.jcell_NULL_RECORD_STORE)
(defun (setf NullRecordStore.jstatic_NULL_RECORD_STORE) (value) (setf NullRecordStore.jcell_NULL_RECORD_STORE value))

(defun NullRecordStore.jnew_0 ()
  (let ((this (make-instance 'NullRecordStore)))
    this))



