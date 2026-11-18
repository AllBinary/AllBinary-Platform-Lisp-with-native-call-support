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
;;;; package org.allbinary.graphics.form.item

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CustomItemUtil (JObject)
  ((f_CUSTOM_ITEM_ARRAY :initform nil)))

(defvar CustomItemUtil.jcell_instance :jnone)
(defun CustomItemUtil.jstatic_instance ()
  (when (eq CustomItemUtil.jcell_instance :jnone) (setf CustomItemUtil.jcell_instance (CustomItemUtil.jnew_0)))
  CustomItemUtil.jcell_instance)
(defun (setf CustomItemUtil.jstatic_instance) (value) (setf CustomItemUtil.jcell_instance value))

(defun CustomItemUtil.jnew_0 ()
  (let ((this (make-instance 'CustomItemUtil)))
    (setf (slot-value this 'f_CUSTOM_ITEM_ARRAY) (JR.newArray nil 0))
    this))

    
(defun CustomItemUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CustomItemUtil.jstatic_instance)))))



