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
;;;; package org.allbinary.logic.math.permutations

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ComparableObject (JObject)
  ())

(defun ComparableObject.jnew_0 ()
  (let ((this (make-instance 'ComparableObject)))
    this))

    
(unless (fboundp 'jm_compareTo_1) (defgeneric jm_compareTo_1 (this p1)))
(defmethod jm_compareTo_1 ((this ComparableObject) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (if (< (jm_hashCode_1 (TsUtil.jm_getInstance_0) this) (jm_hashCode_1 (TsUtil.jm_getInstance_0) _anyType))
            (progn
            (return-from jreturn (JR.i32 (- 1))))
            (if (> (jm_hashCode_1 (TsUtil.jm_getInstance_0) this) (jm_hashCode_1 (TsUtil.jm_getInstance_0) _anyType))
            (progn
            (return-from jreturn 1))))
        (return-from jreturn 0))))



