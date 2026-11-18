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
;;;; package org.allbinary.animation.special

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SpecialAnimationInterface (JObject)
  ())

(defun SpecialAnimationInterface.jnew_0 ()
  (let ((this (make-instance 'SpecialAnimationInterface)))
    this))

    
(unless (fboundp 'jm_setLastFrame_0) (defgeneric jm_setLastFrame_0 (this)))
(defmethod jm_setLastFrame_0 ((this SpecialAnimationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "setLastFrame")))

    
(unless (fboundp 'jm_isComplete_0) (defgeneric jm_isComplete_0 (this)))
(defmethod jm_isComplete_0 ((this SpecialAnimationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isComplete")))



