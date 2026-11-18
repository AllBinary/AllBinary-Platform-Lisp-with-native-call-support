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
;;;; package org.allbinary.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LayerDistanceUtil (JObject)
  ((f_mathUtil :initform nil)))

(defvar LayerDistanceUtil.jcell_instance :jnone)
(defun LayerDistanceUtil.jstatic_instance ()
  (when (eq LayerDistanceUtil.jcell_instance :jnone) (setf LayerDistanceUtil.jcell_instance (LayerDistanceUtil.jnew_0)))
  LayerDistanceUtil.jcell_instance)
(defun (setf LayerDistanceUtil.jstatic_instance) (value) (setf LayerDistanceUtil.jcell_instance value))

(defun LayerDistanceUtil.jnew_0 ()
  (let ((this (make-instance 'LayerDistanceUtil)))
    (setf (slot-value this 'f_mathUtil) (MathUtil.jm_getInstance_0))
    this))

    
(defun LayerDistanceUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LayerDistanceUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getDistance_2) (defgeneric jm_getDistance_2 (this p1 p2)))
(defmethod jm_getDistance_2 ((this LayerDistanceUtil) _layerInterface _layerInterface2)
  (declare (ignorable this _layerInterface _layerInterface2))
  (let (_dx _dy)
  (declare (ignorable _dx _dy))
    (block jreturn
        (setf _dx (JR.i32 (- (JR.i32 (+ (jm_getXP_0 _layerInterface) (jm_getHalfWidth_0 _layerInterface))) (JR.i32 (+ (jm_getXP_0 _layerInterface2) (jm_getHalfWidth_0 _layerInterface2))))))
        (setf _dy (JR.i32 (- (JR.i32 (+ (jm_getYP_0 _layerInterface) (jm_getHalfHeight_0 _layerInterface))) (JR.i32 (+ (jm_getYP_0 _layerInterface2) (jm_getHalfHeight_0 _layerInterface2))))))
        (return-from jreturn (jm_sqrt_1 (slot-value this 'f_mathUtil) (JR.i32 (+ (JR.i32 (* _dx _dx)) (JR.i32 (* _dy _dy)))))))))

    
(unless (fboundp 'jm_getDistance3D_2) (defgeneric jm_getDistance3D_2 (this p1 p2)))
(defmethod jm_getDistance3D_2 ((this LayerDistanceUtil) _layerInterface _layerInterface2)
  (declare (ignorable this _layerInterface _layerInterface2))
  (let (_dx _dy _dz)
  (declare (ignorable _dx _dy _dz))
    (block jreturn
        (setf _dx (JR.i32 (- (JR.i32 (+ (jm_getXP_0 _layerInterface) (jm_getHalfWidth_0 _layerInterface))) (JR.i32 (+ (jm_getXP_0 _layerInterface2) (jm_getHalfWidth_0 _layerInterface2))))))
        (setf _dy (JR.i32 (- (JR.i32 (+ (jm_getYP_0 _layerInterface) (jm_getHalfHeight_0 _layerInterface))) (JR.i32 (+ (jm_getYP_0 _layerInterface2) (jm_getHalfHeight_0 _layerInterface2))))))
        (setf _dz (JR.i32 (- (JR.i32 (+ (jm_getZP_0 _layerInterface) (jm_getHalfDepth_0 _layerInterface))) (JR.i32 (+ (jm_getZP_0 _layerInterface2) (jm_getHalfDepth_0 _layerInterface2))))))
        (return-from jreturn (jm_sqrt_1 (slot-value this 'f_mathUtil) (JR.i32 (+ (JR.i32 (+ (JR.i32 (* _dx _dx)) (JR.i32 (* _dy _dy)))) (JR.i32 (* _dz _dz)))))))))

    
(unless (fboundp 'jm_getDistanceAt_2) (defgeneric jm_getDistanceAt_2 (this p1 p2)))
(defmethod jm_getDistanceAt_2 ((this LayerDistanceUtil) _layerInterface _point)
  (declare (ignorable this _layerInterface _point))
  (let (_dx _dy)
  (declare (ignorable _dx _dy))
    (block jreturn
        (setf _dx (JR.i32 (- (jm_getXP_0 _layerInterface) (jm_getX_0 _point))))
        (setf _dy (JR.i32 (- (jm_getYP_0 _layerInterface) (jm_getY_0 _point))))
        (return-from jreturn (jm_sqrt_1 (slot-value this 'f_mathUtil) (JR.i32 (+ (JR.i32 (* _dx _dx)) (JR.i32 (* _dy _dy)))))))))



