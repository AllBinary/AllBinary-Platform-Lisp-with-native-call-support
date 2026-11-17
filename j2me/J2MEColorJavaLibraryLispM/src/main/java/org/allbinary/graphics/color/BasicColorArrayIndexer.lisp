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
;;;; package org.allbinary.graphics.color

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicColorArrayIndexer (JObject)
  ((f_basicColorArray :initform nil)
   (f_circularIndexUtil :initform nil)))

    
(defun BasicColorArrayIndexer.jnew_1 (_basicColorArray)
  (declare (ignorable _basicColorArray))
  (let ((this (make-instance 'BasicColorArrayIndexer)))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicColorArray) _basicColorArray)
        (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 (length (slot-value this 'f_basicColorArray))))))
    this))

    
(unless (fboundp 'jm_next_0) (defgeneric jm_next_0 (this)))
(defmethod jm_next_0 ((this BasicColorArrayIndexer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_next_0 (slot-value this 'f_circularIndexUtil)))))

    
(unless (fboundp 'jm_get_0) (defgeneric jm_get_0 (this)))
(defmethod jm_get_0 ((this BasicColorArrayIndexer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_basicColorArray) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))))))

    
(unless (fboundp 'jm_getBasicColorArray_0) (defgeneric jm_getBasicColorArray_0 (this)))
(defmethod jm_getBasicColorArray_0 ((this BasicColorArrayIndexer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicColorArray)))))



