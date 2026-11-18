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

(defclass ThirdPartyStoreFactory (JObject)
  ())

(defvar ThirdPartyStoreFactory.jcell_instance :jnone)
(defun ThirdPartyStoreFactory.jstatic_instance ()
  (when (eq ThirdPartyStoreFactory.jcell_instance :jnone) (setf ThirdPartyStoreFactory.jcell_instance (NoThirdPartyStore.jnew_0)))
  ThirdPartyStoreFactory.jcell_instance)
(defun (setf ThirdPartyStoreFactory.jstatic_instance) (value) (setf ThirdPartyStoreFactory.jcell_instance value))

    
(defun ThirdPartyStoreFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ThirdPartyStoreFactory.jstatic_instance)))))

    
(defun ThirdPartyStoreFactory.jnew_0 ()
  (let ((this (make-instance 'ThirdPartyStoreFactory)))
  (let ()
    (block jreturn nil))
    this))



