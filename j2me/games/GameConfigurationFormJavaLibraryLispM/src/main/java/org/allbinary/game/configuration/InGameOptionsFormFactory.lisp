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

(defclass InGameOptionsFormFactory (JObject)
  ((f_logUtil :initform nil)
   (f_SINGLETON :initform nil)))

(defvar InGameOptionsFormFactory.jcell_instance :jnone)
(defun InGameOptionsFormFactory.jstatic_instance ()
  (when (eq InGameOptionsFormFactory.jcell_instance :jnone) (setf InGameOptionsFormFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  InGameOptionsFormFactory.jcell_instance)
(defun (setf InGameOptionsFormFactory.jstatic_instance) (value) (setf InGameOptionsFormFactory.jcell_instance value))

(defun InGameOptionsFormFactory.jnew_0 ()
  (let ((this (make-instance 'InGameOptionsFormFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_SINGLETON) (CommandForm.jm_getNullCommandForm_0))
    this))

    
(defun InGameOptionsFormFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (InGameOptionsFormFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (InGameOptionsFormFactory.jstatic_instance) (InGameOptionsFormFactory.jnew_0))))
        (return-from jreturn (InGameOptionsFormFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_init_5) (defgeneric jm_init_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_init_5 ((this InGameOptionsFormFactory) _commandListener _initInterface _title _backgrounBasicColor _foregroundBasicColor)
  (declare (ignorable this _commandListener _initInterface _title _backgrounBasicColor _foregroundBasicColor))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (if (eq (slot-value this 'f_SINGLETON) (CommandForm.jm_getNullCommandForm_0))
                (progn
                (jm_init_0 _initInterface)
                (setf (slot-value this 'f_SINGLETON) (InGameOptionsForm.jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor)))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_INIT) _e))))))

    
(unless (fboundp 'jm_get_0) (defgeneric jm_get_0 (this)))
(defmethod jm_get_0 ((this InGameOptionsFormFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_SINGLETON)))))



