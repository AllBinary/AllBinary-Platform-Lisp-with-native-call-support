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
;;;; package org.allbinary.game.identification

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GroupCommonFactory (JObject)
  ((f_ID :initform nil)
   (f_GROUP_NAME_LABEL :initform nil)
   (f_ID_LABEL :initform nil)
   (f_ADDING_LABEL :initform nil)
   (f_TO_LABEL :initform nil)))

(defvar GroupCommonFactory.jcell_instance :jnone)
(defun GroupCommonFactory.jstatic_instance ()
  (when (eq GroupCommonFactory.jcell_instance :jnone) (setf GroupCommonFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  GroupCommonFactory.jcell_instance)
(defun (setf GroupCommonFactory.jstatic_instance) (value) (setf GroupCommonFactory.jcell_instance value))

(defun GroupCommonFactory.jnew_0 ()
  (let ((this (make-instance 'GroupCommonFactory)))
    (setf (slot-value this 'f_ID) (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 10))
    (setf (slot-value this 'f_GROUP_NAME_LABEL) "Group Name: ")
    (setf (slot-value this 'f_ID_LABEL) " Id: ")
    (setf (slot-value this 'f_ADDING_LABEL) "Adding: ")
    (setf (slot-value this 'f_TO_LABEL) " to: ")
    this))

    
(defun GroupCommonFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (GroupCommonFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (GroupCommonFactory.jstatic_instance) (GroupCommonFactory.jnew_0))))
        (return-from jreturn (GroupCommonFactory.jstatic_instance)))))



