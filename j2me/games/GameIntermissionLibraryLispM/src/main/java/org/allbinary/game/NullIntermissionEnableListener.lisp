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
;;;; package org.allbinary.game

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullIntermissionEnableListener (JObject)
  ())

(defvar NullIntermissionEnableListener.jcell_SINGLETON :jnone)
(defun NullIntermissionEnableListener.jstatic_SINGLETON ()
  (when (eq NullIntermissionEnableListener.jcell_SINGLETON :jnone) (setf NullIntermissionEnableListener.jcell_SINGLETON (NullIntermissionEnableListener.jnew_0)))
  NullIntermissionEnableListener.jcell_SINGLETON)
(defun (setf NullIntermissionEnableListener.jstatic_SINGLETON) (value) (setf NullIntermissionEnableListener.jcell_SINGLETON value))

    
(defun NullIntermissionEnableListener.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullIntermissionEnableListener.jstatic_SINGLETON)))))

    
(defun NullIntermissionEnableListener.jnew_0 ()
  (let ((this (make-instance 'NullIntermissionEnableListener)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_notifyIntermission_1) (defgeneric jm_notifyIntermission_1 (this p1)))
(defmethod jm_notifyIntermission_1 ((this NullIntermissionEnableListener) _enable)
  (declare (ignorable this _enable))
  (let ()
    (block jreturn nil)))



