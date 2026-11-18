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
;;;; package org.allbinary.game.ag.layer.pickup.points

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PointsLayerFactory (JObject)
  ((f_points :initform 0)))

    
(defun PointsLayerFactory.jnew_1 (_points)
  (declare (ignorable _points))
  (let ((this (make-instance 'PointsLayerFactory)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_points) _points)))
    this))

    
(unless (fboundp 'jm_getInstance_0) (defgeneric jm_getInstance_0 (this)))
(defmethod jm_getInstance_0 ((this PointsLayerFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (PointsLayer.jnew_1 (slot-value this 'f_points))))))



