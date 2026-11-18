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
;;;; package org.allbinary.game.ag.ai.tactical

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HorizontalManeuverAI (BasicAI)
  ((f_currentRelativeAngle :initform 0)
   (f_currentSpeed :initform 0)))

    
(defun HorizontalManeuverAI.jnew_2 (_ownerLayerInterface _gameInput)
  (declare (ignorable _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'HorizontalManeuverAI)))
    (setf (slot-value this 'f_currentRelativeAngle) 0)
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_currentSpeed) 5)))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this HorizontalManeuverAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_ownerLayerInterface _x)
  (declare (ignorable _ownerLayerInterface _x))
    (block jreturn
        (setf _ownerLayerInterface (jm_getOwnerLayerInterface_0 this))
        (setf _x (jm_getXP_0 _ownerLayerInterface))
        (if (<= (JR.i32 (- (jm_getXP_0 _ownerLayerInterface) (slot-value this 'f_currentSpeed))) 0)
            (progn
            (jm_reverse_0 this)
            (jm_drop_0 this)))
        (if (> (JR.i32 (+ (jm_getX2_0 _ownerLayerInterface) (slot-value this 'f_currentSpeed))) (jm_getLastWidth_0 (DisplayInfoSingleton.jm_getInstance_0)))
            (progn
            (jm_reverse_0 this)
            (jm_accelerate_0 this)
            (jm_drop_0 this)))
        (if (= (slot-value this 'f_currentRelativeAngle) 0)
            (progn
            (setf _x (JR.i32 (+ _x (slot-value this 'f_currentSpeed)))))
            (if (= (slot-value this 'f_currentRelativeAngle) 180)
            (progn
            (setf _x (JR.i32 (- _x (slot-value this 'f_currentSpeed)))))))
        (jm_setPosition_3 _ownerLayerInterface _x (jm_getYP_0 _ownerLayerInterface) (jm_getZP_0 _ownerLayerInterface))
        (if (= (slot-value this 'f_currentRelativeAngle) 0)
            (progn
            (jm_processKeyAI_1 this (Canvas.jstatic_KEY_NUM0)))
            (if (= (slot-value this 'f_currentRelativeAngle) 180)
            (progn
            (jm_processKeyAI_1 this (Canvas.jstatic_KEY_POUND))))))))

    
(unless (fboundp 'jm_reverse_0) (defgeneric jm_reverse_0 (this)))
(defmethod jm_reverse_0 ((this HorizontalManeuverAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (= (slot-value this 'f_currentRelativeAngle) 180)
            (progn
            (setf (slot-value this 'f_currentRelativeAngle) 0))
            (if (= (slot-value this 'f_currentRelativeAngle) 0)
            (progn
            (setf (slot-value this 'f_currentRelativeAngle) 180)))))))

    
(unless (fboundp 'jm_accelerate_0) (defgeneric jm_accelerate_0 (this)))
(defmethod jm_accelerate_0 ((this HorizontalManeuverAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (< (slot-value this 'f_currentSpeed) 20)
            (progn
            (setf (slot-value this 'f_currentSpeed) (JR.i32 (+ (slot-value this 'f_currentSpeed) 1))))))))

    
(unless (fboundp 'jm_drop_0) (defgeneric jm_drop_0 (this)))
(defmethod jm_drop_0 ((this HorizontalManeuverAI))
  (declare (ignorable this))
  (let (_ownerLayerInterface _y)
  (declare (ignorable _ownerLayerInterface _y))
    (block jreturn
        (setf _ownerLayerInterface (jm_getOwnerLayerInterface_0 this))
        (setf _y (jm_getYP_0 _ownerLayerInterface))
        (if (> (JR.i32 (+ (jm_getY2_0 _ownerLayerInterface) (jm_getHeight_0 _ownerLayerInterface))) (jm_getLastHeight_0 (DisplayInfoSingleton.jm_getInstance_0)))
            (progn
            (setf _y 0))
            (progn
            (setf _y (JR.i32 (+ _y (JR.i32 (+ (jm_getHeight_0 _ownerLayerInterface) 1)))))))
        (jm_setPosition_3 _ownerLayerInterface (jm_getXP_0 _ownerLayerInterface) _y (jm_getZP_0 _ownerLayerInterface)))))



