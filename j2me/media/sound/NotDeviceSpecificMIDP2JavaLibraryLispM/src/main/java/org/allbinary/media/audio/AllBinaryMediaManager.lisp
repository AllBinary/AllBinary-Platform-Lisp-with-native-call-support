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

;NotDeviceSpecificMIDP2JavaLibrary
(defclass AllBinaryMediaManager (JObject)
  ())

(defvar AllBinaryMediaManager.jcell_THIS :jnone)
(defun AllBinaryMediaManager.jstatic_THIS ()
  (when (eq AllBinaryMediaManager.jcell_THIS :jnone) (setf AllBinaryMediaManager.jcell_THIS "AllBinaryMediaManagerNoMIPD2"))
  AllBinaryMediaManager.jcell_THIS)
(defun (setf AllBinaryMediaManager.jstatic_THIS) (value) (setf AllBinaryMediaManager.jcell_THIS value))

    
(defun AllBinaryMediaManager.jnew_0 ()
  (let ((this (make-instance 'AllBinaryMediaManager)))
  (let ()
    (block jreturn nil))
    this))

    
(defun AllBinaryMediaManager.jm_isMuted_0 ()
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(defun AllBinaryMediaManager.jm_setMuted_1 (_aMuted)
  (declare (ignorable _aMuted))
  (let ()
    (block jreturn nil)))

    
(defun AllBinaryMediaManager.jm_update_0 ()
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(defun AllBinaryMediaManager.jm_init_1 (_soundsFactoryInterface)
  (declare (ignorable _soundsFactoryInterface))
  (let (_logUtil _commonString)
  (declare (ignorable _logUtil _commonString))
    (block jreturn
        (setf _logUtil (LogUtil.jm_getInstance_0))
        (setf _commonString (CommonStrings.jm_getInstance_0))
        (jm_putF_3 _logUtil (slot-value _commonString 'f_START) (AllBinaryMediaManager.jstatic_THIS) (slot-value _commonString 'f_INIT))
        (jm_addNormalPortion_2 (ProgressCanvasFactory.jm_getInstance_0) 50 "Media Manager")
        (jm_init_0 (Sounds.jnew_1 _soundsFactoryInterface)))))

    
(defun AllBinaryMediaManager.jm_shutdown_1 (_soundsFactoryInterface)
  (declare (ignorable _soundsFactoryInterface))
  (let ()
    (block jreturn
        (jm_stopAll_0 (Sounds.jnew_1 _soundsFactoryInterface))
        (jm_closeAll_0 (Sounds.jnew_1 _soundsFactoryInterface))
        (jm_gc_0 (TsUtil.jm_getInstance_0)))))

    
(defun AllBinaryMediaManager.jm_createPlayer_1 (_resource)
  (declare (ignorable _resource))
  (let (_inputStream)
  (declare (ignorable _inputStream))
    (block jreturn
        (if (jm_isFeature_1 (Features.jm_getInstance_0) (slot-value (GameFeatureFactory.jm_getInstance_0) 'f_SOUND))
            (progn
            (if (eq (jm_compareTo_2 (TsUtil.jm_getInstance_0) _resource (Manager.jstatic_TONE_DEVICE_LOCATOR)) 0)
                (progn
                (return-from jreturn (Manager.jm_createPlayer_1 _resource)))
                (progn
                (setf _inputStream (jm_getResourceAsStream_1 (ResourceUtil.jm_getInstance_0) _resource))
                (return-from jreturn (jm_createPlayerFromInputStream_2 (MIDPUtil.jm_getInstance_0) _inputStream (jm_getName_0 (slot-value (AudioContentTypeDataFactory.jm_getInstance_0) 'f_MIME_AUDIO_WAV)))))))
            (progn
            (return-from jreturn (NoPlayer.jstatic_NO_PLAYER)))))))

    
(defun AllBinaryMediaManager.jm_playTone_3 (_frequency _time _volume)
  (declare (ignorable _frequency _time _volume))
  (let ()
    (block jreturn
        (if (jm_isFeature_1 (Features.jm_getInstance_0) (slot-value (GameFeatureFactory.jm_getInstance_0) 'f_SOUND))
            (progn
            (Manager.jm_playTone_3 _frequency _time _volume))))))



