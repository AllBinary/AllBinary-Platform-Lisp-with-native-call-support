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

(defclass GameMode (JObject)
  ((f_name :initform nil)))

(defvar GameMode.jcell_NONE :jnone)
(defun GameMode.jstatic_NONE ()
  (when (eq GameMode.jcell_NONE :jnone) (setf GameMode.jcell_NONE (GameMode.jnew_1 (slot-value (StringUtil.jm_getInstance_0) 'f_NULL_STRING))))
  GameMode.jcell_NONE)
(defun (setf GameMode.jstatic_NONE) (value) (setf GameMode.jcell_NONE value))

(defvar GameMode.jcell_SERVER :jnone)
(defun GameMode.jstatic_SERVER ()
  (when (eq GameMode.jcell_SERVER :jnone) (setf GameMode.jcell_SERVER (GameMode.jnew_1 "Server")))
  GameMode.jcell_SERVER)
(defun (setf GameMode.jstatic_SERVER) (value) (setf GameMode.jcell_SERVER value))

(defvar GameMode.jcell_CLIENT :jnone)
(defun GameMode.jstatic_CLIENT ()
  (when (eq GameMode.jcell_CLIENT :jnone) (setf GameMode.jcell_CLIENT (GameMode.jnew_1 "Client")))
  GameMode.jcell_CLIENT)
(defun (setf GameMode.jstatic_CLIENT) (value) (setf GameMode.jcell_CLIENT value))

    
(defun GameMode.jnew_1 (_name)
  (declare (ignorable _name))
  (let ((this (make-instance 'GameMode)))
    (setf (slot-value this 'f_name) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
  (let ()
    (block jreturn
        (jm_setName_1 this _name)))
    this))

    
(unless (fboundp 'jm_setName_1) (defgeneric jm_setName_1 (this p1)))
(defmethod jm_setName_1 ((this GameMode) _name)
  (declare (ignorable this _name))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _name))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this GameMode))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this GameMode))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getName_0 this)))))



