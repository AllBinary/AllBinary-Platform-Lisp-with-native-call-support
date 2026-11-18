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
;;;; package org.allbinary.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinaryLayerCircularPool (BaseCircularPool)
  ())

    
(defun AllBinaryLayerCircularPool.jnew_0 ()
  (let ((this (make-instance 'AllBinaryLayerCircularPool)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_initAllBinaryLayerCircularPool_2) (defgeneric jm_initAllBinaryLayerCircularPool_2 (this p1 p2)))
(defmethod jm_initAllBinaryLayerCircularPool_2 ((this AllBinaryLayerCircularPool) _allbinaryLayerFactoryInterface _total)
  (declare (ignorable this _allbinaryLayerFactoryInterface _total))
  (let (_localIndex)
  (declare (ignorable _localIndex))
    (block jreturn
        (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 _total))
        (setf (slot-value this 'f_OBJECT_ARRAY) (JR.newArray nil _total))
        (progn
            (setf _localIndex 0)
            (block jbreak (loop while (< _localIndex _total) do
                (block jcontinue
            (setf (aref (slot-value this 'f_OBJECT_ARRAY) _localIndex) (jm_getInstance_0 _allbinaryLayerFactoryInterface)))
                (setf _localIndex (JR.i32 (+ _localIndex 1)))))))))



