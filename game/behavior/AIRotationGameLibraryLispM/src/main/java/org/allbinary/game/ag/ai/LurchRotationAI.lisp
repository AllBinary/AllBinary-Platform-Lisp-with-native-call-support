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

(defclass LurchRotationAI (LurchAI)
  ((f_rotationAnimationInterface :initform nil)))

    
(defun LurchRotationAI.jnew_2 (_ownerLayerInterface _gameInput)
  (declare (ignorable _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'LurchRotationAI)))
    
  (let (_rotationAnimationInterfaceCompositeInterface)
  (declare (ignorable _rotationAnimationInterfaceCompositeInterface))
    (block jreturn
        nil
        (setf _rotationAnimationInterfaceCompositeInterface (jm_getOwnerLayerInterface_0 this))
        (setf (slot-value this 'f_rotationAnimationInterface) (jm_getRotationAnimationInterface_0 _rotationAnimationInterfaceCompositeInterface))
        (jm_update_0 this)))
    this))

    
(unless (fboundp 'jm_reverse_0) (defgeneric jm_reverse_0 (this)))
(defmethod jm_reverse_0 ((this LurchRotationAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (call-next-method this)
        (jm_update_0 this))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this LurchRotationAI))
  (declare (ignorable this))
  (let (_rotationAnimationInterface _angleIncrementInfo _rotationAnimationInterfaceCompositeInterface)
  (declare (ignorable _rotationAnimationInterface _angleIncrementInfo _rotationAnimationInterfaceCompositeInterface))
    (block jreturn
        (if (eq (slot-value this 'f_currentRelativeAngle) 0)
            (progn
            (setf _rotationAnimationInterface (slot-value this 'f_rotationAnimationInterface))
            (setf _angleIncrementInfo (jm_getAngleIncrementInfo_0 (jm_getAngleInfoP_0 _rotationAnimationInterface)))
            (setf _rotationAnimationInterfaceCompositeInterface (jm_getOwnerLayerInterface_0 this))
            (jm_setFrame_1 _rotationAnimationInterfaceCompositeInterface (jm_intValue_0 (slot-value _angleIncrementInfo 'f_RIGHT_FRAME))))
            (if (eq (slot-value this 'f_currentRelativeAngle) 180)
            (progn
            (setf _rotationAnimationInterface (slot-value this 'f_rotationAnimationInterface))
            (setf _angleIncrementInfo (jm_getAngleIncrementInfo_0 (jm_getAngleInfoP_0 _rotationAnimationInterface)))
            (setf _rotationAnimationInterfaceCompositeInterface (jm_getOwnerLayerInterface_0 this))
            (jm_setFrame_1 _rotationAnimationInterfaceCompositeInterface (jm_intValue_0 (slot-value _angleIncrementInfo 'f_LEFT_FRAME)))))))))



