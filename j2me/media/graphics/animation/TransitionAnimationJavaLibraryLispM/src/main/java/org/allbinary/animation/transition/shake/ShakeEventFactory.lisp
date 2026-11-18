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
;;;; package org.allbinary.animation.transition.shake

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ShakeEventFactory (JObject)
  ((f_MICRO :initform nil)
   (f_SMALL :initform nil)
   (f_MEDIUM :initform nil)
   (f_LARGE :initform nil)))

(defvar ShakeEventFactory.jcell_instance :jnone)
(defun ShakeEventFactory.jstatic_instance ()
  (when (eq ShakeEventFactory.jcell_instance :jnone) (setf ShakeEventFactory.jcell_instance (ShakeEventFactory.jnew_0)))
  ShakeEventFactory.jcell_instance)
(defun (setf ShakeEventFactory.jstatic_instance) (value) (setf ShakeEventFactory.jcell_instance value))

(defun ShakeEventFactory.jnew_0 ()
  (let ((this (make-instance 'ShakeEventFactory)))
    (setf (slot-value this 'f_MICRO) (ShakeEvent.jnew_0))
    (setf (slot-value this 'f_SMALL) (ShakeEvent.jnew_0))
    (setf (slot-value this 'f_MEDIUM) (ShakeEvent.jnew_0))
    (setf (slot-value this 'f_LARGE) (ShakeEvent.jnew_0))
    this))

    
(defun ShakeEventFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ShakeEventFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this ShakeEventFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



