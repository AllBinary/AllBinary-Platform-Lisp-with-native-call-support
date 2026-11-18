;;;; Generated Code Do Not Modify
;;;; package javax.microedition.lcdui

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullCommandListener (JObject)
  ())

(defvar NullCommandListener.jcell_NULL_COMMAND_LISTENER :jnone)
(defun NullCommandListener.jstatic_NULL_COMMAND_LISTENER ()
  (when (eq NullCommandListener.jcell_NULL_COMMAND_LISTENER :jnone) (setf NullCommandListener.jcell_NULL_COMMAND_LISTENER (NullCommandListener.jnew_0)))
  NullCommandListener.jcell_NULL_COMMAND_LISTENER)
(defun (setf NullCommandListener.jstatic_NULL_COMMAND_LISTENER) (value) (setf NullCommandListener.jcell_NULL_COMMAND_LISTENER value))

(defun NullCommandListener.jnew_0 ()
  (let ((this (make-instance 'NullCommandListener)))
    this))

    
(unless (fboundp 'jm_commandAction_2) (defgeneric jm_commandAction_2 (this p1 p2)))
(defmethod jm_commandAction_2 ((this NullCommandListener) _c _d)
  (declare (ignorable this _c _d))
  (let ()
    (block jreturn nil)))



