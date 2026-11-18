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

(defclass ItemIndexPaintable (JObject)
  ())

(defvar ItemIndexPaintable.jcell_instance :jnone)
(defun ItemIndexPaintable.jstatic_instance ()
  (when (eq ItemIndexPaintable.jcell_instance :jnone) (setf ItemIndexPaintable.jcell_instance (ItemIndexPaintable.jnew_0)))
  ItemIndexPaintable.jcell_instance)
(defun (setf ItemIndexPaintable.jstatic_instance) (value) (setf ItemIndexPaintable.jcell_instance value))

(defun ItemIndexPaintable.jnew_0 ()
  (let ((this (make-instance 'ItemIndexPaintable)))
    this))

    
(defun ItemIndexPaintable.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ItemIndexPaintable.jstatic_instance)))))

    
(unless (fboundp 'jm_paint_5) (defgeneric jm_paint_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_paint_5 ((this ItemIndexPaintable) _graphics _index _item _dx _dy)
  (declare (ignorable this _graphics _index _item _dx _dy))
  (let ()
    (block jreturn
        (return-from jreturn 0))))



