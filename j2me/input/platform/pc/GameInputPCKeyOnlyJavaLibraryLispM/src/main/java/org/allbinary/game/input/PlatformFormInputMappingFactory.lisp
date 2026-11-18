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

(defclass PlatformFormInputMappingFactory (JObject)
  ((f_logUtil :initform nil)
   (f_inputToGameKeyMapping :initform nil)))

(defvar PlatformFormInputMappingFactory.jcell_instance :jnone)
(defun PlatformFormInputMappingFactory.jstatic_instance ()
  (when (eq PlatformFormInputMappingFactory.jcell_instance :jnone) (setf PlatformFormInputMappingFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  PlatformFormInputMappingFactory.jcell_instance)
(defun (setf PlatformFormInputMappingFactory.jstatic_instance) (value) (setf PlatformFormInputMappingFactory.jcell_instance value))

(defun PlatformFormInputMappingFactory.jnew_0 ()
  (let ((this (make-instance 'PlatformFormInputMappingFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_inputToGameKeyMapping) (InputToGameKeyMapping.jm_getNullInstance_0))
    this))

    
(defun PlatformFormInputMappingFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (PlatformFormInputMappingFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (PlatformFormInputMappingFactory.jstatic_instance) (PlatformFormInputMappingFactory.jnew_0))))
        (return-from jreturn (PlatformFormInputMappingFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getOrCreate_0) (defgeneric jm_getOrCreate_0 (this)))
(defmethod jm_getOrCreate_0 ((this PlatformFormInputMappingFactory))
  (declare (ignorable this))
  (let (_pcKeyFactory _inputToGameKeyMapping _gameKeyFactory _commonStrings)
  (declare (ignorable _pcKeyFactory _inputToGameKeyMapping _gameKeyFactory _commonStrings))
    (block jreturn
        (handler-case (progn
            (if (eq (slot-value this 'f_inputToGameKeyMapping) (InputToGameKeyMapping.jm_getNullInstance_0))
                (progn
                (setf _pcKeyFactory (PCKeyFactory.jm_getInstance_0))
                (setf _inputToGameKeyMapping (InputToGameKeyMapping.jnew_0))
                (setf _gameKeyFactory (GameKeyFactory.jm_getInstance_0))
                (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_UP) (slot-value _pcKeyFactory 'f_DPAD_UP))
                (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_DOWN) (slot-value _pcKeyFactory 'f_DPAD_DOWN))
                (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_LEFT) (slot-value _pcKeyFactory 'f_DPAD_LEFT))
                (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_RIGHT) (slot-value _pcKeyFactory 'f_DPAD_RIGHT))
                (jm_add_2 _inputToGameKeyMapping (slot-value _gameKeyFactory 'f_KEY_NUM1) (slot-value _pcKeyFactory 'f_ENTER))
                (setf (slot-value this 'f_inputToGameKeyMapping) _inputToGameKeyMapping))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_GET_INSTANCE) _e)))
        (return-from jreturn (slot-value this 'f_inputToGameKeyMapping)))))



