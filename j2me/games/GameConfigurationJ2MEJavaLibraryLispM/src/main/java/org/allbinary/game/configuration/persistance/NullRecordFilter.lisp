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

(defclass NullRecordFilter (JObject)
  ())

(defvar NullRecordFilter.jcell_NULL_RECORD_FILTER :jnone)
(defun NullRecordFilter.jstatic_NULL_RECORD_FILTER ()
  (when (eq NullRecordFilter.jcell_NULL_RECORD_FILTER :jnone) (setf NullRecordFilter.jcell_NULL_RECORD_FILTER (NullRecordFilter.jnew_0)))
  NullRecordFilter.jcell_NULL_RECORD_FILTER)
(defun (setf NullRecordFilter.jstatic_NULL_RECORD_FILTER) (value) (setf NullRecordFilter.jcell_NULL_RECORD_FILTER value))

(defun NullRecordFilter.jnew_0 ()
  (let ((this (make-instance 'NullRecordFilter)))
    this))

    
(unless (fboundp 'jm_matches_1) (defgeneric jm_matches_1 (this p1)))
(defmethod jm_matches_1 ((this NullRecordFilter) _candidate)
  (declare (ignorable this _candidate))
  (let ()
    (block jreturn
        (return-from jreturn t))))



