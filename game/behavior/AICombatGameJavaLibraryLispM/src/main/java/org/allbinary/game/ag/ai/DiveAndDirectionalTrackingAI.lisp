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
;;;; package org.allbinary.game.ag.ai

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DiveAndDirectionalTrackingAI (BasicAI)
  ((f_mathUtil :initform nil)
   (f_directionFactory :initform nil)
   (f_gameTickTimeDelayHelper :initform nil)
   (f_timeDelayHelper :initform nil)
   (f_list :initform nil)
   (f_directionalInterface :initform nil)
   (f_velocityInterface :initform nil)
   (f_directionToKeyMap :initform nil)
   (f_initialDropped :initform nil)
   (f_diveP :initform nil)
   (f_directionOfTarget :initform nil)
   (f_MIN_DISTANCE :initform 0)
   (f_lastTrackingLayerInterface :initform nil)
   (f_artificialIntelligenceInterface :initform nil)
   (f_aiVistor :initform nil)
   (f_lastDirection :initform nil)))

    
(defun DiveAndDirectionalTrackingAI.jnew_4 (_ownerLayerInterface _artificialIntelligenceInterface _gameInput _visitor)
  (declare (ignorable _ownerLayerInterface _artificialIntelligenceInterface _gameInput _visitor))
  (let ((this (make-instance 'DiveAndDirectionalTrackingAI)))
    (setf (slot-value this 'f_mathUtil) (MathUtil.jm_getInstance_0))
    (setf (slot-value this 'f_directionFactory) (DirectionFactory.jm_getInstance_0))
    (setf (slot-value this 'f_gameTickTimeDelayHelper) (GameTickTimeDelayHelperFactory.jm_getInstance_0))
    (setf (slot-value this 'f_timeDelayHelper) (TimeDelayHelper.jnew_1 500))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    
    
    (setf (slot-value this 'f_directionToKeyMap) (vector (Canvas.jstatic_LEFT) (Canvas.jstatic_DOWN) (Canvas.jstatic_UP) (Canvas.jstatic_RIGHT)))
    
    
    (setf (slot-value this 'f_directionOfTarget) (Direction.jm_getInstance_1 0))
    (setf (slot-value this 'f_MIN_DISTANCE) 40)
    (setf (slot-value this 'f_lastTrackingLayerInterface) (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
    
    
    (setf (slot-value this 'f_lastDirection) (slot-value (DirectionFactory.jm_getInstance_0) 'f_NO_DIRECTION))
  (let (_directionalCompositeInterface _velocityInterfaceCompositeInterface)
  (declare (ignorable _directionalCompositeInterface _velocityInterfaceCompositeInterface))
    (block jreturn
        nil
        (setf (slot-value this 'f_aiVistor) _visitor)
        (setf (slot-value this 'f_artificialIntelligenceInterface) _artificialIntelligenceInterface)
        (setf _directionalCompositeInterface (jm_getOwnerLayerInterface_0 this))
        (setf (slot-value this 'f_directionalInterface) (jm_getDirectionalInterface_0 _directionalCompositeInterface))
        (setf _velocityInterfaceCompositeInterface (jm_getOwnerLayerInterface_0 this))
        (setf (slot-value this 'f_velocityInterface) (jm_getVelocityProperties_0 _velocityInterfaceCompositeInterface))
        (jm_addListenerInterface_1 (DestroyedEventHandler.jm_getInstance_0) this)
        (jm_init_0 this)))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this DiveAndDirectionalTrackingAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let ()
    (block jreturn
        (if (jm_isBeyondTarget_0 this)
            (progn
            (jm_init_0 this)
            (jm_zero_0 (slot-value this 'f_velocityInterface))))
        (if (not (slot-value this 'f_diveP))
            (progn
            (jm_target_1 this _allBinaryLayerManager))
            (progn
            (jm_dive_0 this)
            (jm_attack_0 this)))
        (jm_clear_0 (slot-value this 'f_list)))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this DiveAndDirectionalTrackingAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_diveP) nil)
        (setf (slot-value this 'f_directionOfTarget) (slot-value (DirectionFactory.jm_getInstance_0) 'f_NOT_BORDERED_WITH))
        (jm_addListenerInterface_1 (TrackingEventHandler.jm_getInstance_0) this))))

    
(unless (fboundp 'jm_target_1) (defgeneric jm_target_1 (this p1)))
(defmethod jm_target_1 ((this DiveAndDirectionalTrackingAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_lastTrackingEvent _layerInterface _ownerLayerInterface _groupArray _ownerGroupArray _x _y _yDistance _xDistance _directionFactory)
  (declare (ignorable _lastTrackingEvent _layerInterface _ownerLayerInterface _groupArray _ownerGroupArray _x _y _yDistance _xDistance _directionFactory))
    (block jreturn
        (if (= (jm_size_0 (slot-value this 'f_list)) 0)
            (progn
            (return-from jreturn)))
        (setf _lastTrackingEvent (jm_removeAt_1 (slot-value this 'f_list) 0))
        (setf (slot-value this 'f_lastTrackingLayerInterface) (jm_getLayerInterface_0 _lastTrackingEvent))
        (setf _layerInterface (slot-value this 'f_lastTrackingLayerInterface))
        (setf _ownerLayerInterface (jm_getOwnerLayerInterface_0 this))
        (setf _groupArray (jm_getGroupInterface_0 _layerInterface))
        (setf _ownerGroupArray (jm_getGroupInterface_0 _ownerLayerInterface))
        (if (eq _groupArray _ownerGroupArray)
            (progn
            (return-from jreturn)))
        (setf _x (jm_getXP_0 (slot-value this 'f_lastTrackingLayerInterface)))
        (setf _y (jm_getYP_0 (slot-value this 'f_lastTrackingLayerInterface)))
        (setf _yDistance (JR.i32 (- (JR.i32 (- (jm_getYP_0 _ownerLayerInterface) _y)) (jm_getHeight_0 _ownerLayerInterface))))
        (setf _xDistance (JR.i32 (- (JR.i32 (- (jm_getXP_0 _ownerLayerInterface) _x)) (jm_getWidth_0 _ownerLayerInterface))))
        (setf _directionFactory (DirectionFactory.jm_getInstance_0))
        (if (> (jm_abs_1 (slot-value this 'f_mathUtil) _yDistance) (jm_abs_1 (slot-value this 'f_mathUtil) _xDistance))
            (progn
            (if (> _yDistance (slot-value this 'f_MIN_DISTANCE))
                (progn
                (setf (slot-value this 'f_directionOfTarget) (slot-value _directionFactory 'f_UP)))
                (if (< _yDistance (JR.i32 (- (slot-value this 'f_MIN_DISTANCE))))
                (progn
                (setf (slot-value this 'f_directionOfTarget) (slot-value _directionFactory 'f_DOWN))))))
            (progn
            (if (> _xDistance (slot-value this 'f_MIN_DISTANCE))
                (progn
                (setf (slot-value this 'f_directionOfTarget) (slot-value _directionFactory 'f_LEFT)))
                (if (< _xDistance (JR.i32 (- (slot-value this 'f_MIN_DISTANCE))))
                (progn
                (setf (slot-value this 'f_directionOfTarget) (slot-value _directionFactory 'f_RIGHT)))))))
        (if (and (not (slot-value this 'f_initialDropped)) (not (eq (slot-value this 'f_directionOfTarget) (slot-value _directionFactory 'f_NOT_BORDERED_WITH))))
            (progn
            (jm_drop_0 this)))
        (if (slot-value this 'f_initialDropped)
            (progn
            (if (or (eq (slot-value this 'f_directionOfTarget) (slot-value _directionFactory 'f_UP)) (eq (slot-value this 'f_directionOfTarget) (slot-value _directionFactory 'f_DOWN)))
                (progn
                (jm_verticalTargeting_1 this _x))
                (if (or (eq (slot-value this 'f_directionOfTarget) (slot-value _directionFactory 'f_LEFT)) (eq (slot-value this 'f_directionOfTarget) (slot-value _directionFactory 'f_RIGHT)))
                (progn
                (jm_horizontalTargeting_1 this _y))
                (progn
                (jm_processAI_1 (slot-value this 'f_artificialIntelligenceInterface) _allBinaryLayerManager)))))))))

    
(unless (fboundp 'jm_verticalTargeting_1) (defgeneric jm_verticalTargeting_1 (this p1)))
(defmethod jm_verticalTargeting_1 ((this DiveAndDirectionalTrackingAI) _x)
  (declare (ignorable this _x))
  (let (_ownerLayerInterface)
  (declare (ignorable _ownerLayerInterface))
    (block jreturn
        (setf _ownerLayerInterface (jm_getOwnerLayerInterface_0 this))
        (if (< (jm_getXP_0 _ownerLayerInterface) _x)
            (progn
            (jm_moveRight_0 this)))
        (if (> (jm_getXP_0 _ownerLayerInterface) _x)
            (progn
            (jm_moveLeft_0 this)))
        (if (and (> (jm_getXP_0 _ownerLayerInterface) (JR.i32 (- _x 3))) (< (jm_getXP_0 _ownerLayerInterface) (JR.i32 (+ _x 3))))
            (progn
            (jm_setDive_0 this))))))

    
(unless (fboundp 'jm_horizontalTargeting_1) (defgeneric jm_horizontalTargeting_1 (this p1)))
(defmethod jm_horizontalTargeting_1 ((this DiveAndDirectionalTrackingAI) _y)
  (declare (ignorable this _y))
  (let (_ownerLayerInterface)
  (declare (ignorable _ownerLayerInterface))
    (block jreturn
        (setf _ownerLayerInterface (jm_getOwnerLayerInterface_0 this))
        (if (< (jm_getYP_0 _ownerLayerInterface) _y)
            (progn
            (jm_moveDown_0 this)))
        (if (> (jm_getYP_0 _ownerLayerInterface) _y)
            (progn
            (jm_moveUp_0 this)))
        (if (and (> (jm_getYP_0 _ownerLayerInterface) (JR.i32 (- _y 3))) (< (jm_getYP_0 _ownerLayerInterface) (JR.i32 (+ _y 3))))
            (progn
            (jm_setDive_0 this))))))

    
(unless (fboundp 'jm_setDive_0) (defgeneric jm_setDive_0 (this)))
(defmethod jm_setDive_0 ((this DiveAndDirectionalTrackingAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_diveP) t)
        (jm_zero_0 (slot-value this 'f_velocityInterface))
        (jm_removeListener_1 (TrackingEventHandler.jm_getInstance_0) this))))

    
(unless (fboundp 'jm_moveRight_0) (defgeneric jm_moveRight_0 (this)))
(defmethod jm_moveRight_0 ((this DiveAndDirectionalTrackingAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setLastDirection_1 this (slot-value (slot-value this 'f_directionFactory) 'f_RIGHT))
        (jm_setFrameByDirection_1 (slot-value this 'f_directionalInterface) (slot-value this 'f_lastDirection))
        (jm_visit_1 (slot-value this 'f_aiVistor) this))))

    
(unless (fboundp 'jm_moveLeft_0) (defgeneric jm_moveLeft_0 (this)))
(defmethod jm_moveLeft_0 ((this DiveAndDirectionalTrackingAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setLastDirection_1 this (slot-value (slot-value this 'f_directionFactory) 'f_LEFT))
        (jm_setFrameByDirection_1 (slot-value this 'f_directionalInterface) (slot-value this 'f_lastDirection))
        (jm_visit_1 (slot-value this 'f_aiVistor) this))))

    
(unless (fboundp 'jm_moveDown_0) (defgeneric jm_moveDown_0 (this)))
(defmethod jm_moveDown_0 ((this DiveAndDirectionalTrackingAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setLastDirection_1 this (slot-value (slot-value this 'f_directionFactory) 'f_DOWN))
        (jm_setFrameByDirection_1 (slot-value this 'f_directionalInterface) (slot-value this 'f_lastDirection))
        (jm_visit_1 (slot-value this 'f_aiVistor) this))))

    
(unless (fboundp 'jm_moveUp_0) (defgeneric jm_moveUp_0 (this)))
(defmethod jm_moveUp_0 ((this DiveAndDirectionalTrackingAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setLastDirection_1 this (slot-value (slot-value this 'f_directionFactory) 'f_UP))
        (jm_setFrameByDirection_1 (slot-value this 'f_directionalInterface) (slot-value this 'f_lastDirection))
        (jm_visit_1 (slot-value this 'f_aiVistor) this))))

    
(unless (fboundp 'jm_dive_0) (defgeneric jm_dive_0 (this)))
(defmethod jm_dive_0 ((this DiveAndDirectionalTrackingAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setFrameByDirection_1 (slot-value this 'f_directionalInterface) (slot-value this 'f_directionOfTarget))
        (jm_visit_1 (slot-value this 'f_aiVistor) this))))

    
(unless (fboundp 'jm_attack_0) (defgeneric jm_attack_0 (this)))
(defmethod jm_attack_0 ((this DiveAndDirectionalTrackingAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_processKeyAI_1 this (Canvas.jstatic_KEY_NUM1)))))

    
(unless (fboundp 'jm_drop_0) (defgeneric jm_drop_0 (this)))
(defmethod jm_drop_0 ((this DiveAndDirectionalTrackingAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (jm_isTime_1 (slot-value this 'f_timeDelayHelper) (slot-value (slot-value this 'f_gameTickTimeDelayHelper) 'f_startTime))
            (progn
            (setf (slot-value this 'f_initialDropped) t)
            (jm_visit_1 (slot-value this 'f_aiVistor) this))))))

    
(unless (fboundp 'jm_isBeyondTarget_0) (defgeneric jm_isBeyondTarget_0 (this)))
(defmethod jm_isBeyondTarget_0 ((this DiveAndDirectionalTrackingAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (eq (slot-value this 'f_directionOfTarget) (slot-value (slot-value this 'f_directionFactory) 'f_DOWN))
            (progn
            (if (> (jm_getYP_0 (jm_getOwnerLayerInterface_0 this)) (JR.i32 (+ (jm_getYP_0 (slot-value this 'f_lastTrackingLayerInterface)) (slot-value this 'f_MIN_DISTANCE))))
                (progn
                (return-from jreturn t))
                (progn
                (return-from jreturn nil))))
            (if (eq (slot-value this 'f_directionOfTarget) (slot-value (slot-value this 'f_directionFactory) 'f_UP))
            (progn
            (if (< (jm_getYP_0 (jm_getOwnerLayerInterface_0 this)) (JR.i32 (+ (jm_getYP_0 (slot-value this 'f_lastTrackingLayerInterface)) (slot-value this 'f_MIN_DISTANCE))))
                (progn
                (return-from jreturn t))
                (progn
                (return-from jreturn nil))))
            (if (eq (slot-value this 'f_directionOfTarget) (slot-value (slot-value this 'f_directionFactory) 'f_RIGHT))
            (progn
            (if (> (jm_getXP_0 (jm_getOwnerLayerInterface_0 this)) (JR.i32 (+ (jm_getXP_0 (slot-value this 'f_lastTrackingLayerInterface)) (slot-value this 'f_MIN_DISTANCE))))
                (progn
                (return-from jreturn t))
                (progn
                (return-from jreturn nil))))
            (if (eq (slot-value this 'f_directionOfTarget) (slot-value (slot-value this 'f_directionFactory) 'f_LEFT))
            (progn
            (if (< (jm_getXP_0 (jm_getOwnerLayerInterface_0 this)) (JR.i32 (+ (jm_getXP_0 (slot-value this 'f_lastTrackingLayerInterface)) (slot-value this 'f_MIN_DISTANCE))))
                (progn
                (return-from jreturn t))
                (progn
                (return-from jreturn nil))))
            (progn
            (return-from jreturn nil)))))))))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this DiveAndDirectionalTrackingAI) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onMovement_1) (defgeneric jm_onMovement_1 (this p1)))
(defmethod jm_onMovement_1 ((this DiveAndDirectionalTrackingAI) _trackingEvent)
  (declare (ignorable this _trackingEvent))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_list) _trackingEvent))))

    
(unless (fboundp 'jm_onDestroyed_1) (defgeneric jm_onDestroyed_1 (this p1)))
(defmethod jm_onDestroyed_1 ((this DiveAndDirectionalTrackingAI) _destroyedEvent)
  (declare (ignorable this _destroyedEvent))
  (let ()
    (block jreturn
        (if (eq (jm_getOwnerLayerInterface_0 this) (jm_getLayerInterface_0 _destroyedEvent))
            (progn
            (jm_removeListener_1 (TrackingEventHandler.jm_getInstance_0) this)
            (jm_removeListener_1 (DestroyedEventHandler.jm_getInstance_0) this))))))

    
(unless (fboundp 'jm_setLastDirection_1) (defgeneric jm_setLastDirection_1 (this p1)))
(defmethod jm_setLastDirection_1 ((this DiveAndDirectionalTrackingAI) _lastDirection)
  (declare (ignorable this _lastDirection))
  (let (_value)
  (declare (ignorable _value))
    (block jreturn
        (setf (slot-value this 'f_lastDirection) _lastDirection)
        (setf _value (jm_getValue_0 (jm_getLastDirection_0 this)))
        (if (< _value 4)
            (progn
            (jm_setLastKey_1 this (aref (slot-value this 'f_directionToKeyMap) _value)))))))

    
(unless (fboundp 'jm_setLastKey_1) (defgeneric jm_setLastKey_1 (this p1)))
(defmethod jm_setLastKey_1 ((this DiveAndDirectionalTrackingAI) _lastKey)
  (declare (ignorable this _lastKey))
  (let ()
    (block jreturn
        (call-next-method this _lastKey)
        (if (eq (jm_getLastKey_0 this) (Canvas.jstatic_LEFT))
            (progn
            (setf (slot-value this 'f_lastDirection) (slot-value (DirectionFactory.jm_getInstance_0) 'f_LEFT)))
            (if (eq (jm_getLastKey_0 this) (Canvas.jstatic_DOWN))
            (progn
            (setf (slot-value this 'f_lastDirection) (slot-value (DirectionFactory.jm_getInstance_0) 'f_DOWN)))
            (if (eq (jm_getLastKey_0 this) (Canvas.jstatic_UP))
            (progn
            (setf (slot-value this 'f_lastDirection) (slot-value (DirectionFactory.jm_getInstance_0) 'f_UP)))
            (if (eq (jm_getLastKey_0 this) (Canvas.jstatic_RIGHT))
            (progn
            (setf (slot-value this 'f_lastDirection) (slot-value (DirectionFactory.jm_getInstance_0) 'f_RIGHT))))))))))

    
(unless (fboundp 'jm_getLastDirection_0) (defgeneric jm_getLastDirection_0 (this)))
(defmethod jm_getLastDirection_0 ((this DiveAndDirectionalTrackingAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_lastDirection)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this DiveAndDirectionalTrackingAI))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (call-next-method this))
        (jm_append_1 _stringBuffer " LastDirection: ")
        (jm_append_1 _stringBuffer (jm_toString_1 (StringUtil.jm_getInstance_0) (jm_getLastDirection_0 this)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



