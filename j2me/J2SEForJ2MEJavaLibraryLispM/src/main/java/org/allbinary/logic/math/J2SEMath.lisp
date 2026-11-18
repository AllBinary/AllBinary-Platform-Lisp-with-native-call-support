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
;;;; package org.allbinary.logic.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass J2SEMath (JObject)
  ())

(defvar J2SEMath.jcell_instance :jnone)
(defun J2SEMath.jstatic_instance ()
  (when (eq J2SEMath.jcell_instance :jnone) (setf J2SEMath.jcell_instance (J2SEMath.jnew_0)))
  J2SEMath.jcell_instance)
(defun (setf J2SEMath.jstatic_instance) (value) (setf J2SEMath.jcell_instance value))

(defun J2SEMath.jnew_0 ()
  (let ((this (make-instance 'J2SEMath)))
    this))

    
(defun J2SEMath.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (J2SEMath.jstatic_instance)))))

    
(unless (fboundp 'jm_round_1) (defgeneric jm_round_1 (this p1)))
(defmethod jm_round_1 ((this J2SEMath) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (return-from jreturn (round _value)))))

    
(unless (fboundp 'jm_abs_1) (defgeneric jm_abs_1 (this p1)))
(defmethod jm_abs_1 ((this J2SEMath) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (return-from jreturn (if (< _value 0.0f0) (- _value) _value)))))

    
(unless (fboundp 'jm_absdouble_1) (defgeneric jm_absdouble_1 (this p1)))
(defmethod jm_absdouble_1 ((this J2SEMath) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (return-from jreturn (if (< _value 0.0d0) (- _value) _value)))))



