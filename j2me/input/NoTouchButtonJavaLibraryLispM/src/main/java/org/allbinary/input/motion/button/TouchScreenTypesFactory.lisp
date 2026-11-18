;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TouchScreenTypesFactory (JObject)
  ((f_FINGER :initform nil)
   (f_NOTOUCH :initform nil)
   (f_STYLUS :initform nil)
   (f_UNDEFINED :initform nil)))

(defvar TouchScreenTypesFactory.jcell_instance :jnone)
(defun TouchScreenTypesFactory.jstatic_instance ()
  (when (eq TouchScreenTypesFactory.jcell_instance :jnone) (setf TouchScreenTypesFactory.jcell_instance (TouchScreenTypesFactory.jnew_0)))
  TouchScreenTypesFactory.jcell_instance)
(defun (setf TouchScreenTypesFactory.jstatic_instance) (value) (setf TouchScreenTypesFactory.jcell_instance value))

(defun TouchScreenTypesFactory.jnew_0 ()
  (let ((this (make-instance 'TouchScreenTypesFactory)))
    (setf (slot-value this 'f_FINGER) (TouchScreenType.jnew_1 "Finger"))
    (setf (slot-value this 'f_NOTOUCH) (TouchScreenType.jnew_1 "No Touch"))
    (setf (slot-value this 'f_STYLUS) (TouchScreenType.jnew_1 "Stylus"))
    (setf (slot-value this 'f_UNDEFINED) (TouchScreenType.jnew_1 "Undefined"))
    this))

    
(defun TouchScreenTypesFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchScreenTypesFactory.jstatic_instance)))))



