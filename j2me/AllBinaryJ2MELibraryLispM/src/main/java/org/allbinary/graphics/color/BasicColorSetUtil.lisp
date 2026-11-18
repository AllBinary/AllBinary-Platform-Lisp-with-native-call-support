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
;;;; package org.allbinary.graphics.color

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicColorSetUtil (JObject)
  ())

(defvar BasicColorSetUtil.jcell_instance :jnone)
(defun BasicColorSetUtil.jstatic_instance ()
  (when (eq BasicColorSetUtil.jcell_instance :jnone) (setf BasicColorSetUtil.jcell_instance (BasicColorSetUtil.jnew_0)))
  BasicColorSetUtil.jcell_instance)
(defun (setf BasicColorSetUtil.jstatic_instance) (value) (setf BasicColorSetUtil.jcell_instance value))

    
(defun BasicColorSetUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BasicColorSetUtil.jstatic_instance)))))

    
(defun BasicColorSetUtil.jnew_0 ()
  (let ((this (make-instance 'BasicColorSetUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_setBasicColorP_2) (defgeneric jm_setBasicColorP_2 (this p1 p2)))
(defmethod jm_setBasicColorP_2 ((this BasicColorSetUtil) _graphics _basicColor)
  (declare (ignorable this _graphics _basicColor))
  (let ()
    (block jreturn
        (jm_setColor_1 _graphics (jm_intValue_0 _basicColor)))))

    
(unless (fboundp 'jm_setBasicColorP3_3) (defgeneric jm_setBasicColorP3_3 (this p1 p2 p3)))
(defmethod jm_setBasicColorP3_3 ((this BasicColorSetUtil) _graphics _basicColor _value)
  (declare (ignorable this _graphics _basicColor _value))
  (let ()
    (block jreturn
        (jm_setColor_1 _graphics _value))))



