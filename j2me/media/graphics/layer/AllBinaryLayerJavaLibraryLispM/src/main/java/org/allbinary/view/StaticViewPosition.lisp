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
;;;; package org.allbinary.view

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass StaticViewPosition (ViewPosition)
  ())

    
(defun StaticViewPosition.jnew_3 (_x _y _z)
  (declare (ignorable _x _y _z))
  (let ((this (make-instance 'StaticViewPosition)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getX_0) (defgeneric jm_getX_0 (this)))
(defmethod jm_getX_0 ((this StaticViewPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getRawX_0 this)))))

    
(unless (fboundp 'jm_getY_0) (defgeneric jm_getY_0 (this)))
(defmethod jm_getY_0 ((this StaticViewPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getRawY_0 this)))))

    
(unless (fboundp 'jm_getZ_0) (defgeneric jm_getZ_0 (this)))
(defmethod jm_getZ_0 ((this StaticViewPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getRawZ_0 this)))))



