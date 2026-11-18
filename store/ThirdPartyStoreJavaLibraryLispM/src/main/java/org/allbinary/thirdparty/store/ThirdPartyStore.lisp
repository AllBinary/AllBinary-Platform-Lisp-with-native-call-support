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
;;;; package org.allbinary.thirdparty.store

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ThirdPartyStore (JObject)
  ((f_authorized :initform nil)
   (f_name :initform nil)))

    
(defun ThirdPartyStore.jnew_1 (_name)
  (declare (ignorable _name))
  (let ((this (make-instance 'ThirdPartyStore)))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _name)))
    this))

    
(unless (fboundp 'jm_authorize_1) (defgeneric jm_authorize_1 (this p1)))
(defmethod jm_authorize_1 ((this ThirdPartyStore) _clientInformationInterface)
  (declare (ignorable this _clientInformationInterface))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isAuthorized_0) (defgeneric jm_isAuthorized_0 (this)))
(defmethod jm_isAuthorized_0 ((this ThirdPartyStore))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_authorized)))))

    
(unless (fboundp 'jm_setAuthorized_1) (defgeneric jm_setAuthorized_1 (this p1)))
(defmethod jm_setAuthorized_1 ((this ThirdPartyStore) _authorized)
  (declare (ignorable this _authorized))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_authorized) _authorized))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this ThirdPartyStore))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))



