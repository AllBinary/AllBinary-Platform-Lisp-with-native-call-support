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

(defclass BasicWeaponPart (JObject)
  ((f_animationInterface :initform nil)
   (f_ownerLayerInterface :initform nil)
   (f_weaponProperties :initform nil)
   (f_scoreableInterface :initform nil)
   (f_relativeRelationship :initform nil)))

(defvar BasicWeaponPart.jcell_NULL_BASIC_WEAPON_PART :jnone)
(defun BasicWeaponPart.jstatic_NULL_BASIC_WEAPON_PART ()
  (when (eq BasicWeaponPart.jcell_NULL_BASIC_WEAPON_PART :jnone) (setf BasicWeaponPart.jcell_NULL_BASIC_WEAPON_PART (BasicWeaponPart.jm_createBasicWeaponPart_1 (jm_getInstance_1 (NullAnimationFactory.jm_getFactoryInstance_0) 0))))
  BasicWeaponPart.jcell_NULL_BASIC_WEAPON_PART)
(defun (setf BasicWeaponPart.jstatic_NULL_BASIC_WEAPON_PART) (value) (setf BasicWeaponPart.jcell_NULL_BASIC_WEAPON_PART value))

    
(defun BasicWeaponPart.jm_createBasicWeaponPart_1 (_animationInterface)
  (declare (ignorable _animationInterface))
  (let ()
    (block jreturn
        (return-from jreturn (BasicWeaponPart.jnew_5 _animationInterface (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER) (WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES) (NoScoreable.jm_getInstance_0) (RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP))))))

    
(defun BasicWeaponPart.jnew_5 (_animationInterface _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship)
  (declare (ignorable _animationInterface _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship))
  (let ((this (make-instance 'BasicWeaponPart)))
    (setf (slot-value this 'f_animationInterface) (jm_getInstance_1 (NullAnimationFactory.jm_getFactoryInstance_0) 0))
    (setf (slot-value this 'f_ownerLayerInterface) (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
    (setf (slot-value this 'f_weaponProperties) (WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES))
    (setf (slot-value this 'f_scoreableInterface) (NoScoreable.jm_getInstance_0))
    (setf (slot-value this 'f_relativeRelationship) (RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP))
  (let ()
    (block jreturn
        (jm_init_4 this _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship)
        (jm_setAnimationInterface_1 this _animationInterface)))
    this))

    
(unless (fboundp 'jm_init_4) (defgeneric jm_init_4 (this p1 p2 p3 p4)))
(defmethod jm_init_4 ((this BasicWeaponPart) _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship)
  (declare (ignorable this _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship))
  (let ()
    (block jreturn
        (jm_setOwnerLayerInterface_1 this _sourceLayerInterface)
        (jm_setWeaponProperties_1 this _weaponProperties)
        (setf (slot-value this 'f_scoreableInterface) _scoreableInterface)
        (setf (slot-value this 'f_relativeRelationship) _relativeRelationship))))

    
(unless (fboundp 'jm_process_3) (defgeneric jm_process_3 (this p1 p2 p3)))
(defmethod jm_process_3 ((this BasicWeaponPart) _allbinaryLayerManager _angle _otherAngle)
  (declare (ignorable this _allbinaryLayerManager _angle _otherAngle))
  (let ()
    (block jreturn
        (jm_processScore_5 this _allbinaryLayerManager _angle _otherAngle (jm_getWeaponProperties_0 this) (slot-value this 'f_scoreableInterface)))))

    
(unless (fboundp 'jm_processScore_5) (defgeneric jm_processScore_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_processScore_5 ((this BasicWeaponPart) _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface)
  (declare (ignorable this _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (CommonStrings.jm_getInstance_0) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_getOwnerLayerInterface_0) (defgeneric jm_getOwnerLayerInterface_0 (this)))
(defmethod jm_getOwnerLayerInterface_0 ((this BasicWeaponPart))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_ownerLayerInterface)))))

    
(unless (fboundp 'jm_setOwnerLayerInterface_1) (defgeneric jm_setOwnerLayerInterface_1 (this p1)))
(defmethod jm_setOwnerLayerInterface_1 ((this BasicWeaponPart) _ownerLayerInterface)
  (declare (ignorable this _ownerLayerInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_ownerLayerInterface) _ownerLayerInterface))))

    
(unless (fboundp 'jm_getAnimationInterface_0) (defgeneric jm_getAnimationInterface_0 (this)))
(defmethod jm_getAnimationInterface_0 ((this BasicWeaponPart))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_animationInterface)))))

    
(unless (fboundp 'jm_setAnimationInterface_1) (defgeneric jm_setAnimationInterface_1 (this p1)))
(defmethod jm_setAnimationInterface_1 ((this BasicWeaponPart) _animationInterface)
  (declare (ignorable this _animationInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_animationInterface) _animationInterface))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this BasicWeaponPart) _graphics)
  (declare (ignorable this _graphics))
  (let (_viewPosition _viewX _viewY)
  (declare (ignorable _viewPosition _viewX _viewY))
    (block jreturn
        (setf _viewPosition (jm_getViewPosition_0 (jm_getOwnerLayerInterface_0 this)))
        (setf _viewX (jm_getX_0 _viewPosition))
        (setf _viewY (jm_getY_0 _viewPosition))
        (jm_paintXY_3 (slot-value this 'f_animationInterface) _graphics _viewX _viewY))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this BasicWeaponPart) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getWeaponProperties_0) (defgeneric jm_getWeaponProperties_0 (this)))
(defmethod jm_getWeaponProperties_0 ((this BasicWeaponPart))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_weaponProperties)))))

    
(unless (fboundp 'jm_setWeaponProperties_1) (defgeneric jm_setWeaponProperties_1 (this p1)))
(defmethod jm_setWeaponProperties_1 ((this BasicWeaponPart) _weaponProperties)
  (declare (ignorable this _weaponProperties))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_weaponProperties) _weaponProperties))))



