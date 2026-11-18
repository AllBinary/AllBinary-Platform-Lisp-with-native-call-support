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

(defclass ScrollOverAllowOutsideAtEndAI (BasicAI)
  ())

    
(defun ScrollOverAllowOutsideAtEndAI.jnew_2 (_ownerLayerInterface _gameInput)
  (declare (ignorable _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'ScrollOverAllowOutsideAtEndAI)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this ScrollOverAllowOutsideAtEndAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_ownerLayerInterface _x _y _width _height _displayInfo)
  (declare (ignorable _ownerLayerInterface _x _y _width _height _displayInfo))
    (block jreturn
        (setf _ownerLayerInterface (jm_getOwnerLayerInterface_0 this))
        (setf _x (jm_getXP_0 _ownerLayerInterface))
        (setf _y (jm_getYP_0 _ownerLayerInterface))
        (setf _width (jm_getWidth_0 _ownerLayerInterface))
        (setf _height (jm_getHeight_0 _ownerLayerInterface))
        (setf _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (if (> _x (jm_getLastWidth_0 _displayInfo))
            (progn
            (jm_setPosition_3 _ownerLayerInterface (JR.i32 (- _width)) _y (jm_getZP_0 _ownerLayerInterface))))
        (if (> _y (jm_getLastHeight_0 _displayInfo))
            (progn
            (jm_setPosition_3 _ownerLayerInterface _x (JR.i32 (- _height)) (jm_getZP_0 _ownerLayerInterface))))
        (if (< _x (JR.i32 (- _width)))
            (progn
            (jm_setPosition_3 _ownerLayerInterface (JR.i32 (+ (jm_getLastWidth_0 _displayInfo) _width)) _y (jm_getZP_0 _ownerLayerInterface))))
        (if (< _y (JR.i32 (- _height)))
            (progn
            (jm_setPosition_3 _ownerLayerInterface _x (JR.i32 (+ (jm_getLastHeight_0 _displayInfo) _height)) (jm_getZP_0 _ownerLayerInterface)))))))



