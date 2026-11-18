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
;;;; package org.allbinary.logic.util.visitor

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Visitor (JObject)
  ((f_nullUtil :initform nil)))

(defvar Visitor.jcell_instance :jnone)
(defun Visitor.jstatic_instance ()
  (when (eq Visitor.jcell_instance :jnone) (setf Visitor.jcell_instance (Visitor.jnew_0)))
  Visitor.jcell_instance)
(defun (setf Visitor.jstatic_instance) (value) (setf Visitor.jcell_instance value))

(defun Visitor.jnew_0 ()
  (let ((this (make-instance 'Visitor)))
    (setf (slot-value this 'f_nullUtil) (NullUtil.jm_getInstance_0))
    this))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this Visitor) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (slot-value this 'f_nullUtil) 'f_NULL_OBJECT)))))

    
(defun Visitor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (Visitor.jstatic_instance)))))



