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
;;;; package org.allbinary.layer.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ScrollMapEvent (AllBinaryEventObject)
  ((f_dx :initform 0)
   (f_dy :initform 0)))

    
(defun ScrollMapEvent.jnew_1 (_anyType)
  (declare (ignorable _anyType))
  (let ((this (make-instance 'ScrollMapEvent)))
    
    
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_setDx_1) (defgeneric jm_setDx_1 (this p1)))
(defmethod jm_setDx_1 ((this ScrollMapEvent) _dx)
  (declare (ignorable this _dx))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_dx) _dx))))

    
(unless (fboundp 'jm_getDx_0) (defgeneric jm_getDx_0 (this)))
(defmethod jm_getDx_0 ((this ScrollMapEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_dx)))))

    
(unless (fboundp 'jm_setDy_1) (defgeneric jm_setDy_1 (this p1)))
(defmethod jm_setDy_1 ((this ScrollMapEvent) _dy)
  (declare (ignorable this _dy))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_dy) _dy))))

    
(unless (fboundp 'jm_getDy_0) (defgeneric jm_getDy_0 (this)))
(defmethod jm_getDy_0 ((this ScrollMapEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_dy)))))

    
(unless (fboundp 'jm_setDxDy_2) (defgeneric jm_setDxDy_2 (this p1 p2)))
(defmethod jm_setDxDy_2 ((this ScrollMapEvent) _dx _dy)
  (declare (ignorable this _dx _dy))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_dx) _dx)
        (setf (slot-value this 'f_dy) _dy))))



