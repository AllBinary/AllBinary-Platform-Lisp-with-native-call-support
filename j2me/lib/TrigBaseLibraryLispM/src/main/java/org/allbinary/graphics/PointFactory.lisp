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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PointFactory (JObject)
  ((f_ZERO_ZERO :initform nil)))

(defvar PointFactory.jcell_instance :jnone)
(defun PointFactory.jstatic_instance ()
  (when (eq PointFactory.jcell_instance :jnone) (setf PointFactory.jcell_instance (PointFactory.jnew_0)))
  PointFactory.jcell_instance)

    
(defun PointFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PointFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this PointFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(defun PointFactory.jnew_0 ()
  (let ((this (make-instance 'PointFactory)))
    (setf (slot-value this 'f_ZERO_ZERO) (jm_createXYZ_3 this 0 0 0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_createXY_2) (defgeneric jm_createXY_2 (this p1 p2)))
(defmethod jm_createXY_2 ((this PointFactory) _x _y)
  (declare (ignorable this _x _y))
  (let ()
    (block jreturn
        (return-from jreturn (GPoint.jnew_3 _x _y 0)))))

    
(unless (fboundp 'jm_createXYZ_3) (defgeneric jm_createXYZ_3 (this p1 p2 p3)))
(defmethod jm_createXYZ_3 ((this PointFactory) _x _y _z)
  (declare (ignorable this _x _y _z))
  (let ()
    (block jreturn
        (return-from jreturn (GPoint.jnew_3 _x _y _z)))))



