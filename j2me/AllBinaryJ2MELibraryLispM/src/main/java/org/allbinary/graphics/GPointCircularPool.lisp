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

(defclass GPointCircularPool (BaseCircularPool)
  ())

    
(defun GPointCircularPool.jnew_1 (_size)
  (declare (ignorable _size))
  (let ((this (make-instance 'GPointCircularPool)))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 _size))
        (setf (slot-value this 'f_OBJECT_ARRAY) (JR.newArray nil _size))
        (progn
            (setf _index (JR.i32 (- _size 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf (aref (slot-value this 'f_OBJECT_ARRAY) _index) (CustomGPoint.jm_getInstance3_2 0 0)))
                (setf _index (JR.i32 (- _index 1))))))))
    this))



