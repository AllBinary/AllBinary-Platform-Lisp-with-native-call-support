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

(defclass TouchButtonsBuilderFactory (JObject)
  ())

(defvar TouchButtonsBuilderFactory.jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY :jnone)
(defun TouchButtonsBuilderFactory.jstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY ()
  (when (eq TouchButtonsBuilderFactory.jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY :jnone) (setf TouchButtonsBuilderFactory.jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY (TouchButtonsBuilderFactory.jnew_0)))
  TouchButtonsBuilderFactory.jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY)
(defun (setf TouchButtonsBuilderFactory.jstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY) (value) (setf TouchButtonsBuilderFactory.jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY value))

(defun TouchButtonsBuilderFactory.jnew_0 ()
  (let ((this (make-instance 'TouchButtonsBuilderFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_0) (defgeneric jm_getInstance_0 (this)))
(defmethod jm_getInstance_0 ((this TouchButtonsBuilderFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (NoButtonsTouchInputFactory.jm_getInstance_0)))))



