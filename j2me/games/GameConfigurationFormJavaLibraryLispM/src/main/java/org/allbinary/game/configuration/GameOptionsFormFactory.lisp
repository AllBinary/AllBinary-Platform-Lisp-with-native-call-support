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
;;;; package org.allbinary.game.configuration

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameOptionsFormFactory (JObject)
  ((f_logUtil :initform nil)))

(defvar GameOptionsFormFactory.jcell_instance :jnone)
(defun GameOptionsFormFactory.jstatic_instance ()
  (when (eq GameOptionsFormFactory.jcell_instance :jnone) (setf GameOptionsFormFactory.jcell_instance (GameOptionsFormFactory.jnew_0)))
  GameOptionsFormFactory.jcell_instance)
(defun (setf GameOptionsFormFactory.jstatic_instance) (value) (setf GameOptionsFormFactory.jcell_instance value))

    
(defun GameOptionsFormFactory.jnew_0 ()
  (let ((this (make-instance 'GameOptionsFormFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(defun GameOptionsFormFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameOptionsFormFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_init_4) (defgeneric jm_init_4 (this p1 p2 p3 p4)))
(defmethod jm_init_4 ((this GameOptionsFormFactory) _commandListener _title _backgrounBasicColor _foregroundBasicColor)
  (declare (ignorable this _commandListener _title _backgrounBasicColor _foregroundBasicColor))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (return-from jreturn (GameOptionsForm.jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_INIT) _e)
            (return-from jreturn (CommandForm.jm_getNullCommandForm_0)))))))



