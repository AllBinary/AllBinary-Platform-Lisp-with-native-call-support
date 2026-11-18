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
;;;; package org.allbinary.graphics.displayable.command

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MyCommandsFactory (JObject)
  ((f_NO_COMMAND :initform nil)
   (f_GAUGE_CHANGE :initform nil)
   (f_SET_DISPLAYABLE :initform nil)
   (f_PAUSE_COMMAND :initform nil)
   (f_RESUME_COMMAND :initform nil)))

(defvar MyCommandsFactory.jcell_instance :jnone)
(defun MyCommandsFactory.jstatic_instance ()
  (when (eq MyCommandsFactory.jcell_instance :jnone) (setf MyCommandsFactory.jcell_instance (MyCommandsFactory.jnew_0)))
  MyCommandsFactory.jcell_instance)
(defun (setf MyCommandsFactory.jstatic_instance) (value) (setf MyCommandsFactory.jcell_instance value))

    
(defun MyCommandsFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MyCommandsFactory.jstatic_instance)))))

    
(defun MyCommandsFactory.jnew_0 ()
  (let ((this (make-instance 'MyCommandsFactory)))
    (setf (slot-value this 'f_NO_COMMAND) (Command.jnew_4 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (JR.i32 (- 1)) (JR.i32 (- 1))))
    (setf (slot-value this 'f_GAUGE_CHANGE) (Command.jnew_4 "GAUGE_CHANGE" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_ITEM) 1))
    (setf (slot-value this 'f_SET_DISPLAYABLE) (Command.jnew_4 "Display" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 2))
    (setf (slot-value this 'f_PAUSE_COMMAND) (Command.jnew_4 "Pause" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 0))
    (setf (slot-value this 'f_RESUME_COMMAND) (Command.jnew_4 "Resume" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 0))
  (let ()
    (block jreturn nil))
    this))



