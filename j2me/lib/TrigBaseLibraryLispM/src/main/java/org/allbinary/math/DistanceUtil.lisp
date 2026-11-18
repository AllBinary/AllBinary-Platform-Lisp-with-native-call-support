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

(defclass DistanceUtil (JObject)
  ((f_mathUtil :initform nil)))

(defvar DistanceUtil.jcell_instance :jnone)
(defun DistanceUtil.jstatic_instance ()
  (when (eq DistanceUtil.jcell_instance :jnone) (setf DistanceUtil.jcell_instance (DistanceUtil.jnew_0)))
  DistanceUtil.jcell_instance)
(defun (setf DistanceUtil.jstatic_instance) (value) (setf DistanceUtil.jcell_instance value))

(defun DistanceUtil.jnew_0 ()
  (let ((this (make-instance 'DistanceUtil)))
    (setf (slot-value this 'f_mathUtil) (MathUtil.jm_getInstance_0))
    this))

    
(defun DistanceUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DistanceUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getDistance_4) (defgeneric jm_getDistance_4 (this p1 p2 p3 p4)))
(defmethod jm_getDistance_4 ((this DistanceUtil) _x1 _y1 _x2 _y2)
  (declare (ignorable this _x1 _y1 _x2 _y2))
  (let (_dx _dy)
  (declare (ignorable _dx _dy))
    (block jreturn
        (setf _dx (JR.i32 (- _x1 _x2)))
        (setf _dy (JR.i32 (- _y1 _y2)))
        (return-from jreturn (jm_sqrt_1 (slot-value this 'f_mathUtil) (JR.i32 (+ (JR.i32 (* _dx _dx)) (JR.i32 (* _dy _dy)))))))))



