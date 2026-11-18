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
;;;; package org.allbinary.game.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SWTUtil (JObject)
  ())

(defvar SWTUtil.jcell_isSWT :jnone)
(defun SWTUtil.jstatic_isSWT ()
  (when (eq SWTUtil.jcell_isSWT :jnone) (setf SWTUtil.jcell_isSWT nil))
  SWTUtil.jcell_isSWT)
(defun (setf SWTUtil.jstatic_isSWT) (value) (setf SWTUtil.jcell_isSWT value))

(defvar SWTUtil.jcell_SWT :jnone)
(defun SWTUtil.jstatic_SWT ()
  (when (eq SWTUtil.jcell_SWT :jnone) (setf SWTUtil.jcell_SWT "SWT"))
  SWTUtil.jcell_SWT)
(defun (setf SWTUtil.jstatic_SWT) (value) (setf SWTUtil.jcell_SWT value))

(defun SWTUtil.jnew_0 ()
  (let ((this (make-instance 'SWTUtil)))
    this))



