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
;;;; package org.allbinary.logic.util.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinaryEventCircularPool (BaseCircularPool)
  ())

    
(defun AllBinaryEventCircularPool.jnew_1 (_max)
  (declare (ignorable _max))
  (let ((this (make-instance 'AllBinaryEventCircularPool)))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_OBJECT_ARRAY) (JR.newArray nil _max))
        (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 _max))))
    this))

    
(unless (fboundp 'jm_initAllBinaryEventCircularPool_1) (defgeneric jm_initAllBinaryEventCircularPool_1 (this p1)))
(defmethod jm_initAllBinaryEventCircularPool_1 ((this AllBinaryEventCircularPool) _allBinaryEventObjectFactoryInterface)
  (declare (ignorable this _allBinaryEventObjectFactoryInterface))
  (let (_size _index)
  (declare (ignorable _size _index))
    (block jreturn
        (jm_setIndex_1 (slot-value this 'f_circularIndexUtil) 0)
        (setf _size (jm_getSize_0 (slot-value this 'f_circularIndexUtil)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf (aref (slot-value this 'f_OBJECT_ARRAY) _index) (jm_getInstance_0 _allBinaryEventObjectFactoryInterface)))
                (setf _index (JR.i32 (+ _index 1)))))))))



