;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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

(defclass SoundStrings (JObject)
  ((f_STOP_ALL :initform nil)
   (f_CLOSE_ALL :initform nil)
   (f_SOUND :initform nil)
   (f_INIT_SOUND :initform nil)
   (f_STOPPING_SOUND :initform nil)
   (f_CLOSING_SOUND :initform nil)))

(defvar SoundStrings.jcell_instance :jnone)
(defun SoundStrings.jstatic_instance ()
  (when (eq SoundStrings.jcell_instance :jnone) (setf SoundStrings.jcell_instance (SoundStrings.jnew_0)))
  SoundStrings.jcell_instance)
(defun (setf SoundStrings.jstatic_instance) (value) (setf SoundStrings.jcell_instance value))

(defun SoundStrings.jnew_0 ()
  (let ((this (make-instance 'SoundStrings)))
    (setf (slot-value this 'f_STOP_ALL) "stopAll")
    (setf (slot-value this 'f_CLOSE_ALL) "closeAll")
    (setf (slot-value this 'f_SOUND) " Sound: ")
    (setf (slot-value this 'f_INIT_SOUND) "Initializing Sound: ")
    (setf (slot-value this 'f_STOPPING_SOUND) "Stopping Sound: ")
    (setf (slot-value this 'f_CLOSING_SOUND) "Closing Sound: ")
    this))

    
(defun SoundStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SoundStrings.jstatic_instance)))))



