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

(defclass ThirdPartyInApplicationPurchaseInterface (JObject)
  ())

(defun ThirdPartyInApplicationPurchaseInterface.jnew_0 ()
  (let ((this (make-instance 'ThirdPartyInApplicationPurchaseInterface)))
    this))

    
(unless (fboundp 'jm_isPurchased_1) (defgeneric jm_isPurchased_1 (this p1)))
(defmethod jm_isPurchased_1 ((this ThirdPartyInApplicationPurchaseInterface) _lockableFeature)
  (declare (ignorable this _lockableFeature))
  (error (JR.newException "AbstractMethodError" "isPurchased")))

    
(unless (fboundp 'jm_onCreate_2) (defgeneric jm_onCreate_2 (this p1 p2)))
(defmethod jm_onCreate_2 ((this ThirdPartyInApplicationPurchaseInterface) _anyType _stateObject)
  (declare (ignorable this _anyType _stateObject))
  (error (JR.newException "AbstractMethodError" "onCreate")))

    
(unless (fboundp 'jm_onDestroy_0) (defgeneric jm_onDestroy_0 (this)))
(defmethod jm_onDestroy_0 ((this ThirdPartyInApplicationPurchaseInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "onDestroy")))

    
(unless (fboundp 'jm_onStart_0) (defgeneric jm_onStart_0 (this)))
(defmethod jm_onStart_0 ((this ThirdPartyInApplicationPurchaseInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "onStart")))

    
(unless (fboundp 'jm_onActivityResult_3) (defgeneric jm_onActivityResult_3 (this p1 p2 p3)))
(defmethod jm_onActivityResult_3 ((this ThirdPartyInApplicationPurchaseInterface) _requestCode _resultCode _dataObject)
  (declare (ignorable this _requestCode _resultCode _dataObject))
  (error (JR.newException "AbstractMethodError" "onActivityResult")))

    
(unless (fboundp 'jm_onSaveInstanceState_1) (defgeneric jm_onSaveInstanceState_1 (this p1)))
(defmethod jm_onSaveInstanceState_1 ((this ThirdPartyInApplicationPurchaseInterface) _anyType)
  (declare (ignorable this _anyType))
  (error (JR.newException "AbstractMethodError" "onSaveInstanceState")))

    
(unless (fboundp 'jm_onStop_0) (defgeneric jm_onStop_0 (this)))
(defmethod jm_onStop_0 ((this ThirdPartyInApplicationPurchaseInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "onStop")))

    
(unless (fboundp 'jm_requestPurchase_1) (defgeneric jm_requestPurchase_1 (this p1)))
(defmethod jm_requestPurchase_1 ((this ThirdPartyInApplicationPurchaseInterface) _lockableFeature)
  (declare (ignorable this _lockableFeature))
  (error (JR.newException "AbstractMethodError" "requestPurchase")))

    
(unless (fboundp 'jm_requestReceipts_0) (defgeneric jm_requestReceipts_0 (this)))
(defmethod jm_requestReceipts_0 ((this ThirdPartyInApplicationPurchaseInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "requestReceipts")))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this ThirdPartyInApplicationPurchaseInterface) _lockableFeature)
  (declare (ignorable this _lockableFeature))
  (error (JR.newException "AbstractMethodError" "add")))

    
(unless (fboundp 'jm_getUserName_0) (defgeneric jm_getUserName_0 (this)))
(defmethod jm_getUserName_0 ((this ThirdPartyInApplicationPurchaseInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getUserName")))

    
(unless (fboundp 'jm_isEnabled_0) (defgeneric jm_isEnabled_0 (this)))
(defmethod jm_isEnabled_0 ((this ThirdPartyInApplicationPurchaseInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isEnabled")))



