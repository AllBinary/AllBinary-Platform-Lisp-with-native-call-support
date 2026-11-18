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
;;;; package org.allbinary.logic.system.security.licensing

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LockableFeatureFactory (JObject)
  ((f_list :initform nil)))

(defvar LockableFeatureFactory.jcell_instance :jnone)
(defun LockableFeatureFactory.jstatic_instance ()
  (when (eq LockableFeatureFactory.jcell_instance :jnone) (setf LockableFeatureFactory.jcell_instance (LockableFeatureFactory.jnew_0)))
  LockableFeatureFactory.jcell_instance)
(defun (setf LockableFeatureFactory.jstatic_instance) (value) (setf LockableFeatureFactory.jcell_instance value))

(defun LockableFeatureFactory.jnew_0 ()
  (let ((this (make-instance 'LockableFeatureFactory)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    this))

    
(defun LockableFeatureFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LockableFeatureFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this LockableFeatureFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_list)))))



