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
;;;; package org.allbinary.direction

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DirectionalInterface (JObject)
  ())

(defun DirectionalInterface.jnew_0 ()
  (let ((this (make-instance 'DirectionalInterface)))
    this))

    
(unless (fboundp 'jm_setFrameByDirection_1) (defgeneric jm_setFrameByDirection_1 (this p1)))
(defmethod jm_setFrameByDirection_1 ((this DirectionalInterface) _direction)
  (declare (ignorable this _direction))
  (error (JR.newException "AbstractMethodError" "setFrameByDirection")))

    
(unless (fboundp 'jm_setFrameToAngle_1) (defgeneric jm_setFrameToAngle_1 (this p1)))
(defmethod jm_setFrameToAngle_1 ((this DirectionalInterface) _angle)
  (declare (ignorable this _angle))
  (error (JR.newException "AbstractMethodError" "setFrameToAngle")))

    
(unless (fboundp 'jm_adjustFrameToAngle_1) (defgeneric jm_adjustFrameToAngle_1 (this p1)))
(defmethod jm_adjustFrameToAngle_1 ((this DirectionalInterface) _newAngle)
  (declare (ignorable this _newAngle))
  (error (JR.newException "AbstractMethodError" "adjustFrameToAngle")))

    
(unless (fboundp 'jm_adjustFrame_1) (defgeneric jm_adjustFrame_1 (this p1)))
(defmethod jm_adjustFrame_1 ((this DirectionalInterface) _angle)
  (declare (ignorable this _angle))
  (error (JR.newException "AbstractMethodError" "adjustFrame")))



