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
;;;; package org.allbinary.game.combat.damage

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ExplosionResources (JObject)
  ((f_EXPLOSION_90_RESOURCE :initform nil)
   (f_EXPLOSION_60_RESOURCE :initform nil)
   (f_HALF_EXPLOSION_RESOURCE :initform nil)
   (f_THIRD_EXPLOSION_RESOURCE :initform nil)))

(defvar ExplosionResources.jcell_instance :jnone)
(defun ExplosionResources.jstatic_instance ()
  (when (eq ExplosionResources.jcell_instance :jnone) (setf ExplosionResources.jcell_instance (ExplosionResources.jnew_0)))
  ExplosionResources.jcell_instance)
(defun (setf ExplosionResources.jstatic_instance) (value) (setf ExplosionResources.jcell_instance value))

    
(defun ExplosionResources.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ExplosionResources.jstatic_instance)))))

    
(defun ExplosionResources.jnew_0 ()
  (let ((this (make-instance 'ExplosionResources)))
    (setf (slot-value this 'f_EXPLOSION_90_RESOURCE) "/explosion_sprite_90_by_90.png")
    (setf (slot-value this 'f_EXPLOSION_60_RESOURCE) "/explosion_sprite_60_by_60.png")
    (setf (slot-value this 'f_HALF_EXPLOSION_RESOURCE) "/explosion_sprite_30_by_30.png")
    (setf (slot-value this 'f_THIRD_EXPLOSION_RESOURCE) "/explosion_sprite_15_by_15.png")
  (let ()
    (block jreturn nil))
    this))



