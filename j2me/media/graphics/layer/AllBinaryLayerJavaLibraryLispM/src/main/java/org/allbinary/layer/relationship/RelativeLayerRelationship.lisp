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
;;;; package org.allbinary.layer.relationship

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RelativeLayerRelationship (RelativeRelationship)
  ((f_layer :initform nil)))

    
(defun RelativeLayerRelationship.jnew_3 (_layer _point _typesAllowedList)
  (declare (ignorable _layer _point _typesAllowedList))
  (let ((this (make-instance 'RelativeLayerRelationship)))
    (setf (slot-value this 'f_layer) (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_layer) _layer)))
    this))

    
(unless (fboundp 'jm_getX_0) (defgeneric jm_getX_0 (this)))
(defmethod jm_getX_0 ((this RelativeLayerRelationship))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ (jm_getXP_0 (slot-value this 'f_layer)) (call-next-method this)))))))

    
(unless (fboundp 'jm_getY_0) (defgeneric jm_getY_0 (this)))
(defmethod jm_getY_0 ((this RelativeLayerRelationship))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ (jm_getYP_0 (slot-value this 'f_layer)) (call-next-method this)))))))

    
(unless (fboundp 'jm_getZ_0) (defgeneric jm_getZ_0 (this)))
(defmethod jm_getZ_0 ((this RelativeLayerRelationship))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ (jm_getZP_0 (slot-value this 'f_layer)) (call-next-method this)))))))



