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
;;;; package org.allbinary.game.ag.layer.hud.basic

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HudResources (JObject)
  ((f_RESOURCE_LIFE :initform nil)
   (f_RESOURCE_HEALTH :initform nil)))

(defvar HudResources.jcell_instance :jnone)
(defun HudResources.jstatic_instance ()
  (when (eq HudResources.jcell_instance :jnone) (setf HudResources.jcell_instance (HudResources.jnew_0)))
  HudResources.jcell_instance)
(defun (setf HudResources.jstatic_instance) (value) (setf HudResources.jcell_instance value))

    
(defun HudResources.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (HudResources.jstatic_instance)))))

    
(defun HudResources.jnew_0 ()
  (let ((this (make-instance 'HudResources)))
    (setf (slot-value this 'f_RESOURCE_LIFE) "/hud_life_10_by_10.png")
    (setf (slot-value this 'f_RESOURCE_HEALTH) "/hud_health_10_by_10.png")
  (let ()
    (block jreturn nil))
    this))



