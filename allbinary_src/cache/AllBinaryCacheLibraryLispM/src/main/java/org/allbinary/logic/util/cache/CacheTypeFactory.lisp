;;;; Generated Code Do Not Modify
;;;; package org.allbinary.logic.util.cache

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CacheTypeFactory (JObject)
  ((f_NO_CACHE :initform nil)
   (f_CACHE :initform nil)
   (f_SET :initform nil)
   (f_CACHE_VECTOR :initform nil)))

(defvar CacheTypeFactory.jcell_instance :jnone)
(defun CacheTypeFactory.jstatic_instance ()
  (when (eq CacheTypeFactory.jcell_instance :jnone) (setf CacheTypeFactory.jcell_instance (CacheTypeFactory.jnew_0)))
  CacheTypeFactory.jcell_instance)
(defun (setf CacheTypeFactory.jstatic_instance) (value) (setf CacheTypeFactory.jcell_instance value))

(defun CacheTypeFactory.jnew_0 ()
  (let ((this (make-instance 'CacheTypeFactory)))
    (setf (slot-value this 'f_NO_CACHE) (CacheType.jnew_2 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))
    (setf (slot-value this 'f_CACHE) (CacheType.jnew_2 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))
    (setf (slot-value this 'f_SET) (CacheType.jnew_2 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) "Set"))
    (setf (slot-value this 'f_CACHE_VECTOR) (CacheType.jnew_2 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))
    this))

    
(defun CacheTypeFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CacheTypeFactory.jstatic_instance)))))



