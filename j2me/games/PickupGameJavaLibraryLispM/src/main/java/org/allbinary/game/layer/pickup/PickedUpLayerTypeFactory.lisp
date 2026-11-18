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
;;;; package org.allbinary.game.layer.pickup

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PickedUpLayerTypeFactory (JObject)
  ((f_NONE :initform nil)
   (f_BEAM :initform nil)
   (f_MINE :initform nil)
   (f_PROJECTILE :initform nil)
   (f_ENHANCEMENT :initform nil)
   (f_MORPH :initform nil)
   (f_PART :initform nil)
   (f_HEAL :initform nil)
   (f_LIFE :initform nil)
   (f_POINTS :initform nil)))

(defvar PickedUpLayerTypeFactory.jcell_instance :jnone)
(defun PickedUpLayerTypeFactory.jstatic_instance ()
  (when (eq PickedUpLayerTypeFactory.jcell_instance :jnone) (setf PickedUpLayerTypeFactory.jcell_instance (PickedUpLayerTypeFactory.jnew_0)))
  PickedUpLayerTypeFactory.jcell_instance)
(defun (setf PickedUpLayerTypeFactory.jstatic_instance) (value) (setf PickedUpLayerTypeFactory.jcell_instance value))

(defun PickedUpLayerTypeFactory.jnew_0 ()
  (let ((this (make-instance 'PickedUpLayerTypeFactory)))
    (setf (slot-value this 'f_NONE) (PickedUpLayerType.jnew_1 (slot-value (StringUtil.jm_getInstance_0) 'f_NULL_STRING)))
    (setf (slot-value this 'f_BEAM) (PickedUpLayerType.jnew_1 "BEAM"))
    (setf (slot-value this 'f_MINE) (PickedUpLayerType.jnew_1 "MINE"))
    (setf (slot-value this 'f_PROJECTILE) (PickedUpLayerType.jnew_1 "PROJECTILE"))
    (setf (slot-value this 'f_ENHANCEMENT) (PickedUpLayerType.jnew_1 "Enhancement"))
    (setf (slot-value this 'f_MORPH) (PickedUpLayerType.jnew_1 "Morph"))
    (setf (slot-value this 'f_PART) (PickedUpLayerType.jnew_1 "Part"))
    (setf (slot-value this 'f_HEAL) (PickedUpLayerType.jnew_1 "Heal"))
    (setf (slot-value this 'f_LIFE) (PickedUpLayerType.jnew_1 "Life"))
    (setf (slot-value this 'f_POINTS) (PickedUpLayerType.jnew_1 "Points"))
    this))

    
(defun PickedUpLayerTypeFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PickedUpLayerTypeFactory.jstatic_instance)))))



