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
;;;; package org.allbinary.audio

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AudioContentTypeDataFactory (JObject)
  ((f_MIME_AUDIO_TONE :initform nil)
   (f_MIME_AUDIO_AMR :initform nil)
   (f_MIME_AUDIO_AMR_WB :initform nil)
   (f_MIME_AUDIO_WAV :initform nil)
   (f_MIME_AUDIO_MIDI :initform nil)
   (f_MIME_AUDIO_SP_MIDI :initform nil)))

(defvar AudioContentTypeDataFactory.jcell_instance :jnone)
(defun AudioContentTypeDataFactory.jstatic_instance ()
  (when (eq AudioContentTypeDataFactory.jcell_instance :jnone) (setf AudioContentTypeDataFactory.jcell_instance (AudioContentTypeDataFactory.jnew_0)))
  AudioContentTypeDataFactory.jcell_instance)
(defun (setf AudioContentTypeDataFactory.jstatic_instance) (value) (setf AudioContentTypeDataFactory.jcell_instance value))

    
(defun AudioContentTypeDataFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AudioContentTypeDataFactory.jstatic_instance)))))

    
(defun AudioContentTypeDataFactory.jnew_0 ()
  (let ((this (make-instance 'AudioContentTypeDataFactory)))
    (setf (slot-value this 'f_MIME_AUDIO_TONE) (AudioContentTypeData.jnew_1 "audio/x-tone-seq"))
    (setf (slot-value this 'f_MIME_AUDIO_AMR) (AudioContentTypeData.jnew_1 "audio/amr"))
    (setf (slot-value this 'f_MIME_AUDIO_AMR_WB) (AudioContentTypeData.jnew_1 "audio/amr-wb"))
    (setf (slot-value this 'f_MIME_AUDIO_WAV) (AudioContentTypeData.jnew_1 "audio/x-wav"))
    (setf (slot-value this 'f_MIME_AUDIO_MIDI) (AudioContentTypeData.jnew_1 "audio/midi"))
    (setf (slot-value this 'f_MIME_AUDIO_SP_MIDI) (AudioContentTypeData.jnew_1 "audio/sp-midi"))
  (let ()
    (block jreturn nil))
    this))



