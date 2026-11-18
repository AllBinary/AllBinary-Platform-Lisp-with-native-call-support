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
;;;; package org.allbinary.media.audio

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NoPlayer (BasicPlayer)
  ())

(defvar NoPlayer.jcell_NO_PLAYER :jnone)
(defun NoPlayer.jstatic_NO_PLAYER ()
  (when (eq NoPlayer.jcell_NO_PLAYER :jnone) (setf NoPlayer.jcell_NO_PLAYER (NoPlayer.jnew_0)))
  NoPlayer.jcell_NO_PLAYER)
(defun (setf NoPlayer.jstatic_NO_PLAYER) (value) (setf NoPlayer.jcell_NO_PLAYER value))

    
(defun NoPlayer.jnew_0 ()
  (let ((this (make-instance 'NoPlayer)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this NoPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getContentType_0) (defgeneric jm_getContentType_0 (this)))
(defmethod jm_getContentType_0 ((this NoPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_NULL_STRING)))))

    
(unless (fboundp 'jm_getControl_1) (defgeneric jm_getControl_1 (this p1)))
(defmethod jm_getControl_1 ((this NoPlayer) _controlType)
  (declare (ignorable this _controlType))
  (let ()
    (block jreturn
        (return-from jreturn (NullControl.jnew_0)))))

    
(unless (fboundp 'jm_getControls_0) (defgeneric jm_getControls_0 (this)))
(defmethod jm_getControls_0 ((this NoPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.newArray nil 0)))))



