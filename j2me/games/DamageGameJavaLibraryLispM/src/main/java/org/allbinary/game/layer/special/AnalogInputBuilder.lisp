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
;;;; package org.allbinary.game.layer.special

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnalogInputBuilder (JObject)
  ())

(defvar AnalogInputBuilder.jcell_instance :jnone)
(defun AnalogInputBuilder.jstatic_instance ()
  (when (eq AnalogInputBuilder.jcell_instance :jnone) (setf AnalogInputBuilder.jcell_instance (AnalogInputBuilder.jnew_0)))
  AnalogInputBuilder.jcell_instance)
(defun (setf AnalogInputBuilder.jstatic_instance) (value) (setf AnalogInputBuilder.jcell_instance value))

(defun AnalogInputBuilder.jnew_0 ()
  (let ((this (make-instance 'AnalogInputBuilder)))
    this))

    
(defun AnalogInputBuilder.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AnalogInputBuilder.jstatic_instance)))))

    
(unless (fboundp 'jm_disable_2) (defgeneric jm_disable_2 (this p1 p2)))
(defmethod jm_disable_2 ((this AnalogInputBuilder) _inputProcessorArray _collidableDestroyableDamageableLayer)
  (declare (ignorable this _inputProcessorArray _collidableDestroyableDamageableLayer))
  (let ()
    (block jreturn
        (setf (aref _inputProcessorArray (Canvas.jstatic_UP)) (SpecialUpGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (setf (aref _inputProcessorArray (Canvas.jstatic_DOWN)) (SpecialDownGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (setf (aref _inputProcessorArray (Canvas.jstatic_RIGHT)) (SpecialRightGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (setf (aref _inputProcessorArray (Canvas.jstatic_LEFT)) (SpecialLeftGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (setf (aref _inputProcessorArray (Canvas.jstatic_KEY_NUM0)) (Special1GameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (setf (aref _inputProcessorArray (Canvas.jstatic_KEY_NUM5)) (Special3GameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer)))))

    
(unless (fboundp 'jm_enable_2) (defgeneric jm_enable_2 (this p1 p2)))
(defmethod jm_enable_2 ((this AnalogInputBuilder) _inputProcessorArray _collidableDestroyableDamageableLayer)
  (declare (ignorable this _inputProcessorArray _collidableDestroyableDamageableLayer))
  (let ()
    (block jreturn
        (setf (aref _inputProcessorArray (Canvas.jstatic_UP)) (SpecialAnalogUpGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (setf (aref _inputProcessorArray (Canvas.jstatic_DOWN)) (SpecialAnalogDownGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (setf (aref _inputProcessorArray (Canvas.jstatic_RIGHT)) (SpecialAnalogRightGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (setf (aref _inputProcessorArray (Canvas.jstatic_LEFT)) (SpecialAnalogLeftGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (setf (aref _inputProcessorArray (Canvas.jstatic_KEY_NUM0)) (SpecialAnalogLeftTriggerGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer))
        (setf (aref _inputProcessorArray (Canvas.jstatic_KEY_NUM5)) (SpecialAnalogRightTriggerGameInputProcessor.jnew_1 _collidableDestroyableDamageableLayer)))))



