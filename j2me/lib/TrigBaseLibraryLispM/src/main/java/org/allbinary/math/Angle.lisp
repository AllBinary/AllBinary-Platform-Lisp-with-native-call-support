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
;;;; package org.allbinary.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Angle (JObject)
  ((f_value :initform 0)))

    
(defun Angle.jnew_1 (_angle)
  (declare (ignorable _angle))
  (let ((this (make-instance 'Angle)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_value) _angle)))
    this))

    
(unless (fboundp 'jm_getValue_0) (defgeneric jm_getValue_0 (this)))
(defmethod jm_getValue_0 ((this Angle))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_value)))))



