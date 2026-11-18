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

(defclass ArcedMultiBeamWeaponPart (BasicWeaponPart)
  ((f_weaponLayerCircularStaticPool :initform nil)
   (f_total :initform 0)
   (f_TOTAL_ANGLE :initform 0)))

    
(defun ArcedMultiBeamWeaponPart.jnew_7 (_animationInterface _sourceLayerInterface _weaponLayerCircularStaticPool _total _weaponProperties _scoreableInterface _relativeRelationship)
  (declare (ignorable _animationInterface _sourceLayerInterface _weaponLayerCircularStaticPool _total _weaponProperties _scoreableInterface _relativeRelationship))
  (let ((this (make-instance 'ArcedMultiBeamWeaponPart)))
    
    
    (setf (slot-value this 'f_TOTAL_ANGLE) (slot-value (AngleFactory.jm_getInstance_0) 'f_TOTAL_ANGLE))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_total) _total)
        (setf (slot-value this 'f_weaponLayerCircularStaticPool) _weaponLayerCircularStaticPool)))
    this))

    
(unless (fboundp 'jm_processScore_5) (defgeneric jm_processScore_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_processScore_5 ((this ArcedMultiBeamWeaponPart) _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface)
  (declare (ignorable this _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface))
  (let (_increment _minAngle _next _weaponLayer _index)
  (declare (ignorable _increment _minAngle _next _weaponLayer _index))
    (block jreturn
        (setf _increment (JR.i16 (JR.idiv (JR.i32 (- (slot-value this 'f_total) 1)) (slot-value this 'f_TOTAL_ANGLE))))
        (setf _minAngle (JR.i16 (JR.i32 (- _angle (ash (JR.i32 (* _increment (slot-value this 'f_total))) (- (logand 1 31)))))))
        (setf _next 0)
        (setf _weaponLayer nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (slot-value this 'f_total)) do
                (block jcontinue
            (setf _weaponLayer (jm_getInstanceWeaponLayer_8 (slot-value this 'f_weaponLayerCircularStaticPool) (jm_getOwnerLayerInterface_0 this) (jm_getX_0 (slot-value this 'f_relativeRelationship)) (jm_getY_0 (slot-value this 'f_relativeRelationship)) 0 (JR.i32 (+ _minAngle _increment)) _otherAngle _weaponProperties _scoreableInterface))
            (jm_append_1 _allbinaryLayerManager _weaponLayer)
            (setf _next (JR.i32 (+ _next _increment))))
                (setf _index (JR.i32 (+ _index 1)))))))))



