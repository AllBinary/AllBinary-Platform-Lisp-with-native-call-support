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

(defclass HorizontaRotationManeuverAI (BasicAI)
  ((f_circularIndexUtil :initform nil)
   (f_currentSpeedDivisor :initform 0)
   (f_rotationAnimationInterface :initform nil)
   (f_baseVelocityInterface :initform nil)
   (f_velocityInterface :initform nil)))

    
(defun HorizontaRotationManeuverAI.jnew_2 (_ownerLayerInterface _gameInput)
  (declare (ignorable _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'HorizontaRotationManeuverAI)))
    (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstanceAt_2 10 (Integer.jstatic_MAX_VALUE)))
    (setf (slot-value this 'f_currentSpeedDivisor) 5)
    
    
    
  (let (_rotationAnimationInterfaceCompositeInterface _velocityInterfaceCompositeInterface _rotationAnimationInterface _angleIncrementInfo)
  (declare (ignorable _rotationAnimationInterfaceCompositeInterface _velocityInterfaceCompositeInterface _rotationAnimationInterface _angleIncrementInfo))
    (block jreturn
        nil
        (setf _rotationAnimationInterfaceCompositeInterface (jm_getOwnerLayerInterface_0 this))
        (setf (slot-value this 'f_rotationAnimationInterface) (jm_getRotationAnimationInterface_0 _rotationAnimationInterfaceCompositeInterface))
        (setf _velocityInterfaceCompositeInterface (jm_getOwnerLayerInterface_0 this))
        (setf (slot-value this 'f_baseVelocityInterface) (jm_getVelocityProperties_0 _velocityInterfaceCompositeInterface))
        (setf (slot-value this 'f_velocityInterface) (slot-value this 'f_baseVelocityInterface))
        (setf _rotationAnimationInterface (slot-value this 'f_rotationAnimationInterface))
        (setf _angleIncrementInfo (jm_getAngleIncrementInfo_0 (jm_getAngleInfoP_0 _rotationAnimationInterface)))
        (jm_setFrame_1 _rotationAnimationInterfaceCompositeInterface (jm_intValue_0 (slot-value _angleIncrementInfo 'f_RIGHT_FRAME)))))
    this))

    
(unless (fboundp 'jm_transition_0) (defgeneric jm_transition_0 (this)))
(defmethod jm_transition_0 ((this HorizontaRotationManeuverAI))
  (declare (ignorable this))
  (let (_rotationAnimationInterface _angleIncrementInfo _rotationAnimationInterfaceCompositeInterface _allbinaryLayer)
  (declare (ignorable _rotationAnimationInterface _angleIncrementInfo _rotationAnimationInterfaceCompositeInterface _allbinaryLayer))
    (block jreturn
        (setf _rotationAnimationInterface (slot-value this 'f_rotationAnimationInterface))
        (setf _angleIncrementInfo (jm_getAngleIncrementInfo_0 (jm_getAngleInfoP_0 _rotationAnimationInterface)))
        (setf _rotationAnimationInterfaceCompositeInterface (jm_getOwnerLayerInterface_0 this))
        (jm_setFrame_1 _rotationAnimationInterfaceCompositeInterface (jm_intValue_0 (slot-value _angleIncrementInfo 'f_RIGHT_FRAME)))
        (setf _allbinaryLayer (jm_getOwnerLayerInterface_0 this))
        (jm_setPosition_3 _allbinaryLayer (jm_getXP_0 _allbinaryLayer) 1 (jm_getZP_0 _allbinaryLayer)))))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this HorizontaRotationManeuverAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_rotationAnimationInterface _angleIncrementInfo _frame _ownerLayerInterface _displayInfo _index)
  (declare (ignorable _rotationAnimationInterface _angleIncrementInfo _frame _ownerLayerInterface _displayInfo _index))
    (block jreturn
        (setf _rotationAnimationInterface (slot-value this 'f_rotationAnimationInterface))
        (setf _angleIncrementInfo (jm_getAngleIncrementInfo_0 (jm_getAngleInfoP_0 _rotationAnimationInterface)))
        (setf _frame (jm_getFrame_0 (slot-value this 'f_rotationAnimationInterface)))
        (setf _ownerLayerInterface (jm_getOwnerLayerInterface_0 this))
        (if (and (<= (JR.i32 (- (jm_getXP_0 _ownerLayerInterface) (jm_getWidth_0 _ownerLayerInterface))) 0) (= _frame (jm_intValue_0 (slot-value _angleIncrementInfo 'f_LEFT_FRAME))))
            (progn
            (jm_reverse_0 this)
            (jm_drop_0 this)))
        (setf _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (if (and (> (JR.i32 (+ (jm_getX2_0 _ownerLayerInterface) (jm_getWidth_0 _ownerLayerInterface))) (jm_getLastWidth_0 _displayInfo)) (= _frame (jm_intValue_0 (slot-value _angleIncrementInfo 'f_RIGHT_FRAME))))
            (progn
            (jm_reverse_0 this)
            (jm_accelerate_0 this)
            (jm_drop_0 this)))
        (setf _index (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))
        (if (and (= (rem _index (slot-value this 'f_currentSpeedDivisor)) 0) (= (rem _index 2) 0))
            (progn
            (jm_processKeyAI_1 this (Canvas.jstatic_UP))
            (jm_limitMaxXYVelocity_1 (slot-value this 'f_velocityInterface) (JR.idiv (jm_getMaxForwardVelocity_0 (slot-value this 'f_velocityInterface)) (slot-value this 'f_currentSpeedDivisor)))))
        (jm_next_0 (slot-value this 'f_circularIndexUtil))
        (if (= _frame (jm_intValue_0 (slot-value _angleIncrementInfo 'f_LEFT_FRAME)))
            (progn
            (jm_processKeyAI_1 this (Canvas.jstatic_KEY_NUM0)))
            (if (= _frame (jm_intValue_0 (slot-value _angleIncrementInfo 'f_RIGHT_FRAME)))
            (progn
            (jm_processKeyAI_1 this (Canvas.jstatic_KEY_POUND))))))))

    
(unless (fboundp 'jm_reverse_0) (defgeneric jm_reverse_0 (this)))
(defmethod jm_reverse_0 ((this HorizontaRotationManeuverAI))
  (declare (ignorable this))
  (let (_rotationAnimationInterface _angleIncrementInfo _frame _rotationAnimationInterfaceCompositeInterface)
  (declare (ignorable _rotationAnimationInterface _angleIncrementInfo _frame _rotationAnimationInterfaceCompositeInterface))
    (block jreturn
        (setf _rotationAnimationInterface (slot-value this 'f_rotationAnimationInterface))
        (setf _angleIncrementInfo (jm_getAngleIncrementInfo_0 (jm_getAngleInfoP_0 _rotationAnimationInterface)))
        (setf _frame (jm_getFrame_0 (slot-value this 'f_rotationAnimationInterface)))
        (if (= _frame (jm_intValue_0 (slot-value _angleIncrementInfo 'f_LEFT_FRAME)))
            (progn
            (setf _rotationAnimationInterfaceCompositeInterface (jm_getOwnerLayerInterface_0 this))
            (jm_setFrame_1 _rotationAnimationInterfaceCompositeInterface (jm_intValue_0 (slot-value _angleIncrementInfo 'f_RIGHT_FRAME)))
            (jm_zero_0 (slot-value this 'f_baseVelocityInterface)))
            (if (= _frame (jm_intValue_0 (slot-value _angleIncrementInfo 'f_RIGHT_FRAME)))
            (progn
            (setf _rotationAnimationInterfaceCompositeInterface (jm_getOwnerLayerInterface_0 this))
            (jm_setFrame_1 _rotationAnimationInterfaceCompositeInterface (jm_intValue_0 (slot-value _angleIncrementInfo 'f_LEFT_FRAME)))
            (jm_zero_0 (slot-value this 'f_baseVelocityInterface))))))))

    
(unless (fboundp 'jm_accelerate_0) (defgeneric jm_accelerate_0 (this)))
(defmethod jm_accelerate_0 ((this HorizontaRotationManeuverAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (> (slot-value this 'f_currentSpeedDivisor) 1)
            (progn
            (setf (slot-value this 'f_currentSpeedDivisor) (JR.i32 (- (slot-value this 'f_currentSpeedDivisor) 1))))))))

    
(unless (fboundp 'jm_drop_0) (defgeneric jm_drop_0 (this)))
(defmethod jm_drop_0 ((this HorizontaRotationManeuverAI))
  (declare (ignorable this))
  (let (_displayInfo _ownerLayerInterface _y)
  (declare (ignorable _displayInfo _ownerLayerInterface _y))
    (block jreturn
        (setf _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (setf _ownerLayerInterface (jm_getOwnerLayerInterface_0 this))
        (setf _y (jm_getYP_0 _ownerLayerInterface))
        (if (> (JR.i32 (+ (jm_getY2_0 _ownerLayerInterface) (jm_getHeight_0 _ownerLayerInterface))) (jm_getLastHeight_0 _displayInfo))
            (progn
            (setf _y 0))
            (progn
            (setf _y (JR.i32 (+ _y (JR.i32 (+ (jm_getHeight_0 _ownerLayerInterface) 1)))))))
        (jm_setPosition_3 _ownerLayerInterface (jm_getXP_0 _ownerLayerInterface) _y (jm_getZP_0 _ownerLayerInterface)))))

    
(unless (fboundp 'jm_getId_0) (defgeneric jm_getId_0 (this)))
(defmethod jm_getId_0 ((this HorizontaRotationManeuverAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (ArtificialIntelligence.jstatic_AI_ID)))))



