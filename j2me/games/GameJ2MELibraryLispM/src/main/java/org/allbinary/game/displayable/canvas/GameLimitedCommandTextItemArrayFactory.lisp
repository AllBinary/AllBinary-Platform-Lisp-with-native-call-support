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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameLimitedCommandTextItemArrayFactory (JObject)
  ((f_commandTextItemArrayFactory :initform nil)))

(defvar GameLimitedCommandTextItemArrayFactory.jcell_instance :jnone)
(defun GameLimitedCommandTextItemArrayFactory.jstatic_instance ()
  (when (eq GameLimitedCommandTextItemArrayFactory.jcell_instance :jnone) (setf GameLimitedCommandTextItemArrayFactory.jcell_instance (GameLimitedCommandTextItemArrayFactory.jnew_0)))
  GameLimitedCommandTextItemArrayFactory.jcell_instance)
(defun (setf GameLimitedCommandTextItemArrayFactory.jstatic_instance) (value) (setf GameLimitedCommandTextItemArrayFactory.jcell_instance value))

(defun GameLimitedCommandTextItemArrayFactory.jnew_0 ()
  (let ((this (make-instance 'GameLimitedCommandTextItemArrayFactory)))
    (setf (slot-value this 'f_commandTextItemArrayFactory) (CommandTextItemArrayFactory.jnew_1 (LimitCommandsVisitor.jnew_0)))
    this))

    
(defun GameLimitedCommandTextItemArrayFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameLimitedCommandTextItemArrayFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getCommandTextItemArrayFactory_0) (defgeneric jm_getCommandTextItemArrayFactory_0 (this)))
(defmethod jm_getCommandTextItemArrayFactory_0 ((this GameLimitedCommandTextItemArrayFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_commandTextItemArrayFactory)))))



