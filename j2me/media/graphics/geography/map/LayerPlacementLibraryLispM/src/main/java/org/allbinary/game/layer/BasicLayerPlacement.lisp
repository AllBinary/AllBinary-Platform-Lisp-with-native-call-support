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
;;;; package org.allbinary.game.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicLayerPlacement (JObject)
  ((f_layerType :initform nil)
   (f_width :initform 0)
   (f_height :initform 0)))

    
(defun BasicLayerPlacement.jnew_3 (_layerType _width _height)
  (declare (ignorable _layerType _width _height))
  (let ((this (make-instance 'BasicLayerPlacement)))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_layerType) _layerType)
        (setf (slot-value this 'f_width) _width)
        (setf (slot-value this 'f_height) _height)))
    this))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this BasicLayerPlacement))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_width)))))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this BasicLayerPlacement))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_height)))))

    
(unless (fboundp 'jm_getLayerType_0) (defgeneric jm_getLayerType_0 (this)))
(defmethod jm_getLayerType_0 ((this BasicLayerPlacement))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_layerType)))))

    
(unless (fboundp 'jm_setLayerType_1) (defgeneric jm_setLayerType_1 (this p1)))
(defmethod jm_setLayerType_1 ((this BasicLayerPlacement) _layerType)
  (declare (ignorable this _layerType))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_layerType) _layerType))))



