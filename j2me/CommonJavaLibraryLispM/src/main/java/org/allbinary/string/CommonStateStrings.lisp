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

(defclass CommonStateStrings (JObject)
  ((f_CONTEXT :initform nil)
   (f_FINISH :initform nil)
   (f_CREATE :initform nil)
   (f_START :initform nil)
   (f_RESTART :initform nil)
   (f_RESUME :initform nil)
   (f_PAUSE :initform nil)
   (f_STOP :initform nil)
   (f_DESTROY :initform nil)
   (f_BIND :initform nil)
   (f_ON_SAVE_INSTANCE_STATE :initform nil)
   (f_ON_START_COMMAND :initform nil)))

(defvar CommonStateStrings.jcell_instance :jnone)
(defun CommonStateStrings.jstatic_instance ()
  (when (eq CommonStateStrings.jcell_instance :jnone) (setf CommonStateStrings.jcell_instance (CommonStateStrings.jnew_0)))
  CommonStateStrings.jcell_instance)

(defun CommonStateStrings.jnew_0 ()
  (let ((this (make-instance 'CommonStateStrings)))
    (setf (slot-value this 'f_CONTEXT) "Context: ")
    (setf (slot-value this 'f_FINISH) "finish")
    (setf (slot-value this 'f_CREATE) "onCreate")
    (setf (slot-value this 'f_START) "onStart")
    (setf (slot-value this 'f_RESTART) "onRestart")
    (setf (slot-value this 'f_RESUME) "onResume")
    (setf (slot-value this 'f_PAUSE) "onPause")
    (setf (slot-value this 'f_STOP) "onStop")
    (setf (slot-value this 'f_DESTROY) "onDestroy")
    (setf (slot-value this 'f_BIND) "onBind")
    (setf (slot-value this 'f_ON_SAVE_INSTANCE_STATE) "onSaveInstanceState")
    (setf (slot-value this 'f_ON_START_COMMAND) "onStartCommand")
    this))

    
(defun CommonStateStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CommonStateStrings.jstatic_instance)))))



