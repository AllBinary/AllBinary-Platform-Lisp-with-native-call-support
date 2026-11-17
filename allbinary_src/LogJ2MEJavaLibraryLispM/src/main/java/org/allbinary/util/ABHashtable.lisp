;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2026 AllBinary 
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
;;;; package org.allbinary.util

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ABHashtable (Hashtable)
  ())

    
(defun ABHashtable.jnew_1 (_initialCapacity)
  (declare (ignorable _initialCapacity))
  (let ((this (make-instance 'ABHashtable)))
  (let ()
    (block jreturn
        nil))
    this))

    
(defun ABHashtable.jnew_0 ()
  (let ((this (make-instance 'ABHashtable)))
  (let ()
    (block jreturn
        nil))
    this))



