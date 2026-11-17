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

(defclass BasicUserRole (JObject)
  ((f_m_int_RoleId :initform 0)
   (f_role :initform nil)
   (f_displayValue :initform nil)
   (f_sessionTimeout :initform 0)
   (f_sessionInactivityTimeout :initform 0)))

    
(defun BasicUserRole.jnew_4 (_aRole _a_int_RoleId _aSessionTimeout _aSessionInactivityTimeout)
  (declare (ignorable _aRole _a_int_RoleId _aSessionTimeout _aSessionInactivityTimeout))
  (let ((this (make-instance 'BasicUserRole)))
    
    
    
    
    
  (let ()
    (block jreturn
        (setf this (BasicUserRole.jnew_5 _aRole _aRole _a_int_RoleId _aSessionTimeout _aSessionInactivityTimeout))))
    this))

    
(defun BasicUserRole.jnew_5 (_aRole _aDisplayValue _a_int_RoleId _aSessionTimeout _aSessionInactivityTimeout)
  (declare (ignorable _aRole _aDisplayValue _a_int_RoleId _aSessionTimeout _aSessionInactivityTimeout))
  (let ((this (make-instance 'BasicUserRole)))
    
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_m_int_RoleId) _a_int_RoleId)
        (setf (slot-value this 'f_role) _aRole)
        (setf (slot-value this 'f_displayValue) _aDisplayValue)
        (setf (slot-value this 'f_sessionTimeout) _aSessionTimeout)
        (setf (slot-value this 'f_sessionInactivityTimeout) _aSessionInactivityTimeout)
        (JR.className (slot-value (BasicUserRoles.jm_getInstance_0) 'f_roleVector))))
    this))

    
(unless (fboundp 'jm_getRoleId_0) (defgeneric jm_getRoleId_0 (this)))
(defmethod jm_getRoleId_0 ((this BasicUserRole))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_m_int_RoleId)))))

    
(unless (fboundp 'jm_getRole_0) (defgeneric jm_getRole_0 (this)))
(defmethod jm_getRole_0 ((this BasicUserRole))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_role)))))

    
(unless (fboundp 'jm_getSessionTimeout_0) (defgeneric jm_getSessionTimeout_0 (this)))
(defmethod jm_getSessionTimeout_0 ((this BasicUserRole))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_sessionTimeout)))))

    
(unless (fboundp 'jm_getSessionInactivityTimeout_0) (defgeneric jm_getSessionInactivityTimeout_0 (this)))
(defmethod jm_getSessionInactivityTimeout_0 ((this BasicUserRole))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_sessionInactivityTimeout)))))

    
(unless (fboundp 'jm_equals_1) (defgeneric jm_equals_1 (this p1)))
(defmethod jm_equals_1 ((this BasicUserRole) _basicUserRole)
  (declare (ignorable this _basicUserRole))
  (let ()
    (block jreturn
        (if (= (jm_getRoleId_0 this) (jm_getRoleId_0 _basicUserRole))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this BasicUserRole))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getRole_0 this)))))



