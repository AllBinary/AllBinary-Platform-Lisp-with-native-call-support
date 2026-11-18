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

(defclass NotificationUtil (JObject)
  ())

(defvar NotificationUtil.jcell_SINGLETON :jnone)
(defun NotificationUtil.jstatic_SINGLETON ()
  (when (eq NotificationUtil.jcell_SINGLETON :jnone) (setf NotificationUtil.jcell_SINGLETON (NotificationUtil.jnew_0)))
  NotificationUtil.jcell_SINGLETON)
(defun (setf NotificationUtil.jstatic_SINGLETON) (value) (setf NotificationUtil.jcell_SINGLETON value))

(defun NotificationUtil.jnew_0 ()
  (let ((this (make-instance 'NotificationUtil)))
    this))

    
(defun NotificationUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NotificationUtil.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_notify_3) (defgeneric jm_notify_3 (this p1 p2 p3)))
(defmethod jm_notify_3 ((this NotificationUtil) _command _resource _message)
  (declare (ignorable this _command _resource _message))
  (let ()
    (block jreturn nil)))



