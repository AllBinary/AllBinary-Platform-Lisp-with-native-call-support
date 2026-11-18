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
;;;; package org.allbinary.game.ag.layer.pickup.life

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LifeResources (JObject)
  ((f_RESOURCE :initform nil)))

(defvar LifeResources.jcell_SINGLETON :jnone)
(defun LifeResources.jstatic_SINGLETON ()
  (when (eq LifeResources.jcell_SINGLETON :jnone) (setf LifeResources.jcell_SINGLETON (LifeResources.jnew_0)))
  LifeResources.jcell_SINGLETON)
(defun (setf LifeResources.jstatic_SINGLETON) (value) (setf LifeResources.jcell_SINGLETON value))

    
(defun LifeResources.jnew_0 ()
  (let ((this (make-instance 'LifeResources)))
    (setf (slot-value this 'f_RESOURCE) "life_drop_20_by_20.png")
  (let ()
    (block jreturn nil))
    this))

    
(defun LifeResources.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LifeResources.jstatic_SINGLETON)))))



