;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PostGameCommandFactory (JObject)
  ())

(defvar PostGameCommandFactory.jcell_instance :jnone)
(defun PostGameCommandFactory.jstatic_instance ()
  (when (eq PostGameCommandFactory.jcell_instance :jnone) (setf PostGameCommandFactory.jcell_instance (PostGameCommandFactory.jnew_0)))
  PostGameCommandFactory.jcell_instance)
(defun (setf PostGameCommandFactory.jstatic_instance) (value) (setf PostGameCommandFactory.jcell_instance value))

(defun PostGameCommandFactory.jnew_0 ()
  (let ((this (make-instance 'PostGameCommandFactory)))
    this))

    
(defun PostGameCommandFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_addCommands_1) (defgeneric jm_addCommands_1 (this p1)))
(defmethod jm_addCommands_1 ((this PostGameCommandFactory) _canvas)
  (declare (ignorable this _canvas))
  (let ()
    (block jreturn nil)))



