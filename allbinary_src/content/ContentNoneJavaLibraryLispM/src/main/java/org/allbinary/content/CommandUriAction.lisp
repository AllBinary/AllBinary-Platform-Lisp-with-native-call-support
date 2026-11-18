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
;;;; package org.allbinary.content

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CommandUriAction (JObject)
  ((f_logUtil :initform nil)))

(defvar CommandUriAction.jcell_instance :jnone)
(defun CommandUriAction.jstatic_instance ()
  (when (eq CommandUriAction.jcell_instance :jnone) (setf CommandUriAction.jcell_instance (CommandUriAction.jnew_0)))
  CommandUriAction.jcell_instance)
(defun (setf CommandUriAction.jstatic_instance) (value) (setf CommandUriAction.jcell_instance value))

(defun CommandUriAction.jnew_0 ()
  (let ((this (make-instance 'CommandUriAction)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    this))

    
(defun CommandUriAction.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CommandUriAction.jstatic_instance)))))

    
(unless (fboundp 'jm_add_2) (defgeneric jm_add_2 (this p1 p2)))
(defmethod jm_add_2 ((this CommandUriAction) _command _url)
  (declare (ignorable this _command _url))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this CommandUriAction) _command)
  (declare (ignorable this _command))
  (let ()
    (block jreturn nil)))



