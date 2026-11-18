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
;;;; package org.allbinary.resources

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass KeyValueFactory (JObject)
  ((f_MAP :initform nil)))

(defvar KeyValueFactory.jcell_instance :jnone)
(defun KeyValueFactory.jstatic_instance ()
  (when (eq KeyValueFactory.jcell_instance :jnone) (setf KeyValueFactory.jcell_instance (KeyValueFactory.jnew_0)))
  KeyValueFactory.jcell_instance)
(defun (setf KeyValueFactory.jstatic_instance) (value) (setf KeyValueFactory.jcell_instance value))

(defun KeyValueFactory.jnew_0 ()
  (let ((this (make-instance 'KeyValueFactory)))
    (setf (slot-value this 'f_MAP) (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
    this))

    
(defun KeyValueFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (KeyValueFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_get_1) (defgeneric jm_get_1 (this p1)))
(defmethod jm_get_1 ((this KeyValueFactory) _key)
  (declare (ignorable this _key))
  (let ()
    (block jreturn
        (if (not (jm_containsKey_1 (slot-value this 'f_MAP) _key))
            (progn
            (return-from jreturn _key)))
        (return-from jreturn (jm_get_1 (slot-value this 'f_MAP) _key)))))



