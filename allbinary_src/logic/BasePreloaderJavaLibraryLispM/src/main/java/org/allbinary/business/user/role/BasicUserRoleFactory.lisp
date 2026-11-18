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

(defclass BasicUserRoleFactory (JObject)
  ((f_INACTIVITYTIMEOUT :initform 0)
   (f_CUSTOMERTIMEOUT :initform 0)
   (f_CUSTOMERMAXSESSIONTIME :initform 0)
   (f_MAXSESSIONTIME :initform 0)
   (f_INSTALLER :initform nil)
   (f_ADMINISTRATOR :initform nil)
   (f_CUSTOMER :initform nil)
   (f_SUBSCRIBERCUSTOMER :initform nil)
   (f_WHOLESALECUSTOMER :initform nil)
   (f_STOREMANAGER :initform nil)
   (f_PRODUCTMANAGER :initform nil)
   (f_CUSTOMERMANAGER :initform nil)
   (f_PAYMENTMANAGER :initform nil)
   (f_ORDERMANAGER :initform nil)
   (f_WEBMANAGER :initform nil)
   (f_REVIEWER :initform nil)
   (f_SHIPPING :initform nil)
   (f_ADJUSTER :initform nil)
   (f_WORKFLOWEDITOR :initform nil)
   (f_WIZARD :initform nil)
   (f_VIEWEDITOR :initform nil)))

(defvar BasicUserRoleFactory.jcell_instance :jnone)
(defun BasicUserRoleFactory.jstatic_instance ()
  (when (eq BasicUserRoleFactory.jcell_instance :jnone) (setf BasicUserRoleFactory.jcell_instance (BasicUserRoleFactory.jnew_0)))
  BasicUserRoleFactory.jcell_instance)
(defun (setf BasicUserRoleFactory.jstatic_instance) (value) (setf BasicUserRoleFactory.jcell_instance value))

(defun BasicUserRoleFactory.jnew_0 ()
  (let ((this (make-instance 'BasicUserRoleFactory)))
    (setf (slot-value this 'f_INACTIVITYTIMEOUT) 360000000)
    (setf (slot-value this 'f_CUSTOMERTIMEOUT) 360000000)
    (setf (slot-value this 'f_CUSTOMERMAXSESSIONTIME) 360000000)
    (setf (slot-value this 'f_MAXSESSIONTIME) 360000000)
    (setf (slot-value this 'f_INSTALLER) (BasicUserRole.jnew_4 "Installer" 16 (slot-value this 'f_MAXSESSIONTIME) (slot-value this 'f_INACTIVITYTIMEOUT)))
    (setf (slot-value this 'f_ADMINISTRATOR) (BasicUserRole.jnew_4 "Administrator" 0 (slot-value this 'f_MAXSESSIONTIME) (slot-value this 'f_INACTIVITYTIMEOUT)))
    (setf (slot-value this 'f_CUSTOMER) (BasicUserRole.jnew_5 "CustomerUser" "Customer User" 1 (slot-value this 'f_CUSTOMERTIMEOUT) (slot-value this 'f_CUSTOMERMAXSESSIONTIME)))
    (setf (slot-value this 'f_SUBSCRIBERCUSTOMER) (BasicUserRole.jnew_5 "SubscriberUser" "Subscriber User" 2 (slot-value this 'f_CUSTOMERTIMEOUT) (slot-value this 'f_CUSTOMERMAXSESSIONTIME)))
    (setf (slot-value this 'f_WHOLESALECUSTOMER) (BasicUserRole.jnew_5 "WholesaleUser" "Wholesale User" 3 (slot-value this 'f_CUSTOMERTIMEOUT) (slot-value this 'f_CUSTOMERMAXSESSIONTIME)))
    (setf (slot-value this 'f_STOREMANAGER) (BasicUserRole.jnew_5 "StoreManager" "Store Manager" 4 (slot-value this 'f_MAXSESSIONTIME) (slot-value this 'f_INACTIVITYTIMEOUT)))
    (setf (slot-value this 'f_PRODUCTMANAGER) (BasicUserRole.jnew_5 "ProductManager" "Product Manager" 5 (slot-value this 'f_MAXSESSIONTIME) (slot-value this 'f_INACTIVITYTIMEOUT)))
    (setf (slot-value this 'f_CUSTOMERMANAGER) (BasicUserRole.jnew_5 "UserManager" "User Manager" 6 (slot-value this 'f_MAXSESSIONTIME) (slot-value this 'f_INACTIVITYTIMEOUT)))
    (setf (slot-value this 'f_PAYMENTMANAGER) (BasicUserRole.jnew_5 "PaymentManager" "Payment Manager" 7 (slot-value this 'f_MAXSESSIONTIME) (slot-value this 'f_INACTIVITYTIMEOUT)))
    (setf (slot-value this 'f_ORDERMANAGER) (BasicUserRole.jnew_5 "OrderManager" "Order Manager" 8 (slot-value this 'f_MAXSESSIONTIME) (slot-value this 'f_INACTIVITYTIMEOUT)))
    (setf (slot-value this 'f_WEBMANAGER) (BasicUserRole.jnew_5 "WebManager" "Web Manager" 9 (slot-value this 'f_MAXSESSIONTIME) (slot-value this 'f_INACTIVITYTIMEOUT)))
    (setf (slot-value this 'f_REVIEWER) (BasicUserRole.jnew_4 "Reviewer" 10 (slot-value this 'f_MAXSESSIONTIME) (slot-value this 'f_INACTIVITYTIMEOUT)))
    (setf (slot-value this 'f_SHIPPING) (BasicUserRole.jnew_4 "Shipping" 11 (slot-value this 'f_MAXSESSIONTIME) (slot-value this 'f_INACTIVITYTIMEOUT)))
    (setf (slot-value this 'f_ADJUSTER) (BasicUserRole.jnew_4 "Adjuster" 12 (slot-value this 'f_MAXSESSIONTIME) (slot-value this 'f_INACTIVITYTIMEOUT)))
    (setf (slot-value this 'f_WORKFLOWEDITOR) (BasicUserRole.jnew_5 "WorkFlowEditor" "WorkFlow Editor" 13 (slot-value this 'f_MAXSESSIONTIME) (slot-value this 'f_INACTIVITYTIMEOUT)))
    (setf (slot-value this 'f_WIZARD) (BasicUserRole.jnew_5 "WizardUser" "Wizard User" 14 (slot-value this 'f_MAXSESSIONTIME) (slot-value this 'f_INACTIVITYTIMEOUT)))
    (setf (slot-value this 'f_VIEWEDITOR) (BasicUserRole.jnew_5 "ViewEditor" "View Editor" 15 (slot-value this 'f_MAXSESSIONTIME) (slot-value this 'f_INACTIVITYTIMEOUT)))
    this))

    
(defun BasicUserRoleFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BasicUserRoleFactory.jstatic_instance)))))



