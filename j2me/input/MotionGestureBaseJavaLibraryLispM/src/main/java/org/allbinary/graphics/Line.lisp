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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Line (JObject)
  ((f_p1 :initform nil)
   (f_p2 :initform nil)
   (f_deltaX :initform 0.0d0)
   (f_deltaY :initform 0.0d0)))

    
(defun Line.jnew_2 (_p1 _p2)
  (declare (ignorable _p1 _p2))
  (let ((this (make-instance 'Line)))
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_p1) (slot-value (PointFactory.jm_getInstance_0) 'f_ZERO_ZERO))
        (setf (slot-value this 'f_p2) (slot-value this 'f_p1))
        (jm_setP1_1 this _p1)
        (jm_setP2_1 this _p2)))
    this))

    
(unless (fboundp 'jm_getGradient_0) (defgeneric jm_getGradient_0 (this)))
(defmethod jm_getGradient_0 ((this Line))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (/ (jm_getDeltaY_0 this) (jm_getDeltaX_0 this))))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this Line))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_deltaX) (- (coerce (jm_getX_0 (jm_getP1_0 this)) 'double-float) (jm_getX_0 (jm_getP2_0 this))))
        (setf (slot-value this 'f_deltaY) (- (coerce (jm_getY_0 (jm_getP1_0 this)) 'double-float) (jm_getY_0 (jm_getP2_0 this)))))))

    
(unless (fboundp 'jm_getDeltaX_0) (defgeneric jm_getDeltaX_0 (this)))
(defmethod jm_getDeltaX_0 ((this Line))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_deltaX)))))

    
(unless (fboundp 'jm_getDeltaY_0) (defgeneric jm_getDeltaY_0 (this)))
(defmethod jm_getDeltaY_0 ((this Line))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_deltaY)))))

    
(unless (fboundp 'jm_getP1_0) (defgeneric jm_getP1_0 (this)))
(defmethod jm_getP1_0 ((this Line))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_p1)))))

    
(unless (fboundp 'jm_getP2_0) (defgeneric jm_getP2_0 (this)))
(defmethod jm_getP2_0 ((this Line))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_p2)))))

    
(unless (fboundp 'jm_setP1_1) (defgeneric jm_setP1_1 (this p1)))
(defmethod jm_setP1_1 ((this Line) _p1)
  (declare (ignorable this _p1))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_p1) _p1)
        (jm_update_0 this))))

    
(unless (fboundp 'jm_setP2_1) (defgeneric jm_setP2_1 (this p1)))
(defmethod jm_setP2_1 ((this Line) _p2)
  (declare (ignorable this _p2))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_p2) _p2)
        (jm_update_0 this))))



