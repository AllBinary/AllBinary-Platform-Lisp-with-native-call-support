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
;;;; package org.allbinary.game.ag.layer.weapon.mine

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MineLayer (SimpleWeaponLayer)
  ((f_viewPositionEventHandler :initform nil)))

(defvar MineLayer.jcell_NAME :jnone)
(defun MineLayer.jstatic_NAME ()
  (when (eq MineLayer.jcell_NAME :jnone) (setf MineLayer.jcell_NAME "MineLayer"))
  MineLayer.jcell_NAME)
(defun (setf MineLayer.jstatic_NAME) (value) (setf MineLayer.jcell_NAME value))

    
(defun MineLayer.jnew_1 (_viewPosition)
  (declare (ignorable _viewPosition))
  (let ((this (make-instance 'MineLayer)))
    (setf (slot-value this 'f_viewPositionEventHandler) (ViewPositionEventHandler.jm_getInstance_0))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_initXYZ_3) (defgeneric jm_initXYZ_3 (this p1 p2 p3)))
(defmethod jm_initXYZ_3 ((this MineLayer) _x _y _z)
  (declare (ignorable this _x _y _z))
  (let ()
    (block jreturn
        (jm_setPosition_3 this (JR.i32 (+ _x 5)) (JR.i32 (+ _y 5)) _z)
        (jm_addListener_1 (slot-value this 'f_viewPositionEventHandler) this)
        (jm_add_1 (SecondaryPlayerQueueFactory.jm_getInstance_0) (DropWeaponSound.jm_getInstance_0)))))

    
(unless (fboundp 'jm_damage_2) (defgeneric jm_damage_2 (this p1 p2)))
(defmethod jm_damage_2 ((this MineLayer) _damage _damageType)
  (declare (ignorable this _damage _damageType))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_totalDamage) (JR.i32 (+ (jm_getInitDamage_0 this) 1))))))

    
(unless (fboundp 'jm_getDamage_1) (defgeneric jm_getDamage_1 (this p1)))
(defmethod jm_getDamage_1 ((this MineLayer) _damageType)
  (declare (ignorable this _damageType))
  (let ()
    (block jreturn
        (call-next-method this _damageType)
        (return-from jreturn (jm_getInitDamage_0 this)))))

    
(unless (fboundp 'jm_setDestroyed_1) (defgeneric jm_setDestroyed_1 (this p1)))
(defmethod jm_setDestroyed_1 ((this MineLayer) _destroyed)
  (declare (ignorable this _destroyed))
  (let ()
    (block jreturn
        (call-next-method this _destroyed)
        (if (jm_isDestroyed_0 this)
            (progn
            (jm_removeListener_1 (slot-value this 'f_viewPositionEventHandler) this))))))



