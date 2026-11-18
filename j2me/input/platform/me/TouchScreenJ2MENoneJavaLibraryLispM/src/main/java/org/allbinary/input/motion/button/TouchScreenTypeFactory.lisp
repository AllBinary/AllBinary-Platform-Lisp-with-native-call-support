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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TouchScreenTypeFactory (JObject)
  ())

(defvar TouchScreenTypeFactory.jcell_instance :jnone)
(defun TouchScreenTypeFactory.jstatic_instance ()
  (when (eq TouchScreenTypeFactory.jcell_instance :jnone) (setf TouchScreenTypeFactory.jcell_instance (TouchScreenTypeFactory.jnew_0)))
  TouchScreenTypeFactory.jcell_instance)
(defun (setf TouchScreenTypeFactory.jstatic_instance) (value) (setf TouchScreenTypeFactory.jcell_instance value))

(defun TouchScreenTypeFactory.jnew_0 ()
  (let ((this (make-instance 'TouchScreenTypeFactory)))
    this))

    
(defun TouchScreenTypeFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchScreenTypeFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_TouchScreenTypeFactory_0) (defgeneric jm_TouchScreenTypeFactory_0 (this)))
(defmethod jm_TouchScreenTypeFactory_0 ((this TouchScreenTypeFactory))
  (declare (ignorable this))
  (let (_touchScreenFactory)
  (declare (ignorable _touchScreenFactory))
    (block jreturn
        (setf _touchScreenFactory (TouchScreenFactory.jm_getInstance_0))
        (jm_setTouch_1 _touchScreenFactory nil))))



