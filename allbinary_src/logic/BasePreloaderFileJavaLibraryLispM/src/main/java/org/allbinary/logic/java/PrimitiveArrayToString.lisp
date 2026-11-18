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
;;;; package org.allbinary.logic.java

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PrimitiveArrayToString (JObject)
  ())

(defun PrimitiveArrayToString.jnew_0 ()
  (let ((this (make-instance 'PrimitiveArrayToString)))
    this))

    
(defun PrimitiveArrayToString.jm_toString_1 (_floats)
  (declare (ignorable _floats))
  (let (_stringBuffer _index)
  (declare (ignorable _stringBuffer _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _floats)) do
                (block jcontinue
            (jm_appendfloat_1 _stringBuffer (aref _floats _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



