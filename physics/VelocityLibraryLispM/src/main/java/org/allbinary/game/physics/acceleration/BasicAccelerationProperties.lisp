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
;;;; package org.allbinary.game.physics.acceleration

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicAccelerationProperties (JObject)
  ((f_forward :initform 0)
   (f_reverse :initform 0)))

    
(defun BasicAccelerationProperties.jnew_2 (_forward _reverse)
  (declare (ignorable _forward _reverse))
  (let ((this (make-instance 'BasicAccelerationProperties)))
    
    
  (let ()
    (block jreturn
        (jm_setForward_1 this _forward)
        (jm_setReverse_1 this _reverse)))
    this))

    
(unless (fboundp 'jm_setReverse_1) (defgeneric jm_setReverse_1 (this p1)))
(defmethod jm_setReverse_1 ((this BasicAccelerationProperties) _reverse)
  (declare (ignorable this _reverse))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_reverse) _reverse))))

    
(unless (fboundp 'jm_getReverse_0) (defgeneric jm_getReverse_0 (this)))
(defmethod jm_getReverse_0 ((this BasicAccelerationProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_reverse)))))

    
(unless (fboundp 'jm_setForward_1) (defgeneric jm_setForward_1 (this p1)))
(defmethod jm_setForward_1 ((this BasicAccelerationProperties) _forward)
  (declare (ignorable this _forward))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_forward) _forward))))

    
(unless (fboundp 'jm_getForward_0) (defgeneric jm_getForward_0 (this)))
(defmethod jm_getForward_0 ((this BasicAccelerationProperties))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_forward)))))



