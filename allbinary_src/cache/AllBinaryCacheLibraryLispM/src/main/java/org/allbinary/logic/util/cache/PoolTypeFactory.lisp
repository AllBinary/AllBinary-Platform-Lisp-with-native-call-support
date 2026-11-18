;;;; Generated Code Do Not Modify
;;;; package org.allbinary.logic.util.cache

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PoolTypeFactory (JObject)
  ((f_VECTOR_POOL :initform nil)))

(defvar PoolTypeFactory.jcell_instance :jnone)
(defun PoolTypeFactory.jstatic_instance ()
  (when (eq PoolTypeFactory.jcell_instance :jnone) (setf PoolTypeFactory.jcell_instance (PoolTypeFactory.jnew_0)))
  PoolTypeFactory.jcell_instance)
(defun (setf PoolTypeFactory.jstatic_instance) (value) (setf PoolTypeFactory.jcell_instance value))

(defun PoolTypeFactory.jnew_0 ()
  (let ((this (make-instance 'PoolTypeFactory)))
    (setf (slot-value this 'f_VECTOR_POOL) (PoolType.jnew_1 (slot-value (CacheTypeFactory.jm_getInstance_0) 'f_NO_CACHE)))
    this))

    
(defun PoolTypeFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PoolTypeFactory.jstatic_instance)))))



