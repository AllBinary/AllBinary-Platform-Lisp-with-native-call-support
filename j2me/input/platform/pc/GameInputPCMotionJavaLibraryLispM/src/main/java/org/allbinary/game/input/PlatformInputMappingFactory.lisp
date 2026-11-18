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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PlatformInputMappingFactory (JObject)
  ((f_logUtil :initform nil)
   (f_inputToGameKeyMapping :initform nil)))

(defvar PlatformInputMappingFactory.jcell_instance :jnone)
(defun PlatformInputMappingFactory.jstatic_instance ()
  (when (eq PlatformInputMappingFactory.jcell_instance :jnone) (setf PlatformInputMappingFactory.jcell_instance (PlatformInputMappingFactory.jnew_0)))
  PlatformInputMappingFactory.jcell_instance)
(defun (setf PlatformInputMappingFactory.jstatic_instance) (value) (setf PlatformInputMappingFactory.jcell_instance value))

(defun PlatformInputMappingFactory.jnew_0 ()
  (let ((this (make-instance 'PlatformInputMappingFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_inputToGameKeyMapping) (PersistentInputMapping.jm_getNullInstance_0))
    this))

    
(defun PlatformInputMappingFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PlatformInputMappingFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getPersistentInputMappingInstance_0) (defgeneric jm_getPersistentInputMappingInstance_0 (this)))
(defmethod jm_getPersistentInputMappingInstance_0 ((this PlatformInputMappingFactory))
  (declare (ignorable this))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (if (eq (slot-value this 'f_inputToGameKeyMapping) (PersistentInputMapping.jm_getNullInstance_0))
                (progn
                (setf (slot-value this 'f_inputToGameKeyMapping) (MotionLaptopGameInputMapping.jnew_0)))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_GET_INSTANCE) _e)))
        (return-from jreturn (slot-value this 'f_inputToGameKeyMapping)))))



