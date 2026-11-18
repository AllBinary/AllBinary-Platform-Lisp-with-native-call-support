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

(defclass TopUBoundBounceAIFactory (JObject)
  ())

(defun TopUBoundBounceAIFactory.jnew_0 ()
  (let ((this (make-instance 'TopUBoundBounceAIFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_3) (defgeneric jm_getInstance_3 (this p1 p2 p3)))
(defmethod jm_getInstance_3 ((this TopUBoundBounceAIFactory) _hashtable _ownerLayerInterface _gameInput)
  (declare (ignorable this _hashtable _ownerLayerInterface _gameInput))
  (let (_velocityInterfaceCompositeInterface _velocityInterface _maxDistancePerTick _halfWidth _halfHeight _point _displayInfo _rectangle)
  (declare (ignorable _velocityInterfaceCompositeInterface _velocityInterface _maxDistancePerTick _halfWidth _halfHeight _point _displayInfo _rectangle))
    (block jreturn
        (setf _velocityInterfaceCompositeInterface _ownerLayerInterface)
        (setf _velocityInterface (jm_getVelocityProperties_0 _velocityInterfaceCompositeInterface))
        (setf _maxDistancePerTick (ash (jm_getMaxForwardVelocity_0 _velocityInterface) (- (logand (jm_getScaledFactor_0 (jm_getVelocityXBasicDecimalP_0 _velocityInterface)) 31))))
        (setf _halfWidth (JR.i32 (+ (JR.i32 (+ (JR.i32 (* (jm_getWidth_0 _ownerLayerInterface) 2)) _maxDistancePerTick)) 1)))
        (setf _halfHeight (JR.i32 (+ (JR.i32 (+ (JR.i32 (* (jm_getHeight_0 _ownerLayerInterface) 2)) _maxDistancePerTick)) 1)))
        (setf _point (jm_createXY_2 (PointFactory.jm_getInstance_0) _halfWidth (JR.i32 (+ _halfHeight 60))))
        (setf _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (setf _rectangle (Rectangle.jnew_3 _point (JR.i32 (- (JR.i32 (- (jm_getLastWidth_0 _displayInfo) _halfWidth)) (jm_getX_0 _point))) (JR.i32 (- (JR.i32 (- (jm_getLastHeight_0 _displayInfo) _halfHeight)) (jm_getY_0 _point)))))
        (return-from jreturn (BoundBounceAI.jnew_4 _ownerLayerInterface _gameInput (TopULayerBounds.jnew_1 _rectangle) (ReverseVelocityBoundsVisitor.jnew_1 _ownerLayerInterface))))))



