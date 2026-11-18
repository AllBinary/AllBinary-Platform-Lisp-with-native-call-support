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

(defclass WeaponLayer (MultiPlayerGameLayer)
  ((f_animationInterface :initform nil)
   (f_initAnimationInterface :initform nil)
   (f_destroyedAnimationInterface :initform nil)
   (f_sourceLayerInterface :initform nil)
   (f_totalDamage :initform 0)
   (f_initDamage :initform 0)
   (f_destroyed :initform nil)
   (f_scoreableInterface :initform nil)
   (f_movement :initform nil)
   (f_weaponProperties :initform nil)
   (f_multiPlayerType :initform 0)
   (f_collidableWeaponBehavior :initform nil)))

    
(defun WeaponLayer.jnew_8 (_name _remoteInfo _multiPlayerType _movement _animationInterface _destroyedAnimationInterface _rectangle _viewPosition)
  (declare (ignorable _name _remoteInfo _multiPlayerType _movement _animationInterface _destroyedAnimationInterface _rectangle _viewPosition))
  (let ((this (make-instance 'WeaponLayer)))
    (setf (slot-value this 'f_animationInterface) (jm_getInstance_1 (NullAnimationFactory.jm_getFactoryInstance_0) 0))
    
    
    (setf (slot-value this 'f_sourceLayerInterface) (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
    
    
    (setf (slot-value this 'f_destroyed) t)
    (setf (slot-value this 'f_scoreableInterface) (NoScoreable.jm_getInstance_0))
    
    (setf (slot-value this 'f_weaponProperties) (WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES))
    
    (setf (slot-value this 'f_collidableWeaponBehavior) (CollidableWeaponBehavior.jm_getNullInstance_0))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_initAnimationInterface) _animationInterface)
        (jm_setAnimationInterface_1 this _animationInterface)
        (setf (slot-value this 'f_destroyedAnimationInterface) _destroyedAnimationInterface)
        (setf (slot-value this 'f_movement) _movement)
        (setf (slot-value this 'f_multiPlayerType) _multiPlayerType)))
    this))

    
(unless (fboundp 'jm_setCollidableInferface_1) (defgeneric jm_setCollidableInferface_1 (this p1)))
(defmethod jm_setCollidableInferface_1 ((this WeaponLayer) _collidableInferface)
  (declare (ignorable this _collidableInferface))
  (let ()
    (block jreturn
        (call-next-method this _collidableInferface)
        (setf (slot-value this 'f_collidableWeaponBehavior) (jm_getCollidableInferface_0 this)))))

    
(unless (fboundp 'jm_initXYZ_3) (defgeneric jm_initXYZ_3 (this p1 p2 p3)))
(defmethod jm_initXYZ_3 ((this WeaponLayer) _x _y _z)
  (declare (ignorable this _x _y _z))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_x) _x)
        (setf (slot-value this 'f_y) _y)
        (setf (slot-value this 'f_z) _z))))

    
(unless (fboundp 'jm_init_5) (defgeneric jm_init_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_init_5 ((this WeaponLayer) _sourceLayerInterface _angle _otherAngle _weaponProperties _scoreable)
  (declare (ignorable this _sourceLayerInterface _angle _otherAngle _weaponProperties _scoreable))
  (let ()
    (block jreturn
        (jm_setWeaponPropertiesP_1 this _weaponProperties)
        (jm_setReadyForExplosion_1 this nil)
        (jm_setAnimationInterface_1 this (jm_getInitAnimationInterfaceP_0 this))
        (jm_setOwnerLayerInterface_1 this _sourceLayerInterface)
        (jm_init_1 (slot-value this 'f_collidableWeaponBehavior) _sourceLayerInterface)
        (jm_setGroupInterfaces_0 this)
        (if (not (null _scoreable))
            (progn
            (setf (slot-value this 'f_scoreableInterface) _scoreable)))
        (setf (slot-value this 'f_totalDamage) 0)
        (setf (slot-value this 'f_initDamage) (jm_getDamage_0 _weaponProperties))
        (jm_setDestroyed_1 this nil)
        (jm_init_3 (slot-value this 'f_movement) (jm_getSpeed_0 _weaponProperties) _angle _otherAngle))))

    
(unless (fboundp 'jm_setGroupInterfaces_0) (defgeneric jm_setGroupInterfaces_0 (this)))
(defmethod jm_setGroupInterfaces_0 ((this WeaponLayer))
  (declare (ignorable this))
  (let (_basicGroupFactory)
  (declare (ignorable _basicGroupFactory))
    (block jreturn
        (setf _basicGroupFactory (BasicGroupFactory.jm_getInstance_0))
        (if (eq (aref (jm_getGroupInterface_0 (slot-value this 'f_sourceLayerInterface)) 0) (slot-value _basicGroupFactory 'f_ENEMY))
            (progn
            (jm_setGroupInterface_1 this (slot-value _basicGroupFactory 'f_ENEMY_ARRAY)))
            (progn
            (jm_setGroupInterface_1 this (jm_getGroupInterface_0 (slot-value this 'f_sourceLayerInterface))))))))

    
(unless (fboundp 'jm_processTick_1) (defgeneric jm_processTick_1 (this p1)))
(defmethod jm_processTick_1 ((this WeaponLayer) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_collidableWeaponBehavior _indexedAnimationInterface _currentFrame)
  (declare (ignorable _collidableWeaponBehavior _indexedAnimationInterface _currentFrame))
    (block jreturn
        (if (and (jm_isExhausted_0 this) (not (jm_isDestroyed_0 this)))
            (progn
            (if (jm_isReadyForExplosion_0 this)
                (progn
                (setf _indexedAnimationInterface (jm_getAnimationInterface_0 this))
                (setf _currentFrame (jm_getFrame_0 _indexedAnimationInterface))
                (if (< _currentFrame (JR.i32 (- (jm_getAnimationSize_0 _indexedAnimationInterface) 1)))
                    (progn
                    (jm_nextFrame_0 _indexedAnimationInterface))
                    (progn
                    (jm_setDestroyed_1 this t))))
                (progn
                (setf _collidableWeaponBehavior (jm_getCollidableInferface_0 this))
                (if (jm_isCollided_0 _collidableWeaponBehavior)
                    (progn
                    (jm_setAnimationInterface_1 this (slot-value this 'f_destroyedAnimationInterface))
                    (jm_stop_0 (jm_getMovement_0 this))
                    (jm_setReadyForExplosion_1 this t))
                    (progn
                    (jm_setDestroyed_1 this t)))))))
        (jm_process_1 (slot-value this 'f_movement) this)
        (setf (slot-value this 'f_totalDamage) (JR.i32 (+ (slot-value this 'f_totalDamage) (jm_getDissipation_0 (slot-value this 'f_weaponProperties))))))))

    
(unless (fboundp 'jm_isDestroyed_0) (defgeneric jm_isDestroyed_0 (this)))
(defmethod jm_isDestroyed_0 ((this WeaponLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_destroyed)))))

    
(unless (fboundp 'jm_damage_2) (defgeneric jm_damage_2 (this p1 p2)))
(defmethod jm_damage_2 ((this WeaponLayer) _damage _damageType)
  (declare (ignorable this _damage _damageType))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_totalDamage) (JR.i32 (+ (slot-value this 'f_totalDamage) (JR.i32 (* _damage _damage))))))))

    
(unless (fboundp 'jm_givePoints_1) (defgeneric jm_givePoints_1 (this p1)))
(defmethod jm_givePoints_1 ((this WeaponLayer) _total)
  (declare (ignorable this _total))
  (let ()
    (block jreturn
        (jm_addPoints_1 (slot-value this 'f_scoreableInterface) (JR.i32 (* (jm_getCompetitionValue_0 (GameConfigurationUtil.jm_getInstance_0)) _total))))))

    
(unless (fboundp 'jm_isExhausted_0) (defgeneric jm_isExhausted_0 (this)))
(defmethod jm_isExhausted_0 ((this WeaponLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (or (> (slot-value this 'f_totalDamage) (jm_getInitDamage_0 this)) (< (slot-value this 'f_totalDamage) 0))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_getDamage_1) (defgeneric jm_getDamage_1 (this p1)))
(defmethod jm_getDamage_1 ((this WeaponLayer) _damageType)
  (declare (ignorable this _damageType))
  (let (_total)
  (declare (ignorable _total))
    (block jreturn
        (if (not (jm_isExhausted_0 this))
            (progn
            (setf _total (JR.i32 (- (jm_getInitDamage_0 this) (slot-value this 'f_totalDamage))))
            (jm_givePoints_1 this _total)
            (return-from jreturn _total)))
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_setDestroyed_1) (defgeneric jm_setDestroyed_1 (this p1)))
(defmethod jm_setDestroyed_1 ((this WeaponLayer) _destroyed)
  (declare (ignorable this _destroyed))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_destroyed) _destroyed)
        (if (jm_isDestroyed_0 this)
            (progn
            (setf (slot-value this 'f_scoreableInterface) (NoScoreable.jm_getInstance_0))
            (jm_add_1 (DestroyedLayerProcessor.jm_getInstance_0) this))))))

    
(unless (fboundp 'jm_getInitDamage_0) (defgeneric jm_getInitDamage_0 (this)))
(defmethod jm_getInitDamage_0 ((this WeaponLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_initDamage)))))

    
(unless (fboundp 'jm_setAnimationInterface_1) (defgeneric jm_setAnimationInterface_1 (this p1)))
(defmethod jm_setAnimationInterface_1 ((this WeaponLayer) _animationInterface)
  (declare (ignorable this _animationInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_animationInterface) _animationInterface))))

    
(unless (fboundp 'jm_getAnimationInterface_0) (defgeneric jm_getAnimationInterface_0 (this)))
(defmethod jm_getAnimationInterface_0 ((this WeaponLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_animationInterface)))))

    
(unless (fboundp 'jm_getInitAnimationInterfaceP_0) (defgeneric jm_getInitAnimationInterfaceP_0 (this)))
(defmethod jm_getInitAnimationInterfaceP_0 ((this WeaponLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_initAnimationInterface)))))

    
(unless (fboundp 'jm_setInitAnimationInterfaceP_1) (defgeneric jm_setInitAnimationInterfaceP_1 (this p1)))
(defmethod jm_setInitAnimationInterfaceP_1 ((this WeaponLayer) _initAnimationInterface)
  (declare (ignorable this _initAnimationInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_initAnimationInterface) _initAnimationInterface))))

    
(unless (fboundp 'jm_getDestroyedAnimationInterface_0) (defgeneric jm_getDestroyedAnimationInterface_0 (this)))
(defmethod jm_getDestroyedAnimationInterface_0 ((this WeaponLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_destroyedAnimationInterface)))))

    
(unless (fboundp 'jm_getOwnerLayerInterface_0) (defgeneric jm_getOwnerLayerInterface_0 (this)))
(defmethod jm_getOwnerLayerInterface_0 ((this WeaponLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_sourceLayerInterface)))))

    
(unless (fboundp 'jm_setOwnerLayerInterface_1) (defgeneric jm_setOwnerLayerInterface_1 (this p1)))
(defmethod jm_setOwnerLayerInterface_1 ((this WeaponLayer) _sourceLayerInterface)
  (declare (ignorable this _sourceLayerInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_sourceLayerInterface) _sourceLayerInterface))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this WeaponLayer) _graphics)
  (declare (ignorable this _graphics))
  (let (_viewPosition)
  (declare (ignorable _viewPosition))
    (block jreturn
        (setf _viewPosition (jm_getViewPosition_0 this))
        (jm_paintXY_3 (slot-value this 'f_animationInterface) _graphics (JR.i32 (- (jm_getX_0 _viewPosition) (jm_getHalfWidth_0 this))) (JR.i32 (- (jm_getY_0 _viewPosition) (jm_getHalfHeight_0 this)))))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this WeaponLayer) _graphics)
  (declare (ignorable this _graphics))
  (let (_viewPosition)
  (declare (ignorable _viewPosition))
    (block jreturn
        (setf _viewPosition (jm_getViewPosition_0 this))
        (jm_paintThreedXYZ_4 (slot-value this 'f_animationInterface) _graphics (JR.i32 (- (jm_getX_0 _viewPosition) (jm_getHalfWidth_0 this))) (JR.i32 (- (jm_getY_0 _viewPosition) (jm_getHalfHeight_0 this))) (JR.i32 (- (jm_getZ_0 _viewPosition) (jm_getHalfDepth_0 this)))))))

    
(unless (fboundp 'jm_getMovement_0) (defgeneric jm_getMovement_0 (this)))
(defmethod jm_getMovement_0 ((this WeaponLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_movement)))))

    
(unless (fboundp 'jm_setMovement_1) (defgeneric jm_setMovement_1 (this p1)))
(defmethod jm_setMovement_1 ((this WeaponLayer) _movement)
  (declare (ignorable this _movement))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_movement) _movement))))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this WeaponLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (WeaponLayer.jm_getStaticType_0)))))

    
(defun WeaponLayer.jm_getStaticType_0 ()
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_getMultiPlayerType_0) (defgeneric jm_getMultiPlayerType_0 (this)))
(defmethod jm_getMultiPlayerType_0 ((this WeaponLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_multiPlayerType)))))

    
(unless (fboundp 'jm_setWeaponPropertiesP_1) (defgeneric jm_setWeaponPropertiesP_1 (this p1)))
(defmethod jm_setWeaponPropertiesP_1 ((this WeaponLayer) _weaponProperties)
  (declare (ignorable this _weaponProperties))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_weaponProperties) _weaponProperties))))

    
(unless (fboundp 'jm_getWeaponPropertiesP_0) (defgeneric jm_getWeaponPropertiesP_0 (this)))
(defmethod jm_getWeaponPropertiesP_0 ((this WeaponLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_weaponProperties)))))

    
(unless (fboundp 'jm_implmentsTickableInterface_0) (defgeneric jm_implmentsTickableInterface_0 (this)))
(defmethod jm_implmentsTickableInterface_0 ((this WeaponLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this WeaponLayer) _gl)
  (declare (ignorable this _gl))
  (let ()
    (block jreturn
        (jm_set_1 (slot-value this 'f_initAnimationInterface) _gl))))



