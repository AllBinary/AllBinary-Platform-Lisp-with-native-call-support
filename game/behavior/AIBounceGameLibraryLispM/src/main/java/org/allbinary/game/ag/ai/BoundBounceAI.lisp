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

(defclass BoundBounceAI (BasicAI)
  ((f_currentRelativeAngle :initform 0)
   (f_layerBounds :initform nil)
   (f_boundsVisitorInterface :initform nil)))

    
(defun BoundBounceAI.jnew_4 (_ownerLayerInterface _gameInput _layerBounds _boundsVisitorInterface)
  (declare (ignorable _ownerLayerInterface _gameInput _layerBounds _boundsVisitorInterface))
  (let ((this (make-instance 'BoundBounceAI)))
    (setf (slot-value this 'f_currentRelativeAngle) 0)
    
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_layerBounds) _layerBounds)
        (setf (slot-value this 'f_boundsVisitorInterface) _boundsVisitorInterface)))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this BoundBounceAI) _graphics)
  (declare (ignorable this _graphics))
  (let (_rectange)
  (declare (ignorable _rectange))
    (block jreturn
        (setf _rectange (jm_getRectangleP_0 (slot-value this 'f_layerBounds)))
        (jm_drawRect_4 _graphics (jm_getX_0 (jm_getPoint_0 _rectange)) (jm_getY_0 (jm_getPoint_0 _rectange)) (jm_getWidth_0 _rectange) (jm_getHeight_0 _rectange)))))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this BoundBounceAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let ()
    (block jreturn
        (jm_visit_1 (slot-value this 'f_layerBounds) (slot-value this 'f_boundsVisitorInterface)))))



