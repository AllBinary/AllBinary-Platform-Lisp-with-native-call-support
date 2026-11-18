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
;;;; package org.allbinary.game.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LayerPlacementTypeFactory (JObject)
  ((f_MAP :initform nil)
   (f_LEFT :initform nil)
   (f_DOWN :initform nil)
   (f_UP :initform nil)
   (f_RIGHT :initform nil)))

(defvar LayerPlacementTypeFactory.jcell_instance :jnone)
(defun LayerPlacementTypeFactory.jstatic_instance ()
  (when (eq LayerPlacementTypeFactory.jcell_instance :jnone) (setf LayerPlacementTypeFactory.jcell_instance (LayerPlacementTypeFactory.jnew_0)))
  LayerPlacementTypeFactory.jcell_instance)
(defun (setf LayerPlacementTypeFactory.jstatic_instance) (value) (setf LayerPlacementTypeFactory.jcell_instance value))

(defun LayerPlacementTypeFactory.jnew_0 ()
  (let ((this (make-instance 'LayerPlacementTypeFactory)))
    (setf (slot-value this 'f_MAP) (LayerPlacementType.jnew_1 (Integer.jstatic_MAX_VALUE)))
    (setf (slot-value this 'f_LEFT) (LayerPlacementType.jnew_1 (jm_getValue_0 (slot-value (DirectionFactory.jm_getInstance_0) 'f_LEFT))))
    (setf (slot-value this 'f_DOWN) (LayerPlacementType.jnew_1 (jm_getValue_0 (slot-value (DirectionFactory.jm_getInstance_0) 'f_DOWN))))
    (setf (slot-value this 'f_UP) (LayerPlacementType.jnew_1 (jm_getValue_0 (slot-value (DirectionFactory.jm_getInstance_0) 'f_UP))))
    (setf (slot-value this 'f_RIGHT) (LayerPlacementType.jnew_1 (jm_getValue_0 (slot-value (DirectionFactory.jm_getInstance_0) 'f_RIGHT))))
    this))

    
(defun LayerPlacementTypeFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LayerPlacementTypeFactory.jstatic_instance)))))



