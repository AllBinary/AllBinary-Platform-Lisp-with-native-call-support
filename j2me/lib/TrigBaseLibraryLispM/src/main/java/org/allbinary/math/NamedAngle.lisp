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
;;;; package org.allbinary.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NamedAngle (Angle)
  ((f_name :initform nil)))

    
(defun NamedAngle.jnew_2 (_angle _name)
  (declare (ignorable _angle _name))
  (let ((this (make-instance 'NamedAngle)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_name) _name)))
    this))



