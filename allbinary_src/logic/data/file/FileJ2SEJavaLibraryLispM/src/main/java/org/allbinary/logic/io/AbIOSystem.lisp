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
;;;; package org.allbinary.logic.io

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AbIOSystem (JObject)
  ((f_type :initform nil)))

(defvar AbIOSystem.jcell_instance :jnone)
(defun AbIOSystem.jstatic_instance ()
  (when (eq AbIOSystem.jcell_instance :jnone) (setf AbIOSystem.jcell_instance (AbIOSystem.jnew_0)))
  AbIOSystem.jcell_instance)
(defun (setf AbIOSystem.jstatic_instance) (value) (setf AbIOSystem.jcell_instance value))

(defun AbIOSystem.jnew_0 ()
  (let ((this (make-instance 'AbIOSystem)))
    (setf (slot-value this 'f_type) "java.io")
    this))

    
(defun AbIOSystem.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AbIOSystem.jstatic_instance)))))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this AbIOSystem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_type)))))

    
(unless (fboundp 'jm_isType_1) (defgeneric jm_isType_1 (this p1)))
(defmethod jm_isType_1 ((this AbIOSystem) _type)
  (declare (ignorable this _type))
  (let ()
    (block jreturn
        (if (eq (JR.compareTo (slot-value this 'f_type) _type) 0)
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))



