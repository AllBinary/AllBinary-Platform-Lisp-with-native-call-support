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
;;;; package org.allbinary.logic.java.bool

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BooleanFactory (JObject)
  ((f_TRUE :initform nil)
   (f_FALSE :initform nil)
   (f_TRUE_STRING :initform nil)
   (f_FALSE_STRING :initform nil)
   (f_YES :initform nil)
   (f_NO :initform nil)))

(defvar BooleanFactory.jcell_instance :jnone)
(defun BooleanFactory.jstatic_instance ()
  (when (eq BooleanFactory.jcell_instance :jnone) (setf BooleanFactory.jcell_instance (BooleanFactory.jnew_0)))
  BooleanFactory.jcell_instance)
(defun (setf BooleanFactory.jstatic_instance) (value) (setf BooleanFactory.jcell_instance value))

(defun BooleanFactory.jnew_0 ()
  (let ((this (make-instance 'BooleanFactory)))
    (setf (slot-value this 'f_TRUE) t)
    (setf (slot-value this 'f_FALSE) nil)
    (setf (slot-value this 'f_TRUE_STRING) (jm_toString_0 (slot-value this 'f_TRUE)))
    (setf (slot-value this 'f_FALSE_STRING) (jm_toString_0 (slot-value this 'f_FALSE)))
    (setf (slot-value this 'f_YES) "yes")
    (setf (slot-value this 'f_NO) "no")
    this))

    
(defun BooleanFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BooleanFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_toStringb_1) (defgeneric jm_toStringb_1 (this p1)))
(defmethod jm_toStringb_1 ((this BooleanFactory) _bool)
  (declare (ignorable this _bool))
  (let ()
    (block jreturn
        (if _bool
            (progn
            (return-from jreturn (slot-value this 'f_TRUE_STRING)))
            (progn
            (return-from jreturn (slot-value this 'f_FALSE_STRING)))))))



