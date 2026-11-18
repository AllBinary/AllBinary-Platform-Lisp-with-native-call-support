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
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ItemPaintableFactory (ItemPaintable)
  ())

(defvar ItemPaintableFactory.jcell_instance :jnone)
(defun ItemPaintableFactory.jstatic_instance ()
  (when (eq ItemPaintableFactory.jcell_instance :jnone) (setf ItemPaintableFactory.jcell_instance (ItemPaintableFactory.jnew_0)))
  ItemPaintableFactory.jcell_instance)
(defun (setf ItemPaintableFactory.jstatic_instance) (value) (setf ItemPaintableFactory.jcell_instance value))

(defun ItemPaintableFactory.jnew_0 ()
  (let ((this (make-instance 'ItemPaintableFactory)))
    this))

    
(defun ItemPaintableFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ItemPaintableFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getInstanceItemPaintable_1) (defgeneric jm_getInstanceItemPaintable_1 (this p1)))
(defmethod jm_getInstanceItemPaintable_1 ((this ItemPaintableFactory) _paintableForm)
  (declare (ignorable this _paintableForm))
  (let ()
    (block jreturn
        (return-from jreturn (ItemPaintableFactory.jstatic_instance)))))



