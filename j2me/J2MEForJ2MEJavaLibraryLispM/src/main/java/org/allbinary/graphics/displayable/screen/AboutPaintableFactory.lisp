;;;;
;;;; AllBinary Open License Version 1
;;;; Copyright (c) 2022 AllBinary
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
;;;; package org.allbinary.graphics.displayable.screen

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AboutPaintableFactory (JObject)
  ((f_paintableArray :initform nil)))

(defvar AboutPaintableFactory.jcell_instance :jnone)
(defun AboutPaintableFactory.jstatic_instance ()
  (when (eq AboutPaintableFactory.jcell_instance :jnone) (setf AboutPaintableFactory.jcell_instance (AboutPaintableFactory.jnew_0)))
  AboutPaintableFactory.jcell_instance)
(defun (setf AboutPaintableFactory.jstatic_instance) (value) (setf AboutPaintableFactory.jcell_instance value))

    
(defun AboutPaintableFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AboutPaintableFactory.jstatic_instance)))))

    
(defun AboutPaintableFactory.jnew_0 ()
  (let ((this (make-instance 'AboutPaintableFactory)))
    (setf (slot-value this 'f_paintableArray) (vector (NullPaintable.jm_getInstance_0)))
  (let (_INFO _DEVELOPERS)
  (declare (ignorable _INFO _DEVELOPERS))
    (block jreturn
        (setf _INFO (vector "Built with the" "AllBinary Platform" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) "Comments or Questions:" "support@allbinary.com"))
        (setf _DEVELOPERS (vector "Developed By:" "Travis Berthelot"))
        (setf (slot-value this 'f_paintableArray) (jm_getPaintableArrayInstance_0 (AboutPaintable.jm_getInstance_2 _INFO _DEVELOPERS)))))
    this))



