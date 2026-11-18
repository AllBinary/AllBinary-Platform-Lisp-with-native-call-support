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

(defclass LayerPlacementInterface (JObject)
  ())

(defun LayerPlacementInterface.jnew_0 ()
  (let ((this (make-instance 'LayerPlacementInterface)))
    this))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this LayerPlacementInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getWidth")))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this LayerPlacementInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getHeight")))

    
(unless (fboundp 'jm_getLayerType_0) (defgeneric jm_getLayerType_0 (this)))
(defmethod jm_getLayerType_0 ((this LayerPlacementInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getLayerType")))

    
(unless (fboundp 'jm_getInstance_0) (defgeneric jm_getInstance_0 (this)))
(defmethod jm_getInstance_0 ((this LayerPlacementInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getInstance")))



