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

(defclass NullRecordComparator (JObject)
  ())

(defvar NullRecordComparator.jcell_NULL_RECORD_COMPARATOR :jnone)
(defun NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR ()
  (when (eq NullRecordComparator.jcell_NULL_RECORD_COMPARATOR :jnone) (setf NullRecordComparator.jcell_NULL_RECORD_COMPARATOR (NullRecordComparator.jnew_0)))
  NullRecordComparator.jcell_NULL_RECORD_COMPARATOR)
(defun (setf NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR) (value) (setf NullRecordComparator.jcell_NULL_RECORD_COMPARATOR value))

(defun NullRecordComparator.jnew_0 ()
  (let ((this (make-instance 'NullRecordComparator)))
    this))

    
(unless (fboundp 'jm_compare_2) (defgeneric jm_compare_2 (this p1 p2)))
(defmethod jm_compare_2 ((this NullRecordComparator) _rec1 _rec2)
  (declare (ignorable this _rec1 _rec2))
  (let ()
    (block jreturn
        (return-from jreturn 0))))



