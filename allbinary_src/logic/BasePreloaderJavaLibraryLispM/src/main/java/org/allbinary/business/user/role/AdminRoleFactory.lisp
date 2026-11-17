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

(defclass AdminRoleFactory (JObject)
  ((f_adminRoles :initform nil)
   (f_storeAdminRoles :initform nil)
   (f_storeManagementRoles :initform nil)
   (f_productManagementRoles :initform nil)
   (f_reviewManagementRoles :initform nil)
   (f_customerManagementRoles :initform nil)
   (f_workflowManagementRoles :initform nil)
   (f_orderManagementRoles :initform nil)
   (f_adjusterManagementRoles :initform nil)
   (f_shippingManagementRoles :initform nil)
   (f_webManagementRoles :initform nil)))

(defvar AdminRoleFactory.jcell_instance :jnone)
(defun AdminRoleFactory.jstatic_instance ()
  (when (eq AdminRoleFactory.jcell_instance :jnone) (setf AdminRoleFactory.jcell_instance (AdminRoleFactory.jnew_0)))
  AdminRoleFactory.jcell_instance)

    
(defun AdminRoleFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AdminRoleFactory.jstatic_instance)))))

    
(defun AdminRoleFactory.jnew_0 ()
  (let ((this (make-instance 'AdminRoleFactory)))
    (setf (slot-value this 'f_adminRoles) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_storeAdminRoles) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_storeManagementRoles) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_productManagementRoles) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_reviewManagementRoles) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_customerManagementRoles) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_workflowManagementRoles) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_orderManagementRoles) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_adjusterManagementRoles) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_shippingManagementRoles) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_webManagementRoles) (BasicArrayListD.jnew_0))
  (let (_basicUserRoleFactory)
  (declare (ignorable _basicUserRoleFactory))
    (block jreturn
        (setf _basicUserRoleFactory (BasicUserRoleFactory.jm_getInstance_0))
        (jm_add_1 (slot-value this 'f_adminRoles) (slot-value _basicUserRoleFactory 'f_ADMINISTRATOR))
        (jm_add_1 (slot-value this 'f_storeAdminRoles) (slot-value _basicUserRoleFactory 'f_ADMINISTRATOR))
        (jm_add_1 (slot-value this 'f_storeAdminRoles) (slot-value _basicUserRoleFactory 'f_STOREMANAGER))
        (jm_add_1 (slot-value this 'f_storeManagementRoles) (slot-value _basicUserRoleFactory 'f_ADMINISTRATOR))
        (jm_add_1 (slot-value this 'f_storeManagementRoles) (slot-value _basicUserRoleFactory 'f_STOREMANAGER))
        (jm_add_1 (slot-value this 'f_storeManagementRoles) (slot-value _basicUserRoleFactory 'f_CUSTOMERMANAGER))
        (jm_add_1 (slot-value this 'f_storeManagementRoles) (slot-value _basicUserRoleFactory 'f_ADJUSTER))
        (jm_add_1 (slot-value this 'f_storeManagementRoles) (slot-value _basicUserRoleFactory 'f_PRODUCTMANAGER))
        (jm_add_1 (slot-value this 'f_storeManagementRoles) (slot-value _basicUserRoleFactory 'f_REVIEWER))
        (jm_add_1 (slot-value this 'f_storeManagementRoles) (slot-value _basicUserRoleFactory 'f_SHIPPING))
        (jm_add_1 (slot-value this 'f_productManagementRoles) (slot-value _basicUserRoleFactory 'f_ADMINISTRATOR))
        (jm_add_1 (slot-value this 'f_productManagementRoles) (slot-value _basicUserRoleFactory 'f_STOREMANAGER))
        (jm_add_1 (slot-value this 'f_productManagementRoles) (slot-value _basicUserRoleFactory 'f_PRODUCTMANAGER))
        (jm_add_1 (slot-value this 'f_reviewManagementRoles) (slot-value _basicUserRoleFactory 'f_ADMINISTRATOR))
        (jm_add_1 (slot-value this 'f_reviewManagementRoles) (slot-value _basicUserRoleFactory 'f_STOREMANAGER))
        (jm_add_1 (slot-value this 'f_reviewManagementRoles) (slot-value _basicUserRoleFactory 'f_REVIEWER))
        (jm_add_1 (slot-value this 'f_customerManagementRoles) (slot-value _basicUserRoleFactory 'f_ADMINISTRATOR))
        (jm_add_1 (slot-value this 'f_customerManagementRoles) (slot-value _basicUserRoleFactory 'f_STOREMANAGER))
        (jm_add_1 (slot-value this 'f_customerManagementRoles) (slot-value _basicUserRoleFactory 'f_CUSTOMERMANAGER))
        (jm_add_1 (slot-value this 'f_workflowManagementRoles) (slot-value _basicUserRoleFactory 'f_ADMINISTRATOR))
        (jm_add_1 (slot-value this 'f_workflowManagementRoles) (slot-value _basicUserRoleFactory 'f_STOREMANAGER))
        (jm_add_1 (slot-value this 'f_workflowManagementRoles) (slot-value _basicUserRoleFactory 'f_WORKFLOWEDITOR))
        (jm_add_1 (slot-value this 'f_orderManagementRoles) (slot-value _basicUserRoleFactory 'f_ADMINISTRATOR))
        (jm_add_1 (slot-value this 'f_orderManagementRoles) (slot-value _basicUserRoleFactory 'f_STOREMANAGER))
        (jm_add_1 (slot-value this 'f_adjusterManagementRoles) (slot-value _basicUserRoleFactory 'f_ADMINISTRATOR))
        (jm_add_1 (slot-value this 'f_adjusterManagementRoles) (slot-value _basicUserRoleFactory 'f_STOREMANAGER))
        (jm_add_1 (slot-value this 'f_adjusterManagementRoles) (slot-value _basicUserRoleFactory 'f_ADJUSTER))
        (jm_add_1 (slot-value this 'f_shippingManagementRoles) (slot-value _basicUserRoleFactory 'f_ADMINISTRATOR))
        (jm_add_1 (slot-value this 'f_shippingManagementRoles) (slot-value _basicUserRoleFactory 'f_STOREMANAGER))
        (jm_add_1 (slot-value this 'f_shippingManagementRoles) (slot-value _basicUserRoleFactory 'f_SHIPPING))
        (jm_add_1 (slot-value this 'f_webManagementRoles) (slot-value _basicUserRoleFactory 'f_ADMINISTRATOR))
        (jm_add_1 (slot-value this 'f_webManagementRoles) (slot-value _basicUserRoleFactory 'f_STOREMANAGER))
        (jm_add_1 (slot-value this 'f_webManagementRoles) (slot-value _basicUserRoleFactory 'f_WEBMANAGER))
        (jm_add_1 (slot-value this 'f_webManagementRoles) (slot-value _basicUserRoleFactory 'f_WORKFLOWEDITOR))
        (jm_add_1 (slot-value this 'f_webManagementRoles) (slot-value _basicUserRoleFactory 'f_VIEWEDITOR))))
    this))

    
(unless (fboundp 'jm_getProductManagementRoles_0) (defgeneric jm_getProductManagementRoles_0 (this)))
(defmethod jm_getProductManagementRoles_0 ((this AdminRoleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_productManagementRoles)))))

    
(unless (fboundp 'jm_getAdminRoles_0) (defgeneric jm_getAdminRoles_0 (this)))
(defmethod jm_getAdminRoles_0 ((this AdminRoleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_adminRoles)))))

    
(unless (fboundp 'jm_getStoreAdminRoles_0) (defgeneric jm_getStoreAdminRoles_0 (this)))
(defmethod jm_getStoreAdminRoles_0 ((this AdminRoleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_storeAdminRoles)))))

    
(unless (fboundp 'jm_getStoreManagementRoles_0) (defgeneric jm_getStoreManagementRoles_0 (this)))
(defmethod jm_getStoreManagementRoles_0 ((this AdminRoleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_storeManagementRoles)))))

    
(unless (fboundp 'jm_getReviewManagementRoles_0) (defgeneric jm_getReviewManagementRoles_0 (this)))
(defmethod jm_getReviewManagementRoles_0 ((this AdminRoleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_reviewManagementRoles)))))

    
(unless (fboundp 'jm_getCustomerManagementRoles_0) (defgeneric jm_getCustomerManagementRoles_0 (this)))
(defmethod jm_getCustomerManagementRoles_0 ((this AdminRoleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_customerManagementRoles)))))

    
(unless (fboundp 'jm_getWorkflowManagementRoles_0) (defgeneric jm_getWorkflowManagementRoles_0 (this)))
(defmethod jm_getWorkflowManagementRoles_0 ((this AdminRoleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_workflowManagementRoles)))))

    
(unless (fboundp 'jm_getWebManagementRoles_0) (defgeneric jm_getWebManagementRoles_0 (this)))
(defmethod jm_getWebManagementRoles_0 ((this AdminRoleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_webManagementRoles)))))

    
(unless (fboundp 'jm_getShippingManagementRoles_0) (defgeneric jm_getShippingManagementRoles_0 (this)))
(defmethod jm_getShippingManagementRoles_0 ((this AdminRoleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_shippingManagementRoles)))))

    
(unless (fboundp 'jm_getAdjusterManagementRoles_0) (defgeneric jm_getAdjusterManagementRoles_0 (this)))
(defmethod jm_getAdjusterManagementRoles_0 ((this AdminRoleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_adjusterManagementRoles)))))

    
(unless (fboundp 'jm_getOrderManagementRoles_0) (defgeneric jm_getOrderManagementRoles_0 (this)))
(defmethod jm_getOrderManagementRoles_0 ((this AdminRoleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_orderManagementRoles)))))



