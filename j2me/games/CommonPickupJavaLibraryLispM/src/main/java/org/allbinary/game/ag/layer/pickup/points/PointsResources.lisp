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
;;;; package org.allbinary.game.ag.layer.pickup.points

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PointsResources (JObject)
  ((f_RESOURCE :initform nil)
   (f_RESOURCE_2 :initform nil)
   (f_RESOURCE_3 :initform nil)
   (f_RESOURCE_4 :initform nil)))

(defvar PointsResources.jcell_SINGLETON :jnone)
(defun PointsResources.jstatic_SINGLETON ()
  (when (eq PointsResources.jcell_SINGLETON :jnone) (setf PointsResources.jcell_SINGLETON (PointsResources.jnew_0)))
  PointsResources.jcell_SINGLETON)
(defun (setf PointsResources.jstatic_SINGLETON) (value) (setf PointsResources.jcell_SINGLETON value))

    
(defun PointsResources.jnew_0 ()
  (let ((this (make-instance 'PointsResources)))
    (setf (slot-value this 'f_RESOURCE) "points_drop_20_by_20.png")
    (setf (slot-value this 'f_RESOURCE_2) "points_2_drop_20_by_20.png")
    (setf (slot-value this 'f_RESOURCE_3) "points_3_drop_20_by_20.png")
    (setf (slot-value this 'f_RESOURCE_4) "points_4_drop_20_by_20.png")
  (let ()
    (block jreturn nil))
    this))

    
(defun PointsResources.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PointsResources.jstatic_SINGLETON)))))



