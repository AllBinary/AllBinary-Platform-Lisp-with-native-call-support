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

(defclass DemoLimitedCommandTextItemArrayFactory (JObject)
  ((f_commandTextItemArrayFactory :initform nil)))

(defvar DemoLimitedCommandTextItemArrayFactory.jcell_instance :jnone)
(defun DemoLimitedCommandTextItemArrayFactory.jstatic_instance ()
  (when (eq DemoLimitedCommandTextItemArrayFactory.jcell_instance :jnone) (setf DemoLimitedCommandTextItemArrayFactory.jcell_instance (DemoLimitedCommandTextItemArrayFactory.jnew_0)))
  DemoLimitedCommandTextItemArrayFactory.jcell_instance)
(defun (setf DemoLimitedCommandTextItemArrayFactory.jstatic_instance) (value) (setf DemoLimitedCommandTextItemArrayFactory.jcell_instance value))

(defun DemoLimitedCommandTextItemArrayFactory.jnew_0 ()
  (let ((this (make-instance 'DemoLimitedCommandTextItemArrayFactory)))
    (setf (slot-value this 'f_commandTextItemArrayFactory) (CommandTextItemArrayFactory.jnew_1 (LimitCommandsVisitor.jnew_0)))
    this))

    
(defun DemoLimitedCommandTextItemArrayFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DemoLimitedCommandTextItemArrayFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getCommandTextItemArrayFactory_0) (defgeneric jm_getCommandTextItemArrayFactory_0 (this)))
(defmethod jm_getCommandTextItemArrayFactory_0 ((this DemoLimitedCommandTextItemArrayFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_commandTextItemArrayFactory)))))



