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

(defclass AllBinaryMediaManagerShutdown (JObject)
  ())

(defvar AllBinaryMediaManagerShutdown.jcell_instance :jnone)
(defun AllBinaryMediaManagerShutdown.jstatic_instance ()
  (when (eq AllBinaryMediaManagerShutdown.jcell_instance :jnone) (setf AllBinaryMediaManagerShutdown.jcell_instance (AllBinaryMediaManagerShutdown.jnew_0)))
  AllBinaryMediaManagerShutdown.jcell_instance)
(defun (setf AllBinaryMediaManagerShutdown.jstatic_instance) (value) (setf AllBinaryMediaManagerShutdown.jcell_instance value))

(defun AllBinaryMediaManagerShutdown.jnew_0 ()
  (let ((this (make-instance 'AllBinaryMediaManagerShutdown)))
    this))

    
(defun AllBinaryMediaManagerShutdown.jm_shutdown_1 (_soundsFactoryInterface)
  (declare (ignorable _soundsFactoryInterface))
  (let (_logUtil _commonStrings)
  (declare (ignorable _logUtil _commonStrings))
    (block jreturn
        (setf _logUtil (LogUtil.jm_getInstance_0))
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (jm_putF_3 _logUtil (slot-value _commonStrings 'f_START) (AllBinaryMediaManagerShutdown.jstatic_instance) "shutdown")
        (AllBinaryMediaManager.jm_shutdown_1 _soundsFactoryInterface))))



