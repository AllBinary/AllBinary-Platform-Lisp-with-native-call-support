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
;;;; package org.allbinary.game.part.weapon

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicWeaponPartCircularPool (JObject)
  ((f_basicWeaponPart :initform nil)))

(defvar BasicWeaponPartCircularPool.jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL :jnone)
(defun BasicWeaponPartCircularPool.jstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL ()
  (when (eq BasicWeaponPartCircularPool.jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL :jnone) (setf BasicWeaponPartCircularPool.jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL (BasicWeaponPartCircularPool.jnew_0)))
  BasicWeaponPartCircularPool.jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL)
(defun (setf BasicWeaponPartCircularPool.jstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL) (value) (setf BasicWeaponPartCircularPool.jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL value))

(defun BasicWeaponPartCircularPool.jnew_0 ()
  (let ((this (make-instance 'BasicWeaponPartCircularPool)))
    (setf (slot-value this 'f_basicWeaponPart) (BasicWeaponPart.jstatic_NULL_BASIC_WEAPON_PART))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this BasicWeaponPartCircularPool) _basicWeaponPartFactoryInterface)
  (declare (ignorable this _basicWeaponPartFactoryInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicWeaponPart) (jm_getInstance_0 _basicWeaponPartFactoryInterface)))))

    
(unless (fboundp 'jm_getInstance_4) (defgeneric jm_getInstance_4 (this p1 p2 p3 p4)))
(defmethod jm_getInstance_4 ((this BasicWeaponPartCircularPool) _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship)
  (declare (ignorable this _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship))
  (let ()
    (block jreturn
        (jm_init_4 (slot-value this 'f_basicWeaponPart) _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship)
        (return-from jreturn (slot-value this 'f_basicWeaponPart)))))



