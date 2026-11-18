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

(defclass StraightMultiProjectileWeaponPart (BasicWeaponPart)
  ((f_weaponLayerCircularStaticPool :initform nil)
   (f_total :initform 0)
   (f_noDecimalTrigTable :initform nil)))

    
(defun StraightMultiProjectileWeaponPart.jm_createStraightMultiProjectileWeaponPart_2 (_animationInterface _weaponLayerCircularStaticPool)
  (declare (ignorable _animationInterface _weaponLayerCircularStaticPool))
  (let ()
    (block jreturn
        (return-from jreturn (StraightMultiProjectileWeaponPart.jnew_7 _animationInterface (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER) _weaponLayerCircularStaticPool 2 (WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES) (NoScoreable.jm_getInstance_0) (RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP))))))

    
(defun StraightMultiProjectileWeaponPart.jnew_7 (_animationInterface _sourceLayerInterface _weaponLayerCircularStaticPool _total _weaponProperties _scoreableInterface _relativeRelationship)
  (declare (ignorable _animationInterface _sourceLayerInterface _weaponLayerCircularStaticPool _total _weaponProperties _scoreableInterface _relativeRelationship))
  (let ((this (make-instance 'StraightMultiProjectileWeaponPart)))
    
    
    (setf (slot-value this 'f_noDecimalTrigTable) (NoDecimalTrigTable.jm_getInstance_0))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_total) _total)
        (setf (slot-value this 'f_weaponLayerCircularStaticPool) _weaponLayerCircularStaticPool)))
    this))

    
(unless (fboundp 'jm_processScore_5) (defgeneric jm_processScore_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_processScore_5 ((this StraightMultiProjectileWeaponPart) _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface)
  (declare (ignorable this _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface))
  (let (_sourceLayerInterface _reducedWidth _halfWidth _x _y _sine _beamX _cosine _beamY _weaponLayer _increment _next _index)
  (declare (ignorable _sourceLayerInterface _reducedWidth _halfWidth _x _y _sine _beamX _cosine _beamY _weaponLayer _increment _next _index))
    (block jreturn
        (setf _sourceLayerInterface (jm_getOwnerLayerInterface_0 this))
        (setf _reducedWidth (JR.idiv (JR.i32 (* (jm_getWidth_0 _sourceLayerInterface) 8)) 10))
        (setf _halfWidth (ash _reducedWidth (- (logand 1 31))))
        (setf _x (jm_getX_0 (slot-value this 'f_relativeRelationship)))
        (setf _y (jm_getY_0 (slot-value this 'f_relativeRelationship)))
        (setf _sine 0)
        (setf _beamX 0)
        (setf _cosine 0)
        (setf _beamY 0)
        (setf _weaponLayer nil)
        (setf _increment (JR.idiv _reducedWidth (JR.i32 (- (slot-value this 'f_total) 1))))
        (setf _next (JR.i32 (- _halfWidth)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (slot-value this 'f_total)) do
                (block jcontinue
            (setf _sine (JR.i32 (* _next (jm_sin_1 (slot-value this 'f_noDecimalTrigTable) _angle))))
            (setf _beamX (JR.ldiv _sine (slot-value (slot-value this 'f_noDecimalTrigTable) 'f_SCALE)))
            (setf _cosine (JR.i32 (* _next (jm_cos_1 (slot-value this 'f_noDecimalTrigTable) _angle))))
            (setf _beamY (JR.i32 (- (JR.ldiv _cosine (slot-value (slot-value this 'f_noDecimalTrigTable) 'f_SCALE)))))
            (setf _weaponLayer (jm_getInstanceWeaponLayer_8 (slot-value this 'f_weaponLayerCircularStaticPool) _sourceLayerInterface (JR.i32 (+ _x _beamX)) (JR.i32 (+ _y _beamY)) 0 _angle _otherAngle _weaponProperties _scoreableInterface))
            (jm_append_1 _allbinaryLayerManager _weaponLayer)
            (setf _next (JR.i32 (+ _next _increment))))
                (setf _index (JR.i32 (+ _index 1)))))))))



