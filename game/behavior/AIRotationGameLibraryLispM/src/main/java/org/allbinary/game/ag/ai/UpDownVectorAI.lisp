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

(defclass UpDownVectorAI (BasicAI)
  ((f_velocityInterface :initform nil)
   (f_index :initform 0)))

    
(defun UpDownVectorAI.jnew_2 (_ownerLayerInterface _gameInput)
  (declare (ignorable _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'UpDownVectorAI)))
    
    (setf (slot-value this 'f_index) 0)
  (let (_velocityInterfaceCompositeInterface)
  (declare (ignorable _velocityInterfaceCompositeInterface))
    (block jreturn
        nil
        (setf _velocityInterfaceCompositeInterface (jm_getOwnerLayerInterface_0 this))
        (setf (slot-value this 'f_velocityInterface) (jm_getVelocityProperties_0 _velocityInterfaceCompositeInterface))
        (jm_setint_1 (jm_getVelocityYBasicDecimalP_0 (slot-value this 'f_velocityInterface)) 0)))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this UpDownVectorAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_y _basicDecimal)
  (declare (ignorable _y _basicDecimal))
    (block jreturn
        (setf _y (JR.i32 (* (jm_getHeight_0 (jm_getOwnerLayerInterface_0 this)) 270)))
        (if (< (slot-value this 'f_index) 5)
            (progn
            (setf _basicDecimal (jm_getVelocityYBasicDecimalP_0 (slot-value this 'f_velocityInterface)))
            (jm_setint_1 _basicDecimal 0)
            (jm_addint_1 _basicDecimal _y)
            (setf (slot-value this 'f_index) (JR.i32 (+ (slot-value this 'f_index) 1))))
            (if (< (slot-value this 'f_index) 10)
            (progn
            (setf _basicDecimal (jm_getVelocityYBasicDecimalP_0 (slot-value this 'f_velocityInterface)))
            (jm_setint_1 _basicDecimal 0)
            (jm_subtractint_1 _basicDecimal _y)
            (setf (slot-value this 'f_index) (JR.i32 (+ (slot-value this 'f_index) 1))))
            (progn
            (setf (slot-value this 'f_index) 0)
            (jm_processAI_1 this _allBinaryLayerManager)))))))



