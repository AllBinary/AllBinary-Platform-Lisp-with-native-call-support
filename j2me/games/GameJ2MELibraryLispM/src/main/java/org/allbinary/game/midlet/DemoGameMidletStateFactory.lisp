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
;;;; package org.allbinary.game.midlet

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DemoGameMidletStateFactory (JObject)
  ((f_NONE :initform nil)
   (f_START_DEMO :initform nil)
   (f_START_GAME :initform nil)
   (f_START_INPUT_MAPPING :initform nil)))

(defvar DemoGameMidletStateFactory.jcell_STATE :jnone)
(defun DemoGameMidletStateFactory.jstatic_STATE ()
  (when (eq DemoGameMidletStateFactory.jcell_STATE :jnone) (setf DemoGameMidletStateFactory.jcell_STATE (DemoGameMidletStateFactory.jnew_0)))
  DemoGameMidletStateFactory.jcell_STATE)
(defun (setf DemoGameMidletStateFactory.jstatic_STATE) (value) (setf DemoGameMidletStateFactory.jcell_STATE value))

    
(defun DemoGameMidletStateFactory.jnew_0 ()
  (let ((this (make-instance 'DemoGameMidletStateFactory)))
    (setf (slot-value this 'f_NONE) (DemoGameMidletState.jnew_0))
    (setf (slot-value this 'f_START_DEMO) (DemoGameMidletState.jnew_0))
    (setf (slot-value this 'f_START_GAME) (DemoGameMidletState.jnew_0))
    (setf (slot-value this 'f_START_INPUT_MAPPING) (DemoGameMidletState.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(defun DemoGameMidletStateFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DemoGameMidletStateFactory.jstatic_STATE)))))



