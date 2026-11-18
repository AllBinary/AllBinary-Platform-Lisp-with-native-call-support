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
;;;; package org.allbinary.game.layer.weapon

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass WeaponLayerArrayLayerCircularStaticPool (JObject)
  ((f_MAX :initform 0)
   (f_circularIndexUtil :initform nil)
   (f_WEAPONLAYER_ARRAY :initform nil)
   (f_TWO_WEAPONLAYER_ARRAY :initform nil)
   (f_THREE_WEAPONLAYER_ARRAY :initform nil)))

(defvar WeaponLayerArrayLayerCircularStaticPool.jcell_instance :jnone)
(defun WeaponLayerArrayLayerCircularStaticPool.jstatic_instance ()
  (when (eq WeaponLayerArrayLayerCircularStaticPool.jcell_instance :jnone) (setf WeaponLayerArrayLayerCircularStaticPool.jcell_instance (WeaponLayerArrayLayerCircularStaticPool.jnew_0)))
  WeaponLayerArrayLayerCircularStaticPool.jcell_instance)
(defun (setf WeaponLayerArrayLayerCircularStaticPool.jstatic_instance) (value) (setf WeaponLayerArrayLayerCircularStaticPool.jcell_instance value))

(defun WeaponLayerArrayLayerCircularStaticPool.jnew_0 ()
  (let ((this (make-instance 'WeaponLayerArrayLayerCircularStaticPool)))
    (setf (slot-value this 'f_MAX) 5)
    (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 (slot-value this 'f_MAX)))
    
    
    
    this))

    
(defun WeaponLayerArrayLayerCircularStaticPool.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (WeaponLayerArrayLayerCircularStaticPool.jstatic_instance)))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this WeaponLayerArrayLayerCircularStaticPool))
  (declare (ignorable this))
  (let (_WEAPONLAYER_ARRAY _TWO_WEAPONLAYER_ARRAY _THREE_WEAPONLAYER_ARRAY _index)
  (declare (ignorable _WEAPONLAYER_ARRAY _TWO_WEAPONLAYER_ARRAY _THREE_WEAPONLAYER_ARRAY _index))
    (block jreturn
        (setf _WEAPONLAYER_ARRAY (JR.newArray nil (JR.i32 (* (slot-value this 'f_MAX) 2))))
        (setf _TWO_WEAPONLAYER_ARRAY (JR.newArray nil (slot-value this 'f_MAX)))
        (setf _THREE_WEAPONLAYER_ARRAY (JR.newArray nil (slot-value this 'f_MAX)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (slot-value this 'f_MAX)) do
                (block jcontinue
            (setf (aref _WEAPONLAYER_ARRAY _index) (JR.newArray nil 1))
            (setf (aref _TWO_WEAPONLAYER_ARRAY _index) (JR.newArray nil 2))
            (setf (aref _THREE_WEAPONLAYER_ARRAY _index) (JR.newArray nil 3)))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf (slot-value this 'f_WEAPONLAYER_ARRAY) _WEAPONLAYER_ARRAY)
        (setf (slot-value this 'f_TWO_WEAPONLAYER_ARRAY) _TWO_WEAPONLAYER_ARRAY)
        (setf (slot-value this 'f_THREE_WEAPONLAYER_ARRAY) _THREE_WEAPONLAYER_ARRAY))))

    
(unless (fboundp 'jm_getWeaponLayerArrays_1) (defgeneric jm_getWeaponLayerArrays_1 (this p1)))
(defmethod jm_getWeaponLayerArrays_1 ((this WeaponLayerArrayLayerCircularStaticPool) _size)
  (declare (ignorable this _size))
  (let ()
    (block jreturn
        (if (= _size 1)
            (progn
            (return-from jreturn (slot-value this 'f_WEAPONLAYER_ARRAY)))
            (if (= _size 2)
            (progn
            (return-from jreturn (slot-value this 'f_TWO_WEAPONLAYER_ARRAY)))
            (if (= _size 3)
            (progn
            (return-from jreturn (slot-value this 'f_THREE_WEAPONLAYER_ARRAY))))))
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getInstanceArray_1) (defgeneric jm_getInstanceArray_1 (this p1)))
(defmethod jm_getInstanceArray_1 ((this WeaponLayerArrayLayerCircularStaticPool) _size)
  (declare (ignorable this _size))
  (let (_weaponLayerArray)
  (declare (ignorable _weaponLayerArray))
    (block jreturn
        (setf _weaponLayerArray (aref (jm_getWeaponLayerArrays_1 this _size) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))
        (jm_next_0 (slot-value this 'f_circularIndexUtil))
        (return-from jreturn _weaponLayerArray))))



