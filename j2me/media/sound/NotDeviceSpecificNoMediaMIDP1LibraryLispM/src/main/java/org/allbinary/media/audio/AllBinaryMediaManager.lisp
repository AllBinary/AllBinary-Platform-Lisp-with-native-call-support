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

;NotDeviceSpecificNoMediaMIDP1Library
(defclass AllBinaryMediaManager (JObject)
  ())

(defvar AllBinaryMediaManager.jcell_THIS :jnone)
(defun AllBinaryMediaManager.jstatic_THIS ()
  (when (eq AllBinaryMediaManager.jcell_THIS :jnone) (setf AllBinaryMediaManager.jcell_THIS "AllBinaryMediaManagerNoMediaMIDP1"))
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

    
(defun AllBinaryMediaManager.jm_createPlayerFromInputStream_2 (_stream _type)
  (declare (ignorable _stream _type))
  (let (_logUtil _commonString)
  (declare (ignorable _logUtil _commonString))
    (block jreturn
        (setf _logUtil (LogUtil.jm_getInstance_0))
        (setf _commonString (CommonStrings.jm_getInstance_0))
        (jm_putF_3 _logUtil (slot-value _commonString 'f_START) (AllBinaryMediaManager.jstatic_THIS) "creatPlayer(InputStream)")
        (return-from jreturn (NoPlayer.jstatic_NO_PLAYER)))))

    
(defun AllBinaryMediaManager.jm_createPlayer_1 (_locator)
  (declare (ignorable _locator))
  (let (_logUtil _commonString)
  (declare (ignorable _logUtil _commonString))
    (block jreturn
        (setf _logUtil (LogUtil.jm_getInstance_0))
        (setf _commonString (CommonStrings.jm_getInstance_0))
        (jm_putF_3 _logUtil (slot-value _commonString 'f_START) (AllBinaryMediaManager.jstatic_THIS) "creatPlayer(locator)")
        (return-from jreturn (NoPlayer.jstatic_NO_PLAYER)))))

    
(defun AllBinaryMediaManager.jm_playTone_3 (_frequency _time _volume)
  (declare (ignorable _frequency _time _volume))
  (let ()
    (block jreturn nil)))

    
(defun AllBinaryMediaManager.jm_getSupportedContentTypes_1 (_protocol)
  (declare (ignorable _protocol))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getArrayInstance_0 (StringUtil.jm_getInstance_0))))))

    
(defun AllBinaryMediaManager.jm_getSupportedProtocols_1 (_content_type)
  (declare (ignorable _content_type))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getArrayInstance_0 (StringUtil.jm_getInstance_0))))))



