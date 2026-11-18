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
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ItemIndexDx (JObject)
  ())

(defvar ItemIndexDx.jcell_instance :jnone)
(defun ItemIndexDx.jstatic_instance ()
  (when (eq ItemIndexDx.jcell_instance :jnone) (setf ItemIndexDx.jcell_instance (ItemIndexDx.jnew_0)))
  ItemIndexDx.jcell_instance)
(defun (setf ItemIndexDx.jstatic_instance) (value) (setf ItemIndexDx.jcell_instance value))

(defun ItemIndexDx.jnew_0 ()
  (let ((this (make-instance 'ItemIndexDx)))
    this))

    
(defun ItemIndexDx.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ItemIndexDx.jstatic_instance)))))

    
(unless (fboundp 'jm_getDx_4) (defgeneric jm_getDx_4 (this p1 p2 p3 p4)))
(defmethod jm_getDx_4 ((this ItemIndexDx) _index _item _dx _dy)
  (declare (ignorable this _index _item _dx _dy))
  (let ()
    (block jreturn
        (return-from jreturn 0))))



