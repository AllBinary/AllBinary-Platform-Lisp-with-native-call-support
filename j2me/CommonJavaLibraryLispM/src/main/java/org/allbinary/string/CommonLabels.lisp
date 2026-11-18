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
;;;; package org.allbinary.string

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CommonLabels (JObject)
  ((f_WIDTH_LABEL :initform nil)
   (f_HEIGHT_LABEL :initform nil)
   (f_END_LABEL :initform nil)
   (f_TOTAL_LABEL :initform nil)
   (f_INDEX_LABEL :initform nil)
   (f_START_LABEL :initform nil)
   (f_COMMAND_LABEL :initform nil)
   (f_NAME_LABEL :initform nil)
   (f_START :initform nil)
   (f_ELAPSED :initform nil)
   (f_CURRENT :initform nil)
   (f_NEXT :initform nil)
   (f_ITEM_LABEL :initform nil)
   (f_RESULT_ :initform nil)
   (f_COLON_SEP :initform nil)))

(defvar CommonLabels.jcell_instance :jnone)
(defun CommonLabels.jstatic_instance ()
  (when (eq CommonLabels.jcell_instance :jnone) (setf CommonLabels.jcell_instance (CommonLabels.jnew_0)))
  CommonLabels.jcell_instance)
(defun (setf CommonLabels.jstatic_instance) (value) (setf CommonLabels.jcell_instance value))

(defun CommonLabels.jnew_0 ()
  (let ((this (make-instance 'CommonLabels)))
    (setf (slot-value this 'f_WIDTH_LABEL) " Width: ")
    (setf (slot-value this 'f_HEIGHT_LABEL) " Height: ")
    (setf (slot-value this 'f_END_LABEL) "End: ")
    (setf (slot-value this 'f_TOTAL_LABEL) "Total: ")
    (setf (slot-value this 'f_INDEX_LABEL) "index: ")
    (setf (slot-value this 'f_START_LABEL) "Start: ")
    (setf (slot-value this 'f_COMMAND_LABEL) "Command: ")
    (setf (slot-value this 'f_NAME_LABEL) "Name: ")
    (setf (slot-value this 'f_START) (slot-value this 'f_START_LABEL))
    (setf (slot-value this 'f_ELAPSED) " Elapsed: ")
    (setf (slot-value this 'f_CURRENT) " Current: ")
    (setf (slot-value this 'f_NEXT) "Next")
    (setf (slot-value this 'f_ITEM_LABEL) "Item: ")
    (setf (slot-value this 'f_RESULT_) "Result: ")
    (setf (slot-value this 'f_COLON_SEP) ": ")
    this))

    
(defun CommonLabels.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CommonLabels.jstatic_instance)))))



