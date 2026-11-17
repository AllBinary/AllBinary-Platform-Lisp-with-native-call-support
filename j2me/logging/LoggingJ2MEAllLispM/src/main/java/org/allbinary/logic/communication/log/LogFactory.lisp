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
;;;; package org.allbinary.logic.communication.log

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;ActualPlatform
(defclass LogFactory (JObject)
  ())

(defun LogFactory.jnew_0 ()
  (let ((this (make-instance 'LogFactory)))
    this))

    
(defun LogFactory.jm_getInstanceD_0 ()
  (let (_stringUtil _nullUtil)
  (declare (ignorable _stringUtil _nullUtil))
    (block jreturn
        (setf _stringUtil (StringUtil.jm_getInstance_0))
        (setf _nullUtil (NullUtil.jm_getInstance_0))
        (return-from jreturn (Log.jnew_4 (slot-value _stringUtil 'f_EMPTY_STRING) (slot-value _nullUtil 'f_NULL_OBJECT) (slot-value _stringUtil 'f_EMPTY_STRING) (slot-value _nullUtil 'f_NULL_OBJECT))))))

    
(defun LogFactory.jm_getInstanceNoF_3 (_specialMessage _anyType _exception)
  (declare (ignorable _specialMessage _anyType _exception))
  (let ()
    (block jreturn
        (return-from jreturn (Log.jnew_4 _specialMessage _anyType (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) _exception)))))

    
(defun LogFactory.jm_getInstance_4 (_specialMessage _anyType _functionName _exception)
  (declare (ignorable _specialMessage _anyType _functionName _exception))
  (let ()
    (block jreturn
        (return-from jreturn (Log.jnew_4 _specialMessage _anyType _functionName _exception)))))

    
(defun LogFactory.jm_getInstanceF_3 (_specialMessage _anyType _functionName)
  (declare (ignorable _specialMessage _anyType _functionName))
  (let (_nullUtil)
  (declare (ignorable _nullUtil))
    (block jreturn
        (setf _nullUtil (NullUtil.jm_getInstance_0))
        (return-from jreturn (Log.jnew_4 _specialMessage _anyType _functionName (slot-value _nullUtil 'f_NULL_OBJECT))))))



