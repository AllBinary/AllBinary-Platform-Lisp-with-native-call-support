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
;;;; package org.allbinary.game.combat

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CombatBaseBehavior (JObject)
  ((f_damageableBaseBehavior :initform nil)
   (f_destroyableBaseBehavior :initform nil)
   (f_readyForExplosion :initform nil)))

(defvar CombatBaseBehavior.jcell_NULL_COMBAT_BEHAVIOR :jnone)
(defun CombatBaseBehavior.jstatic_NULL_COMBAT_BEHAVIOR ()
  (when (eq CombatBaseBehavior.jcell_NULL_COMBAT_BEHAVIOR :jnone) (setf CombatBaseBehavior.jcell_NULL_COMBAT_BEHAVIOR (CombatBaseBehavior.jnew_2 (DamageableBaseBehavior.jm_getInstance_0) (DestroyableBaseBehavior.jm_getInstance_0))))
  CombatBaseBehavior.jcell_NULL_COMBAT_BEHAVIOR)
(defun (setf CombatBaseBehavior.jstatic_NULL_COMBAT_BEHAVIOR) (value) (setf CombatBaseBehavior.jcell_NULL_COMBAT_BEHAVIOR value))

    
(defun CombatBaseBehavior.jnew_2 (_damageableBaseBehavior _destroyableBaseBehavior)
  (declare (ignorable _damageableBaseBehavior _destroyableBaseBehavior))
  (let ((this (make-instance 'CombatBaseBehavior)))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_damageableBaseBehavior) _damageableBaseBehavior)
        (setf (slot-value this 'f_destroyableBaseBehavior) _destroyableBaseBehavior)))
    this))

    
(unless (fboundp 'jm_getDamageableBaseBehavior_0) (defgeneric jm_getDamageableBaseBehavior_0 (this)))
(defmethod jm_getDamageableBaseBehavior_0 ((this CombatBaseBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_damageableBaseBehavior)))))

    
(unless (fboundp 'jm_getDestroyableBaseBehavior_0) (defgeneric jm_getDestroyableBaseBehavior_0 (this)))
(defmethod jm_getDestroyableBaseBehavior_0 ((this CombatBaseBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_destroyableBaseBehavior)))))

    
(unless (fboundp 'jm_isReadyForExplosion_0) (defgeneric jm_isReadyForExplosion_0 (this)))
(defmethod jm_isReadyForExplosion_0 ((this CombatBaseBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_readyForExplosion)))))

    
(unless (fboundp 'jm_setReadyForExplosion_1) (defgeneric jm_setReadyForExplosion_1 (this p1)))
(defmethod jm_setReadyForExplosion_1 ((this CombatBaseBehavior) _readyForExplosion)
  (declare (ignorable this _readyForExplosion))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_readyForExplosion) _readyForExplosion))))



