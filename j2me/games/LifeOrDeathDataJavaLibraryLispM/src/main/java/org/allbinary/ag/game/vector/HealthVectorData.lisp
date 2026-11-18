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
;;;; package org.allbinary.ag.game.vector

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HealthVectorData (JObject)
  ())

(defvar HealthVectorData.jcell_points :jnone)
(defun HealthVectorData.jstatic_points ()
  (when (eq HealthVectorData.jcell_points :jnone) (setf HealthVectorData.jcell_points (vector (vector (vector 2 1) (vector 3 2) (vector 3 2) (vector 4 1) (vector 4 1) (vector 5 1) (vector 5 1) (vector 6 2) (vector 6 2) (vector 6 3) (vector 6 3) (vector 3 6) (vector 3 6) (vector 0 3) (vector 0 3) (vector 0 2) (vector 0 2) (vector 1 1) (vector 1 1) (vector 2 1) (vector 1000 1000)))))
  HealthVectorData.jcell_points)
(defun (setf HealthVectorData.jstatic_points) (value) (setf HealthVectorData.jcell_points value))

(defun HealthVectorData.jnew_0 ()
  (let ((this (make-instance 'HealthVectorData)))
    this))



