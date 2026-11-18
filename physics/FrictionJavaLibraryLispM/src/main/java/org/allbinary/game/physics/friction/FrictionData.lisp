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
;;;; package org.allbinary.game.physics.friction

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FrictionData (JObject)
  ())

(defvar FrictionData.jcell_FRICTION_DENOMINATOR :jnone)
(defun FrictionData.jstatic_FRICTION_DENOMINATOR ()
  (when (eq FrictionData.jcell_FRICTION_DENOMINATOR :jnone) (setf FrictionData.jcell_FRICTION_DENOMINATOR 100))
  FrictionData.jcell_FRICTION_DENOMINATOR)
(defun (setf FrictionData.jstatic_FRICTION_DENOMINATOR) (value) (setf FrictionData.jcell_FRICTION_DENOMINATOR value))

    
(defun FrictionData.jnew_0 ()
  (let ((this (make-instance 'FrictionData)))
  (let ()
    (block jreturn nil))
    this))

    
(defun FrictionData.jm_getFrictionDenominator_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FrictionData.jstatic_FRICTION_DENOMINATOR)))))



