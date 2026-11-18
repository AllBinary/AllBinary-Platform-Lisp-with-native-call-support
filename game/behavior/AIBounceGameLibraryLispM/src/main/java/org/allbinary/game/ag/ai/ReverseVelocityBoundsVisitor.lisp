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

(defclass ReverseVelocityBoundsVisitor (JObject)
  ((f_logUtil :initform nil)
   (f_velocityInterface :initform nil)
   (f_layerInterface :initform nil)))

    
(defun ReverseVelocityBoundsVisitor.jnew_1 (_layerInterface)
  (declare (ignorable _layerInterface))
  (let ((this (make-instance 'ReverseVelocityBoundsVisitor)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    
  (let (_velocityInterfaceCompositeInterface)
  (declare (ignorable _velocityInterfaceCompositeInterface))
    (block jreturn
        (setf (slot-value this 'f_layerInterface) _layerInterface)
        (setf _velocityInterfaceCompositeInterface _layerInterface)
        (setf (slot-value this 'f_velocityInterface) (jm_getVelocityProperties_0 _velocityInterfaceCompositeInterface))))
    this))

    
(unless (fboundp 'jm_getX_0) (defgeneric jm_getX_0 (this)))
(defmethod jm_getX_0 ((this ReverseVelocityBoundsVisitor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getXP_0 (slot-value this 'f_layerInterface))))))

    
(unless (fboundp 'jm_getY_0) (defgeneric jm_getY_0 (this)))
(defmethod jm_getY_0 ((this ReverseVelocityBoundsVisitor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getYP_0 (slot-value this 'f_layerInterface))))))

    
(unless (fboundp 'jm_minX_0) (defgeneric jm_minX_0 (this)))
(defmethod jm_minX_0 ((this ReverseVelocityBoundsVisitor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (< (jm_getUnscaled_0 (jm_getVelocityXBasicDecimalP_0 (slot-value this 'f_velocityInterface))) 0)
            (progn
            (jm_multiplyint_1 (jm_getVelocityXBasicDecimalP_0 (slot-value this 'f_velocityInterface)) (JR.i32 (- 1))))))))

    
(unless (fboundp 'jm_maxX_0) (defgeneric jm_maxX_0 (this)))
(defmethod jm_maxX_0 ((this ReverseVelocityBoundsVisitor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (> (jm_getUnscaled_0 (jm_getVelocityXBasicDecimalP_0 (slot-value this 'f_velocityInterface))) 0)
            (progn
            (jm_multiplyint_1 (jm_getVelocityXBasicDecimalP_0 (slot-value this 'f_velocityInterface)) (JR.i32 (- 1))))))))

    
(unless (fboundp 'jm_minY_0) (defgeneric jm_minY_0 (this)))
(defmethod jm_minY_0 ((this ReverseVelocityBoundsVisitor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (< (jm_getUnscaled_0 (jm_getVelocityYBasicDecimalP_0 (slot-value this 'f_velocityInterface))) 0)
            (progn
            (jm_multiplyint_1 (jm_getVelocityYBasicDecimalP_0 (slot-value this 'f_velocityInterface)) (JR.i32 (- 1))))))))

    
(unless (fboundp 'jm_maxY_0) (defgeneric jm_maxY_0 (this)))
(defmethod jm_maxY_0 ((this ReverseVelocityBoundsVisitor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (> (jm_getUnscaled_0 (jm_getVelocityYBasicDecimalP_0 (slot-value this 'f_velocityInterface))) 0)
            (progn
            (jm_multiplyint_1 (jm_getVelocityYBasicDecimalP_0 (slot-value this 'f_velocityInterface)) (JR.i32 (- 1))))))))



