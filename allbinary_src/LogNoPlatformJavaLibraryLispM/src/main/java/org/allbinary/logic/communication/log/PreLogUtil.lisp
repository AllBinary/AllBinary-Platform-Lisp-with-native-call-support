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

;NoPlatform
(defclass PreLogUtil (JObject)
  ())

    
(defun PreLogUtil.jnew_0 ()
  (let ((this (make-instance 'PreLogUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(defun PreLogUtil.jm_put_3 (_specialMessage _anyType _functionName)
  (declare (ignorable _specialMessage _anyType _functionName))
  (let ()
    (block jreturn
        (PreLogUtil.jm_putOE_4 _specialMessage _anyType _functionName (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))))

    
(defun PreLogUtil.jm_putOE_4 (_specialMessage _anyType _functionName _exception)
  (declare (ignorable _specialMessage _anyType _functionName _exception))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(defun PreLogUtil.jm_putSE_4 (_specialMessage _className _functionName _exception)
  (declare (ignorable _specialMessage _className _functionName _exception))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))



