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
;;;; package org.allbinary.vector

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass VectorInterface (JObject)
  ())

(defun VectorInterface.jnew_0 ()
  (let ((this (make-instance 'VectorInterface)))
    this))

    
(unless (fboundp 'jm_getPoints_1) (defgeneric jm_getPoints_1 (this p1)))
(defmethod jm_getPoints_1 ((this VectorInterface) _frame)
  (declare (ignorable this _frame))
  (error (JR.newException "AbstractMethodError" "getPoints")))

    
(unless (fboundp 'jm_setPoints_1) (defgeneric jm_setPoints_1 (this p1)))
(defmethod jm_setPoints_1 ((this VectorInterface) _currentPoints)
  (declare (ignorable this _currentPoints))
  (error (JR.newException "AbstractMethodError" "setPoints")))



