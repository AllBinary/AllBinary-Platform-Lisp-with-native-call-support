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

(defclass PacePatrolAI (BasePatrolAI)
  ((f_trackingList :initform nil)
   (f_firingDistance :initform 0)
   (f_isFollowLimitedByTerrain :initform nil)))

    
(defun PacePatrolAI.jnew_3 (_hashtable _ownerLayerInterface _gameInput)
  (declare (ignorable _hashtable _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'PacePatrolAI)))
    
    
    (setf (slot-value this 'f_isFollowLimitedByTerrain) nil)
  (let ()
    (block jreturn
        nil
        (jm_addListenerInterface_1 (TrackingEventHandler.jm_getInstance_0) this)
        (setf (slot-value this 'f_trackingList) (BasicArrayListD.jnew_0))))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this PacePatrolAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_direction _directionFactory)
  (declare (ignorable _direction _directionFactory))
    (block jreturn
        (jm_update_0 this)
        (setf _direction (jm_setFiringDirectionForTargetIfInRange_0 this))
        (setf _directionFactory (DirectionFactory.jm_getInstance_0))
        (if (eq _direction (slot-value _directionFactory 'f_LEFT))
            (progn
            (if (or (not (eq (slot-value this 'f_lastKeyDirection) (slot-value this 'f_keyDirection))) (not (slot-value this 'f_isFollowLimitedByTerrain)))
                (progn
                (jm_processKeyAI_1 this (Canvas.jstatic_LEFT))))
            (setf (slot-value this 'f_keyDirection) (Canvas.jstatic_LEFT))
            (setf (slot-value this 'f_lastKeyDirection) (slot-value this 'f_keyDirection))
            (setf (slot-value this 'f_xTotalDistance) 0)
            (jm_processKeyAI_1 this (Canvas.jstatic_KEY_NUM1)))
            (if (eq _direction (slot-value _directionFactory 'f_RIGHT))
            (progn
            (if (or (not (eq (slot-value this 'f_lastKeyDirection) (slot-value this 'f_keyDirection))) (not (slot-value this 'f_isFollowLimitedByTerrain)))
                (progn
                (jm_processKeyAI_1 this (Canvas.jstatic_RIGHT))))
            (setf (slot-value this 'f_keyDirection) (Canvas.jstatic_RIGHT))
            (setf (slot-value this 'f_lastKeyDirection) (slot-value this 'f_keyDirection))
            (setf (slot-value this 'f_xTotalDistance) 0)
            (jm_processKeyAI_1 this (Canvas.jstatic_KEY_NUM1)))
            (progn
            (jm_processKeyAI_1 this (slot-value this 'f_keyDirection))))))))

    
(unless (fboundp 'jm_setFiringDirectionForTargetIfInRange_0) (defgeneric jm_setFiringDirectionForTargetIfInRange_0 (this)))
(defmethod jm_setFiringDirectionForTargetIfInRange_0 ((this PacePatrolAI))
  (declare (ignorable this))
  (let (_directionFactory _ownerLayerInterface _direction _lastTrackingEvent _lastTrackingLayerInterface _directionCompositeInterface _size _x _y _yDistance _xDistance _absXDistance _absYDistance _index)
  (declare (ignorable _directionFactory _ownerLayerInterface _direction _lastTrackingEvent _lastTrackingLayerInterface _directionCompositeInterface _size _x _y _yDistance _xDistance _absXDistance _absYDistance _index))
    (block jreturn
        (setf _directionFactory (DirectionFactory.jm_getInstance_0))
        (setf _ownerLayerInterface (jm_getOwnerLayerInterface_0 this))
        (setf _direction (slot-value _directionFactory 'f_NOT_BORDERED_WITH))
        (setf _lastTrackingEvent nil)
        (setf _lastTrackingLayerInterface nil)
        (setf _directionCompositeInterface nil)
        (setf _size (jm_size_0 (slot-value this 'f_trackingList)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _lastTrackingEvent (jm_get_1 (slot-value this 'f_trackingList) 0))
            (setf _lastTrackingLayerInterface (jm_getLayerInterface_0 _lastTrackingEvent))
            (setf _x (jm_getXP_0 _lastTrackingLayerInterface))
            (setf _y (jm_getYP_0 _lastTrackingLayerInterface))
            (setf _yDistance (JR.i32 (- (JR.i32 (- (jm_getYP_0 _ownerLayerInterface) _y)) (jm_getHeight_0 _ownerLayerInterface))))
            (setf _xDistance (JR.i32 (- (JR.i32 (- (jm_getXP_0 _ownerLayerInterface) _x)) (jm_getWidth_0 _ownerLayerInterface))))
            (setf _absXDistance (abs _xDistance))
            (setf _absYDistance (abs _yDistance))
            (if (<= _absYDistance 100)
                (progn
                (if (< _absXDistance (JR.idiv (jm_getFiringDistance_0 this) 2))
                    (progn
                    (setf _directionCompositeInterface (jm_getOwnerLayerInterface_0 this))
                    (if (and (< _xDistance 0) (eq (jm_getDirection_0 _directionCompositeInterface) (slot-value _directionFactory 'f_RIGHT)))
                        (progn
                        (setf _direction (slot-value _directionFactory 'f_RIGHT)))
                        (if (and (> _xDistance 0) (eq (jm_getDirection_0 _directionCompositeInterface) (slot-value _directionFactory 'f_LEFT)))
                        (progn
                        (setf _direction (slot-value _directionFactory 'f_LEFT))))))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _direction))))

    
(unless (fboundp 'jm_disable_0) (defgeneric jm_disable_0 (this)))
(defmethod jm_disable_0 ((this PacePatrolAI))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this PacePatrolAI) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onMovement_1) (defgeneric jm_onMovement_1 (this p1)))
(defmethod jm_onMovement_1 ((this PacePatrolAI) _trackingEvent)
  (declare (ignorable this _trackingEvent))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_trackingList))
        (jm_add_1 (slot-value this 'f_trackingList) _trackingEvent))))

    
(unless (fboundp 'jm_getFiringDistance_0) (defgeneric jm_getFiringDistance_0 (this)))
(defmethod jm_getFiringDistance_0 ((this PacePatrolAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_firingDistance)))))

    
(unless (fboundp 'jm_setFiringDistance_1) (defgeneric jm_setFiringDistance_1 (this p1)))
(defmethod jm_setFiringDistance_1 ((this PacePatrolAI) _firingDistance)
  (declare (ignorable this _firingDistance))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_firingDistance) _firingDistance))))



