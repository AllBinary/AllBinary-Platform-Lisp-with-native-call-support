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

(defclass NoThirdPartyStore (ThirdPartyStore)
  ())

    
(defun NoThirdPartyStore.jnew_0 ()
  (let ((this (make-instance 'NoThirdPartyStore)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_authorize_1) (defgeneric jm_authorize_1 (this p1)))
(defmethod jm_authorize_1 ((this NoThirdPartyStore) _clientInformationInterface)
  (declare (ignorable this _clientInformationInterface))
  (let ()
    (block jreturn
        (jm_setAuthorized_1 this t))))



