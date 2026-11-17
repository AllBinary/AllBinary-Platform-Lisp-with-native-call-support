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

(defclass BasicColorCacheFactory (JObject)
  ((f_hashtable :initform nil)))

(defvar BasicColorCacheFactory.jcell_instance :jnone)
(defun BasicColorCacheFactory.jstatic_instance ()
  (when (eq BasicColorCacheFactory.jcell_instance :jnone) (setf BasicColorCacheFactory.jcell_instance (BasicColorCacheFactory.jnew_0)))
  BasicColorCacheFactory.jcell_instance)

    
(defun BasicColorCacheFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BasicColorCacheFactory.jstatic_instance)))))

    
(defun BasicColorCacheFactory.jnew_0 ()
  (let ((this (make-instance 'BasicColorCacheFactory)))
    (setf (slot-value this 'f_hashtable) (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this BasicColorCacheFactory) _basicDefaultColor)
  (declare (ignorable this _basicDefaultColor))
  (let ()
    (block jreturn
        (jm_put_2 (slot-value this 'f_hashtable) (jm_intValue_0 _basicDefaultColor) _basicDefaultColor))))

    
(unless (fboundp 'jm_getAndOrCreate_1) (defgeneric jm_getAndOrCreate_1 (this p1)))
(defmethod jm_getAndOrCreate_1 ((this BasicColorCacheFactory) _integer)
  (declare (ignorable this _integer))
  (let (_basicColor)
  (declare (ignorable _basicColor))
    (block jreturn
        (setf _basicColor (jm_get_1 (slot-value this 'f_hashtable) _integer))
        (if (null _basicColor)
            (progn
            (setf _basicColor (jm_createInstance_1 (BasicColorFactory.jm_getInstance_0) (jm_intValue_0 _integer)))
            (jm_put_2 (slot-value this 'f_hashtable) _integer _basicColor)))
        (return-from jreturn _basicColor))))



