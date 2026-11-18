;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2002 AllBinary 
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
;;;; package org.allbinary.graphics.displayable.screen

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CommandForm (Form)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_repaintProcessor :initform nil)
   (f_commandStack :initform nil)))

(defvar CommandForm.jcell_NULL_COMMAND_FORM :jnone)
(defun CommandForm.jstatic_NULL_COMMAND_FORM ()
  (when (eq CommandForm.jcell_NULL_COMMAND_FORM :jnone) (setf CommandForm.jcell_NULL_COMMAND_FORM (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  CommandForm.jcell_NULL_COMMAND_FORM)
(defun (setf CommandForm.jstatic_NULL_COMMAND_FORM) (value) (setf CommandForm.jcell_NULL_COMMAND_FORM value))

    
(defun CommandForm.jm_getNullCommandForm_0 ()
  (let ()
    (block jreturn
        (if (eq (CommandForm.jstatic_NULL_COMMAND_FORM) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (CommandForm.jstatic_NULL_COMMAND_FORM) (CommandForm.jnew_4 (NullCommandListener.jstatic_NULL_COMMAND_LISTENER) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLACK) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE)))))
        (return-from jreturn (CommandForm.jstatic_NULL_COMMAND_FORM)))))

    
(defun CommandForm.jnew_4 (_commandListener _formTitle _backgrounBasicColor _foregroundBasicColor)
  (declare (ignorable _commandListener _formTitle _backgrounBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'CommandForm)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_repaintProcessor) (jm_create_1 (ScreenRepaintProcessorFactory.jm_getInstance_0) this))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_commandStack) (jm_createStack_0 (StdUtil.jm_getInstance_0)))
        (handler-case (progn
            (jm_process_0 (slot-value this 'f_repaintProcessor)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR) _e)))))
    this))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this CommandForm) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_open_0) (defgeneric jm_open_0 (this)))
(defmethod jm_open_0 ((this CommandForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this "open"))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this CommandForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CLOSE)))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this CommandForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_process_0 (slot-value this 'f_repaintProcessor)))))

    
(unless (fboundp 'jm_getSourceId_0) (defgeneric jm_getSourceId_0 (this)))
(defmethod jm_getSourceId_0 ((this CommandForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_addCommand_1) (defgeneric jm_addCommand_1 (this p1)))
(defmethod jm_addCommand_1 ((this CommandForm) _command)
  (declare (ignorable this _command))
  (let ()
    (block jreturn
        (jm_push_1 (slot-value this 'f_commandStack) _command)
        (call-next-method this _command))))

    
(unless (fboundp 'jm_removeAllCommands_0) (defgeneric jm_removeAllCommands_0 (this)))
(defmethod jm_removeAllCommands_0 ((this CommandForm))
  (declare (ignorable this))
  (let (_size _index)
  (declare (ignorable _size _index))
    (block jreturn
        (setf _size (jm_size_0 (slot-value this 'f_commandStack)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_removeCommand_1 this (jm_pop_0 (slot-value this 'f_commandStack))))
                (setf _index (JR.i32 (+ _index 1)))))))))



