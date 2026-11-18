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
;;;; package org.allbinary.game.input.mapping.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass InputMappingEvent (AllBinaryEventObject)
  ((f_inputToGameKeyMapping :initform nil)))

    
(defun InputMappingEvent.jnew_1 (_anyType)
  (declare (ignorable _anyType))
  (let ((this (make-instance 'InputMappingEvent)))
    (setf (slot-value this 'f_inputToGameKeyMapping) (InputToGameKeyMapping.jm_getNullInstance_0))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_setInputToGameKeyMapping_1) (defgeneric jm_setInputToGameKeyMapping_1 (this p1)))
(defmethod jm_setInputToGameKeyMapping_1 ((this InputMappingEvent) _inputToGameKeyMapping)
  (declare (ignorable this _inputToGameKeyMapping))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_inputToGameKeyMapping) _inputToGameKeyMapping))))

    
(unless (fboundp 'jm_getInputToGameKeyMapping_0) (defgeneric jm_getInputToGameKeyMapping_0 (this)))
(defmethod jm_getInputToGameKeyMapping_0 ((this InputMappingEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_inputToGameKeyMapping)))))



