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

(defclass OnDemandResources (JObject)
  ((f_logUtil :initform nil)))

(defvar OnDemandResources.jcell_NULL_ON_DEMAND_RESOURCES :jnone)
(defun OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES ()
  (when (eq OnDemandResources.jcell_NULL_ON_DEMAND_RESOURCES :jnone) (setf OnDemandResources.jcell_NULL_ON_DEMAND_RESOURCES (OnDemandResources.jnew_0)))
  OnDemandResources.jcell_NULL_ON_DEMAND_RESOURCES)
(defun (setf OnDemandResources.jstatic_NULL_ON_DEMAND_RESOURCES) (value) (setf OnDemandResources.jcell_NULL_ON_DEMAND_RESOURCES value))

    
(defun OnDemandResources.jnew_0 ()
  (let ((this (make-instance 'OnDemandResources)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_waitFor_0) (defgeneric jm_waitFor_0 (this)))
(defmethod jm_waitFor_0 ((this OnDemandResources))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this OnDemandResources))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_initAt_5) (defgeneric jm_initAt_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_initAt_5 ((this OnDemandResources) _imageCache _resourceAnimationInterfaceFactoryInterfaceFactory _portion _loadingString _index)
  (declare (ignorable this _imageCache _resourceAnimationInterfaceFactoryInterfaceFactory _portion _loadingString _index))
  (let ()
    (block jreturn
        (return-from jreturn 0))))



