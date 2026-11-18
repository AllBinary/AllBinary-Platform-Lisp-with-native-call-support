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
;;;; package org.allbinary.logic.util.cache

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CachePolicy (JObject)
  ((f_name :initform nil)
   (f_maxTime :initform 0)
   (f_maxSize :initform 0)))

    
(defun CachePolicy.jnew_3 (_name _maxTime _maxSize)
  (declare (ignorable _name _maxTime _maxSize))
  (let ((this (make-instance 'CachePolicy)))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _name)
        (jm_setMaxTime_1 this _maxTime)
        (jm_setMaxSize_1 this _maxSize)))
    this))

    
(unless (fboundp 'jm_getMaxTime_0) (defgeneric jm_getMaxTime_0 (this)))
(defmethod jm_getMaxTime_0 ((this CachePolicy))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_maxTime)))))

    
(unless (fboundp 'jm_setMaxTime_1) (defgeneric jm_setMaxTime_1 (this p1)))
(defmethod jm_setMaxTime_1 ((this CachePolicy) _maxTime)
  (declare (ignorable this _maxTime))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_maxTime) _maxTime))))

    
(unless (fboundp 'jm_getMaxSize_0) (defgeneric jm_getMaxSize_0 (this)))
(defmethod jm_getMaxSize_0 ((this CachePolicy))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_maxSize)))))

    
(unless (fboundp 'jm_setMaxSize_1) (defgeneric jm_setMaxSize_1 (this p1)))
(defmethod jm_setMaxSize_1 ((this CachePolicy) _maxSize)
  (declare (ignorable this _maxSize))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_maxSize) _maxSize))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this CachePolicy))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))



