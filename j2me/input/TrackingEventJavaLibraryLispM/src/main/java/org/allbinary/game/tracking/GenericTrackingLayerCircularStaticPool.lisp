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
;;;; package org.allbinary.game.tracking

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GenericTrackingLayerCircularStaticPool (AllBinaryLayerCircularPool)
  ())

(defvar GenericTrackingLayerCircularStaticPool.jcell_SINGLETON :jnone)
(defun GenericTrackingLayerCircularStaticPool.jstatic_SINGLETON ()
  (when (eq GenericTrackingLayerCircularStaticPool.jcell_SINGLETON :jnone) (setf GenericTrackingLayerCircularStaticPool.jcell_SINGLETON (GenericTrackingLayerCircularStaticPool.jnew_0)))
  GenericTrackingLayerCircularStaticPool.jcell_SINGLETON)
(defun (setf GenericTrackingLayerCircularStaticPool.jstatic_SINGLETON) (value) (setf GenericTrackingLayerCircularStaticPool.jcell_SINGLETON value))

    
(defun GenericTrackingLayerCircularStaticPool.jnew_0 ()
  (let ((this (make-instance 'GenericTrackingLayerCircularStaticPool)))
  (let ()
    (block jreturn nil))
    this))

    
(defun GenericTrackingLayerCircularStaticPool.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GenericTrackingLayerCircularStaticPool.jstatic_SINGLETON)))))



