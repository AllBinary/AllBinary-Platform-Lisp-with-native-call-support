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
;;;; package org.allbinary.game.physics.velocity

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass VelocityInterface (JObject)
  ())

(defun VelocityInterface.jnew_0 ()
  (let ((this (make-instance 'VelocityInterface)))
    this))

    
(unless (fboundp 'jm_getMaxForwardVelocity_0) (defgeneric jm_getMaxForwardVelocity_0 (this)))
(defmethod jm_getMaxForwardVelocity_0 ((this VelocityInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getMaxForwardVelocity")))

    
(unless (fboundp 'jm_getMaxReverseVelocity_0) (defgeneric jm_getMaxReverseVelocity_0 (this)))
(defmethod jm_getMaxReverseVelocity_0 ((this VelocityInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getMaxReverseVelocity")))

    
(unless (fboundp 'jm_limitMaxXYForwardVelocity_0) (defgeneric jm_limitMaxXYForwardVelocity_0 (this)))
(defmethod jm_limitMaxXYForwardVelocity_0 ((this VelocityInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "limitMaxXYForwardVelocity")))

    
(unless (fboundp 'jm_limitMaxXYReverseVelocity_0) (defgeneric jm_limitMaxXYReverseVelocity_0 (this)))
(defmethod jm_limitMaxXYReverseVelocity_0 ((this VelocityInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "limitMaxXYReverseVelocity")))

    
(unless (fboundp 'jm_limitXYToForwardAndReverseMaxVelocity_0) (defgeneric jm_limitXYToForwardAndReverseMaxVelocity_0 (this)))
(defmethod jm_limitXYToForwardAndReverseMaxVelocity_0 ((this VelocityInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "limitXYToForwardAndReverseMaxVelocity")))

    
(unless (fboundp 'jm_limitMaxXYVelocity_1) (defgeneric jm_limitMaxXYVelocity_1 (this p1)))
(defmethod jm_limitMaxXYVelocity_1 ((this VelocityInterface) _maxVelocity)
  (declare (ignorable this _maxVelocity))
  (error (JR.newException "AbstractMethodError" "limitMaxXYVelocity")))

    
(unless (fboundp 'jm_setMaxForwardVelocity_1) (defgeneric jm_setMaxForwardVelocity_1 (this p1)))
(defmethod jm_setMaxForwardVelocity_1 ((this VelocityInterface) _maxForwardVelocity)
  (declare (ignorable this _maxForwardVelocity))
  (error (JR.newException "AbstractMethodError" "setMaxForwardVelocity")))

    
(unless (fboundp 'jm_setMaxReverseVelocity_1) (defgeneric jm_setMaxReverseVelocity_1 (this p1)))
(defmethod jm_setMaxReverseVelocity_1 ((this VelocityInterface) _maxReverseVelocity)
  (declare (ignorable this _maxReverseVelocity))
  (error (JR.newException "AbstractMethodError" "setMaxReverseVelocity")))



