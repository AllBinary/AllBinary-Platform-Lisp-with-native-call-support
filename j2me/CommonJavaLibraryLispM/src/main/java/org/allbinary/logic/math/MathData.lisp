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
;;;; package org.allbinary.logic.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MathData (JObject)
  ((f_EQUALS :initform nil)
   (f_PLUS :initform nil)
   (f_GREATER_THAN :initform nil)
   (f_MINUS :initform nil)
   (f_DIVIDE :initform nil)
   (f_MULTIPLY :initform nil)))

(defvar MathData.jcell_instance :jnone)
(defun MathData.jstatic_instance ()
  (when (eq MathData.jcell_instance :jnone) (setf MathData.jcell_instance (MathData.jnew_0)))
  MathData.jcell_instance)
(defun (setf MathData.jstatic_instance) (value) (setf MathData.jcell_instance value))

    
(defun MathData.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MathData.jstatic_instance)))))

    
(defun MathData.jnew_0 ()
  (let ((this (make-instance 'MathData)))
    
    (setf (slot-value this 'f_PLUS) "+")
    (setf (slot-value this 'f_GREATER_THAN) ">")
    
    
    
  (let (_commonSeps)
  (declare (ignorable _commonSeps))
    (block jreturn
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (setf (slot-value this 'f_EQUALS) (slot-value _commonSeps 'f_EQUALS))
        (setf (slot-value this 'f_MINUS) (slot-value _commonSeps 'f_DASH))
        (setf (slot-value this 'f_DIVIDE) (slot-value _commonSeps 'f_FORWARD_SLASH))
        (setf (slot-value this 'f_MULTIPLY) (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_STAR))))
    this))



