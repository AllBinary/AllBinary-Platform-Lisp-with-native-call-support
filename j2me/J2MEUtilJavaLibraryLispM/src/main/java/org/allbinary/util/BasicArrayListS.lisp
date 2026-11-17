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
;;;; package org.allbinary.util

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicArrayListS (BasicArrayList)
  ())

    
(defun BasicArrayListS.jnew_1 (_size)
  (declare (ignorable _size))
  (let ((this (make-instance 'BasicArrayListS)))
  (let ()
    (block jreturn
        nil
        (if (< _size 0)
            (progn
            (error (JR.newException "IllegalArgumentException" (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "Init Size Exception: ") _size))))))
        (setf (slot-value this 'f_objectArray) (JR.newArray nil _size))))
    this))



