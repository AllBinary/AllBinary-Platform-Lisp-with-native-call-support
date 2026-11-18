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
;;;; package org.allbinary.game.physics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FrictionProperties (JObject)
  ())

    
(defun FrictionProperties.jnew_0 ()
  (let ((this (make-instance 'FrictionProperties)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_friction_2) (defgeneric jm_friction_2 (this p1 p2)))
(defmethod jm_friction_2 ((this FrictionProperties) _velocityProperties _nominator)
  (declare (ignorable this _velocityProperties _nominator))
  (let ()
    (block jreturn
        (jm_reduce_3 (DragVelocityBehavior.jstatic_instance) _velocityProperties _nominator (FrictionData.jm_getFrictionDenominator_0)))))



