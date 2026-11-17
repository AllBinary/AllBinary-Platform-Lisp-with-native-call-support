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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ScreenListenerHandler (JObject)
  ((f_screenListenerInterface :initform nil)))

(defvar ScreenListenerHandler.jcell_instance :jnone)
(defun ScreenListenerHandler.jstatic_instance ()
  (when (eq ScreenListenerHandler.jcell_instance :jnone) (setf ScreenListenerHandler.jcell_instance (ScreenListenerHandler.jnew_0)))
  ScreenListenerHandler.jcell_instance)

(defun ScreenListenerHandler.jnew_0 ()
  (let ((this (make-instance 'ScreenListenerHandler)))
    (setf (slot-value this 'f_screenListenerInterface) (ScreenEmptyListener.jnew_0))
    this))

    
(defun ScreenListenerHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ScreenListenerHandler.jstatic_instance)))))

    
(unless (fboundp 'jm_setListener_1) (defgeneric jm_setListener_1 (this p1)))
(defmethod jm_setListener_1 ((this ScreenListenerHandler) _screenListenerInterface)
  (declare (ignorable this _screenListenerInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_screenListenerInterface) _screenListenerInterface))))

    
(unless (fboundp 'jm_fireWithState_1) (defgeneric jm_fireWithState_1 (this p1)))
(defmethod jm_fireWithState_1 ((this ScreenListenerHandler) _isFullScreen)
  (declare (ignorable this _isFullScreen))
  (let ()
    (block jreturn
        (jm_onFullScreen_1 (slot-value this 'f_screenListenerInterface) _isFullScreen))))

    
(unless (fboundp 'jm_fire_0) (defgeneric jm_fire_0 (this)))
(defmethod jm_fire_0 ((this ScreenListenerHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_onFullScreenDisplay_0 (slot-value this 'f_screenListenerInterface)))))



