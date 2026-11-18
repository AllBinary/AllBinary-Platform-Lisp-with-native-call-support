;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.view

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ViewPosition (ViewPositionBase)
  ((f_allbinaryLayer :initform nil)))

    
(defun ViewPosition.jm_getInstanceD_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ViewPosition.jnew_3 0 0 0)))))

    
(defun ViewPosition.jnew_3 (_x _y _z)
  (declare (ignorable _x _y _z))
  (let ((this (make-instance 'ViewPosition)))
    (setf (slot-value this 'f_allbinaryLayer) (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getX_0) (defgeneric jm_getX_0 (this)))
(defmethod jm_getX_0 ((this ViewPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getXP_0 (slot-value this 'f_allbinaryLayer))))))

    
(unless (fboundp 'jm_getY_0) (defgeneric jm_getY_0 (this)))
(defmethod jm_getY_0 ((this ViewPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getYP_0 (slot-value this 'f_allbinaryLayer))))))

    
(unless (fboundp 'jm_getZ_0) (defgeneric jm_getZ_0 (this)))
(defmethod jm_getZ_0 ((this ViewPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getZP_0 (slot-value this 'f_allbinaryLayer))))))

    
(unless (fboundp 'jm_getX2_0) (defgeneric jm_getX2_0 (this)))
(defmethod jm_getX2_0 ((this ViewPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ (jm_getX_0 this) (jm_getWidth_0 (slot-value this 'f_allbinaryLayer))))))))

    
(unless (fboundp 'jm_getY2_0) (defgeneric jm_getY2_0 (this)))
(defmethod jm_getY2_0 ((this ViewPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ (jm_getY_0 this) (jm_getHeight_0 (slot-value this 'f_allbinaryLayer))))))))

    
(unless (fboundp 'jm_getZ2_0) (defgeneric jm_getZ2_0 (this)))
(defmethod jm_getZ2_0 ((this ViewPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ (jm_getZ_0 this) (jm_getDepth_0 (slot-value this 'f_allbinaryLayer))))))))

    
(unless (fboundp 'jm_setAllbinaryLayer_1) (defgeneric jm_setAllbinaryLayer_1 (this p1)))
(defmethod jm_setAllbinaryLayer_1 ((this ViewPosition) _allbinaryLayer)
  (declare (ignorable this _allbinaryLayer))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_allbinaryLayer) _allbinaryLayer))))



