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
;;;; package org.allbinary.game.ag.layer.pickup.health

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HealthResources (JObject)
  ((f_RESOURCE :initform nil)))

(defvar HealthResources.jcell_SINGLETON :jnone)
(defun HealthResources.jstatic_SINGLETON ()
  (when (eq HealthResources.jcell_SINGLETON :jnone) (setf HealthResources.jcell_SINGLETON (HealthResources.jnew_0)))
  HealthResources.jcell_SINGLETON)
(defun (setf HealthResources.jstatic_SINGLETON) (value) (setf HealthResources.jcell_SINGLETON value))

    
(defun HealthResources.jnew_0 ()
  (let ((this (make-instance 'HealthResources)))
    (setf (slot-value this 'f_RESOURCE) "health_drop_20_by_20.png")
  (let ()
    (block jreturn nil))
    this))

    
(defun HealthResources.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (HealthResources.jstatic_SINGLETON)))))



