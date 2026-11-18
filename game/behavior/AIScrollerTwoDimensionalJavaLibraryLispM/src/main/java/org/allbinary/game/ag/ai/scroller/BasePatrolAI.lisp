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

(defclass BasePatrolAI (BasicAI)
  ((f_maxDistance :initform nil)
   (f_currentDistance :initform 0)
   (f_xTotalDistance :initform 0)
   (f_lastKeyDirection :initform 0)
   (f_keyDirection :initform 0)))

(defvar BasePatrolAI.jcell_MAX_DISTANCE :jnone)
(defun BasePatrolAI.jstatic_MAX_DISTANCE ()
  (when (eq BasePatrolAI.jcell_MAX_DISTANCE :jnone) (setf BasePatrolAI.jcell_MAX_DISTANCE (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 2)))
  BasePatrolAI.jcell_MAX_DISTANCE)
(defun (setf BasePatrolAI.jstatic_MAX_DISTANCE) (value) (setf BasePatrolAI.jcell_MAX_DISTANCE value))

(defvar BasePatrolAI.jcell_DIRECTION_ARRAY :jnone)
(defun BasePatrolAI.jstatic_DIRECTION_ARRAY ()
  (when (eq BasePatrolAI.jcell_DIRECTION_ARRAY :jnone) (setf BasePatrolAI.jcell_DIRECTION_ARRAY (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 3)))
  BasePatrolAI.jcell_DIRECTION_ARRAY)
(defun (setf BasePatrolAI.jstatic_DIRECTION_ARRAY) (value) (setf BasePatrolAI.jcell_DIRECTION_ARRAY value))

(defvar BasePatrolAI.jcell_FIRING_DISTANCE :jnone)
(defun BasePatrolAI.jstatic_FIRING_DISTANCE ()
  (when (eq BasePatrolAI.jcell_FIRING_DISTANCE :jnone) (setf BasePatrolAI.jcell_FIRING_DISTANCE (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 4)))
  BasePatrolAI.jcell_FIRING_DISTANCE)
(defun (setf BasePatrolAI.jstatic_FIRING_DISTANCE) (value) (setf BasePatrolAI.jcell_FIRING_DISTANCE value))

(defvar BasePatrolAI.jcell_SPEED :jnone)
(defun BasePatrolAI.jstatic_SPEED ()
  (when (eq BasePatrolAI.jcell_SPEED :jnone) (setf BasePatrolAI.jcell_SPEED (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 5)))
  BasePatrolAI.jcell_SPEED)
(defun (setf BasePatrolAI.jstatic_SPEED) (value) (setf BasePatrolAI.jcell_SPEED value))

    
(defun BasePatrolAI.jnew_3 (_hashtable _ownerLayerInterface _gameInput)
  (declare (ignorable _hashtable _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'BasePatrolAI)))
    
    
    
    (setf (slot-value this 'f_lastKeyDirection) (Canvas.jstatic_RIGHT))
    (setf (slot-value this 'f_keyDirection) (Canvas.jstatic_RIGHT))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_maxDistance) (jm_get_1 _hashtable (BasePatrolAI.jstatic_MAX_DISTANCE)))
        (setf (slot-value this 'f_currentDistance) (jm_intValue_0 (slot-value this 'f_maxDistance)))))
    this))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this BasePatrolAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_updateTotalDistance_0 this)
        (jm_changeDirectionIfReachedPacingAreaMax_0 this))))

    
(unless (fboundp 'jm_updateTotalDistance_0) (defgeneric jm_updateTotalDistance_0 (this)))
(defmethod jm_updateTotalDistance_0 ((this BasePatrolAI))
  (declare (ignorable this))
  (let (_velocityInterfaceCompositeInterface _velocityProperties)
  (declare (ignorable _velocityInterfaceCompositeInterface _velocityProperties))
    (block jreturn
        (setf _velocityInterfaceCompositeInterface (jm_getOwnerLayerInterface_0 this))
        (setf _velocityProperties (jm_getVelocityProperties_0 _velocityInterfaceCompositeInterface))
        (setf (slot-value this 'f_xTotalDistance) (JR.i32 (+ (slot-value this 'f_xTotalDistance) (jm_getScaled_0 (jm_getVelocityXBasicDecimalP_0 _velocityProperties))))))))

    
(unless (fboundp 'jm_changeDirectionIfReachedPacingAreaMax_0) (defgeneric jm_changeDirectionIfReachedPacingAreaMax_0 (this)))
(defmethod jm_changeDirectionIfReachedPacingAreaMax_0 ((this BasePatrolAI))
  (declare (ignorable this))
  (let (_mathUtil _totalDistance)
  (declare (ignorable _mathUtil _totalDistance))
    (block jreturn
        (setf _mathUtil (MathUtil.jm_getInstance_0))
        (setf _totalDistance (jm_abs_1 _mathUtil (slot-value this 'f_xTotalDistance)))
        (if (> _totalDistance (slot-value this 'f_currentDistance))
            (progn
            (jm_nextDirection_0 this))))))

    
(unless (fboundp 'jm_nextDirection_0) (defgeneric jm_nextDirection_0 (this)))
(defmethod jm_nextDirection_0 ((this BasePatrolAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (= (slot-value this 'f_lastKeyDirection) (Canvas.jstatic_LEFT))
            (progn
            (setf (slot-value this 'f_keyDirection) (Canvas.jstatic_RIGHT))
            (setf (slot-value this 'f_lastKeyDirection) (slot-value this 'f_keyDirection))
            (setf (slot-value this 'f_xTotalDistance) 0))
            (if (= (slot-value this 'f_lastKeyDirection) (Canvas.jstatic_RIGHT))
            (progn
            (setf (slot-value this 'f_keyDirection) (Canvas.jstatic_LEFT))
            (setf (slot-value this 'f_lastKeyDirection) (slot-value this 'f_keyDirection))
            (setf (slot-value this 'f_xTotalDistance) 0)))))))

    
(unless (fboundp 'jm_disable_0) (defgeneric jm_disable_0 (this)))
(defmethod jm_disable_0 ((this BasePatrolAI))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



