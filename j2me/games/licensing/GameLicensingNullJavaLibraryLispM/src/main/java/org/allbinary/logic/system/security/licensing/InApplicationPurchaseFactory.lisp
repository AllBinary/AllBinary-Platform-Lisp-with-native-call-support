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

(defclass InApplicationPurchaseFactory (JObject)
  ())

(defvar InApplicationPurchaseFactory.jcell_instance :jnone)
(defun InApplicationPurchaseFactory.jstatic_instance ()
  (when (eq InApplicationPurchaseFactory.jcell_instance :jnone) (setf InApplicationPurchaseFactory.jcell_instance (InApplicationPurchaseFactory.jnew_0)))
  InApplicationPurchaseFactory.jcell_instance)
(defun (setf InApplicationPurchaseFactory.jstatic_instance) (value) (setf InApplicationPurchaseFactory.jcell_instance value))

    
(defun InApplicationPurchaseFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (InApplicationPurchaseFactory.jstatic_instance)))))

    
(defun InApplicationPurchaseFactory.jnew_0 ()
  (let ((this (make-instance 'InApplicationPurchaseFactory)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this InApplicationPurchaseFactory) _anyType _stateObject)
  (declare (ignorable this _anyType _stateObject))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onCreate_2) (defgeneric jm_onCreate_2 (this p1 p2)))
(defmethod jm_onCreate_2 ((this InApplicationPurchaseFactory) _anyType _stateObject)
  (declare (ignorable this _anyType _stateObject))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onStart_0) (defgeneric jm_onStart_0 (this)))
(defmethod jm_onStart_0 ((this InApplicationPurchaseFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onResult_3) (defgeneric jm_onResult_3 (this p1 p2 p3)))
(defmethod jm_onResult_3 ((this InApplicationPurchaseFactory) _requestCode _resultCode _data)
  (declare (ignorable this _requestCode _resultCode _data))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onSaveState_1) (defgeneric jm_onSaveState_1 (this p1)))
(defmethod jm_onSaveState_1 ((this InApplicationPurchaseFactory) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onStop_0) (defgeneric jm_onStop_0 (this)))
(defmethod jm_onStop_0 ((this InApplicationPurchaseFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onDestroy_0) (defgeneric jm_onDestroy_0 (this)))
(defmethod jm_onDestroy_0 ((this InApplicationPurchaseFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_purchase_1) (defgeneric jm_purchase_1 (this p1)))
(defmethod jm_purchase_1 ((this InApplicationPurchaseFactory) _lockableFeature)
  (declare (ignorable this _lockableFeature))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isPurchased_1) (defgeneric jm_isPurchased_1 (this p1)))
(defmethod jm_isPurchased_1 ((this InApplicationPurchaseFactory) _lockableFeature)
  (declare (ignorable this _lockableFeature))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this InApplicationPurchaseFactory) _lockableFeature)
  (declare (ignorable this _lockableFeature))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getUserName_0) (defgeneric jm_getUserName_0 (this)))
(defmethod jm_getUserName_0 ((this InApplicationPurchaseFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_isEnabled_0) (defgeneric jm_isEnabled_0 (this)))
(defmethod jm_isEnabled_0 ((this InApplicationPurchaseFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))



