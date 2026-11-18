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
;;;; package org.allbinary.game.gd.resource

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GDResources (JObject)
  ((f_resourceStringArray :initform nil)
   (f_currentLayoutRequiredTotal :initform 0)))

(defvar GDResources.jcell_instance :jnone)
(defun GDResources.jstatic_instance ()
  (when (eq GDResources.jcell_instance :jnone) (setf GDResources.jcell_instance (GDResources.jnew_0)))
  GDResources.jcell_instance)
(defun (setf GDResources.jstatic_instance) (value) (setf GDResources.jcell_instance value))

(defun GDResources.jnew_0 ()
  (let ((this (make-instance 'GDResources)))
    (setf (slot-value this 'f_resourceStringArray) (vector))
    
    this))

    
(defun GDResources.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GDResources.jstatic_instance)))))



