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

(defclass LockedResources (JObject)
  ((f_LOCKED_DEMO_GAME_FEATURE_RESOURCE :initform nil)))

(defvar LockedResources.jcell_instance :jnone)
(defun LockedResources.jstatic_instance ()
  (when (eq LockedResources.jcell_instance :jnone) (setf LockedResources.jcell_instance (LockedResources.jnew_0)))
  LockedResources.jcell_instance)
(defun (setf LockedResources.jstatic_instance) (value) (setf LockedResources.jcell_instance value))

(defun LockedResources.jnew_0 ()
  (let ((this (make-instance 'LockedResources)))
    (setf (slot-value this 'f_LOCKED_DEMO_GAME_FEATURE_RESOURCE) "/locked_demo_game_feature_64_by_64.png")
    this))

    
(defun LockedResources.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LockedResources.jstatic_instance)))))



