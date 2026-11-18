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
;;;; package org.allbinary.game.ag.ai.scroller

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FlockingAI (BasicAI)
  ((f_allowedDistance :initform 0)))

    
(defun FlockingAI.jnew_3 (_hashtable _ownerLayerInterface _gameInput)
  (declare (ignorable _hashtable _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'FlockingAI)))
    
  (let (_allowedDistance)
  (declare (ignorable _allowedDistance))
    (block jreturn
        nil
        (setf _allowedDistance (jm_get_1 _hashtable (BasePatrolAI.jstatic_MAX_DISTANCE)))
        (setf (slot-value this 'f_allowedDistance) (jm_intValue_0 _allowedDistance))))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this FlockingAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_maxDistance _farAllbinaryLayer _groupLayerManagerListener _list _size _allBinaryLayer _ownerLayerInterface _distance _index)
  (declare (ignorable _maxDistance _farAllbinaryLayer _groupLayerManagerListener _list _size _allBinaryLayer _ownerLayerInterface _distance _index))
    (block jreturn
        (setf _maxDistance 0)
        (setf _farAllbinaryLayer (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
        (setf _groupLayerManagerListener (GroupLayerManagerListener.jm_getInstance_0))
        (setf _list (jm_getList_1 _groupLayerManagerListener (slot-value (BasicGroupFactory.jm_getInstance_0) 'f_ENEMY)))
        (setf _size (jm_size_0 _list))
        (setf _allBinaryLayer nil)
        (setf _ownerLayerInterface nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _allBinaryLayer (jm_get_1 _list _index))
            (if (not (eq (jm_getType_0 _allBinaryLayer) (WeaponLayer.jm_getStaticType_0)))
                (progn
                (setf _distance (jm_getXYDistance_1 this _allBinaryLayer))
                (if (> _distance _maxDistance)
                    (progn
                    (setf _maxDistance _distance)
                    (setf _farAllbinaryLayer _allBinaryLayer)
                    (if (> _distance (slot-value this 'f_allowedDistance))
                        (progn
                        (return-from jbreak))))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (if (> _maxDistance (slot-value this 'f_allowedDistance))
            (progn
            (if (not (eq _farAllbinaryLayer (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER)))
                (progn
                (setf _ownerLayerInterface (jm_getOwnerLayerInterface_0 this))
                (if (< (jm_getXP_0 _farAllbinaryLayer) (jm_getXP_0 _ownerLayerInterface))
                    (progn
                    (jm_processKeyAI_1 this (Canvas.jstatic_LEFT)))
                    (if (> (jm_getXP_0 _farAllbinaryLayer) (jm_getXP_0 _ownerLayerInterface))
                    (progn
                    (jm_processKeyAI_1 this (Canvas.jstatic_RIGHT)))
                    (if (> (jm_getYP_0 _farAllbinaryLayer) (jm_getYP_0 _ownerLayerInterface))
                    (progn
                    (jm_processKeyAI_1 this (Canvas.jstatic_UP)))
                    (if (< (jm_getYP_0 _farAllbinaryLayer) (jm_getYP_0 _ownerLayerInterface))
                    (progn
                    (jm_processKeyAI_1 this (Canvas.jstatic_DOWN))))))))))))))

    
(unless (fboundp 'jm_getXYDistance_1) (defgeneric jm_getXYDistance_1 (this p1)))
(defmethod jm_getXYDistance_1 ((this FlockingAI) _allBinaryLayer)
  (declare (ignorable this _allBinaryLayer))
  (let (_ownerLayerInterface _xTotalDistance _yTotalDistance _mathUtil _totalDistance)
  (declare (ignorable _ownerLayerInterface _xTotalDistance _yTotalDistance _mathUtil _totalDistance))
    (block jreturn
        (setf _ownerLayerInterface (jm_getOwnerLayerInterface_0 this))
        (setf _xTotalDistance (JR.i32 (- (JR.i32 (+ (jm_getXP_0 _allBinaryLayer) (jm_getHalfWidth_0 _allBinaryLayer))) (JR.i32 (+ (jm_getXP_0 _ownerLayerInterface) (jm_getHalfWidth_0 _ownerLayerInterface))))))
        (setf _yTotalDistance (JR.i32 (- (JR.i32 (+ (jm_getYP_0 _allBinaryLayer) (jm_getHalfHeight_0 _allBinaryLayer))) (JR.i32 (+ (jm_getYP_0 _ownerLayerInterface) (jm_getHalfHeight_0 _ownerLayerInterface))))))
        (setf _mathUtil (MathUtil.jm_getInstance_0))
        (setf _totalDistance (JR.i32 (+ (jm_abs_1 _mathUtil _xTotalDistance) (jm_abs_1 _mathUtil _yTotalDistance))))
        (return-from jreturn _totalDistance))))



