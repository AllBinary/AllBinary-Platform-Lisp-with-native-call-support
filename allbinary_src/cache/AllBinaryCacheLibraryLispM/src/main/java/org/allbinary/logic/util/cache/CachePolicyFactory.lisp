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

(defclass CachePolicyFactory (JObject)
  ((f_NAME :initform nil)
   (f_MAX_TIME_THOUSAND_MAX :initform nil)
   (f_THIRTY_MINUTES_TEN_THOUSAND_MAX :initform nil)
   (f_THIRTY_MINUTES_FIFTY_THOUSAND_MAX :initform nil)
   (f_ONE_MINUTE_FIVE_MAX :initform nil)
   (f_ONE_MINUTE_TEN_MAX :initform nil)
   (f_ONE_MINUTE_ONE_HUNDRED_MAX :initform nil)))

(defvar CachePolicyFactory.jcell_instance :jnone)
(defun CachePolicyFactory.jstatic_instance ()
  (when (eq CachePolicyFactory.jcell_instance :jnone) (setf CachePolicyFactory.jcell_instance (CachePolicyFactory.jnew_0)))
  CachePolicyFactory.jcell_instance)
(defun (setf CachePolicyFactory.jstatic_instance) (value) (setf CachePolicyFactory.jcell_instance value))

(defun CachePolicyFactory.jnew_0 ()
  (let ((this (make-instance 'CachePolicyFactory)))
    (setf (slot-value this 'f_NAME) "lru")
    (setf (slot-value this 'f_MAX_TIME_THOUSAND_MAX) (CachePolicy.jnew_3 (slot-value this 'f_NAME) (Long.jstatic_MAX_VALUE) 1000))
    (setf (slot-value this 'f_THIRTY_MINUTES_TEN_THOUSAND_MAX) (CachePolicy.jnew_3 (slot-value this 'f_NAME) (JR.i32 (* (JR.i32 (* 1000 60)) 30)) 10000))
    (setf (slot-value this 'f_THIRTY_MINUTES_FIFTY_THOUSAND_MAX) (CachePolicy.jnew_3 (slot-value this 'f_NAME) (JR.i32 (* (JR.i32 (* 1000 60)) 30)) 100000))
    (setf (slot-value this 'f_ONE_MINUTE_FIVE_MAX) (CachePolicy.jnew_3 (slot-value this 'f_NAME) (JR.i32 (* (JR.i32 (* 1000 60)) 1)) 5))
    (setf (slot-value this 'f_ONE_MINUTE_TEN_MAX) (CachePolicy.jnew_3 (slot-value this 'f_NAME) (JR.i32 (* (JR.i32 (* 1000 60)) 1)) 10))
    (setf (slot-value this 'f_ONE_MINUTE_ONE_HUNDRED_MAX) (CachePolicy.jnew_3 (slot-value this 'f_NAME) (JR.i32 (* (JR.i32 (* 1000 60)) 1)) 100))
    this))

    
(defun CachePolicyFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CachePolicyFactory.jstatic_instance)))))



