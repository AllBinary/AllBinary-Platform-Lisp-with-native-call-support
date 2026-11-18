;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.game.physics.velocity

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass VelocityBehaviorBase (JObject)
  ())

(defun VelocityBehaviorBase.jnew_0 ()
  (let ((this (make-instance 'VelocityBehaviorBase)))
    this))

    
(unless (fboundp 'jm_reduce_3) (defgeneric jm_reduce_3 (this p1 p2 p3)))
(defmethod jm_reduce_3 ((this VelocityBehaviorBase) _velocityProperties _nominator _denominator)
  (declare (ignorable this _velocityProperties _nominator _denominator))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_reduceX_3) (defgeneric jm_reduceX_3 (this p1 p2 p3)))
(defmethod jm_reduceX_3 ((this VelocityBehaviorBase) _velocityProperties _nominator _denominator)
  (declare (ignorable this _velocityProperties _nominator _denominator))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_reduceY_3) (defgeneric jm_reduceY_3 (this p1 p2 p3)))
(defmethod jm_reduceY_3 ((this VelocityBehaviorBase) _velocityProperties _nominator _denominator)
  (declare (ignorable this _velocityProperties _nominator _denominator))
  (let ()
    (block jreturn nil)))



