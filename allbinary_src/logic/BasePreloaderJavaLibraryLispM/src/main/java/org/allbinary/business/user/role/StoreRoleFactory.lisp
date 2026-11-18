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
;;;; package org.allbinary.business.user.role

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass StoreRoleFactory (JObject)
  ((f_roles :initform nil)
   (f_subscriberRoles :initform nil)
   (f_wholesaleRoles :initform nil)))

(defvar StoreRoleFactory.jcell_instance :jnone)
(defun StoreRoleFactory.jstatic_instance ()
  (when (eq StoreRoleFactory.jcell_instance :jnone) (setf StoreRoleFactory.jcell_instance (StoreRoleFactory.jnew_0)))
  StoreRoleFactory.jcell_instance)
(defun (setf StoreRoleFactory.jstatic_instance) (value) (setf StoreRoleFactory.jcell_instance value))

    
(defun StoreRoleFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (StoreRoleFactory.jstatic_instance)))))

    
(defun StoreRoleFactory.jnew_0 ()
  (let ((this (make-instance 'StoreRoleFactory)))
    (setf (slot-value this 'f_roles) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_subscriberRoles) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_wholesaleRoles) (BasicArrayListD.jnew_0))
  (let (_basicUserRoleFactory)
  (declare (ignorable _basicUserRoleFactory))
    (block jreturn
        (setf _basicUserRoleFactory (BasicUserRoleFactory.jm_getInstance_0))
        (jm_add_1 (slot-value this 'f_roles) (slot-value _basicUserRoleFactory 'f_CUSTOMER))
        (jm_add_1 (slot-value this 'f_roles) (slot-value _basicUserRoleFactory 'f_SUBSCRIBERCUSTOMER))
        (jm_add_1 (slot-value this 'f_roles) (slot-value _basicUserRoleFactory 'f_WHOLESALECUSTOMER))
        (jm_add_1 (slot-value this 'f_subscriberRoles) (slot-value _basicUserRoleFactory 'f_SUBSCRIBERCUSTOMER))
        (jm_add_1 (slot-value this 'f_wholesaleRoles) (slot-value _basicUserRoleFactory 'f_WHOLESALECUSTOMER))))
    this))

    
(unless (fboundp 'jm_getRoles_0) (defgeneric jm_getRoles_0 (this)))
(defmethod jm_getRoles_0 ((this StoreRoleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_roles)))))

    
(unless (fboundp 'jm_getSubscriberRoles_0) (defgeneric jm_getSubscriberRoles_0 (this)))
(defmethod jm_getSubscriberRoles_0 ((this StoreRoleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_subscriberRoles)))))

    
(unless (fboundp 'jm_getWholesaleRoles_0) (defgeneric jm_getWholesaleRoles_0 (this)))
(defmethod jm_getWholesaleRoles_0 ((this StoreRoleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_wholesaleRoles)))))



