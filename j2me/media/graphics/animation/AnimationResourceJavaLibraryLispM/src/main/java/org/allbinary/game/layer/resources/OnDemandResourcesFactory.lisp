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
;;;; package org.allbinary.game.layer.resources

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OnDemandResourcesFactory (JObject)
  ())

(defun OnDemandResourcesFactory.jnew_0 ()
  (let ((this (make-instance 'OnDemandResourcesFactory)))
    this))

    
(unless (fboundp 'jm_size_0) (defgeneric jm_size_0 (this)))
(defmethod jm_size_0 ((this OnDemandResourcesFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_remove_1) (defgeneric jm_remove_1 (this p1)))
(defmethod jm_remove_1 ((this OnDemandResourcesFactory) _layerId)
  (declare (ignorable this _layerId))
  (let ()
    (block jreturn
        (return-from jreturn (OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES)))))



