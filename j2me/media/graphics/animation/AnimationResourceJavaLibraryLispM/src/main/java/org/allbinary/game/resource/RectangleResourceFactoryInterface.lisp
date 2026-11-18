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
;;;; package org.allbinary.game.resource

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RectangleResourceFactoryInterface (JObject)
  ())

(defun RectangleResourceFactoryInterface.jnew_0 ()
  (let ((this (make-instance 'RectangleResourceFactoryInterface)))
    this))

    
(unless (fboundp 'jm_getRectangle_1) (defgeneric jm_getRectangle_1 (this p1)))
(defmethod jm_getRectangle_1 ((this RectangleResourceFactoryInterface) _resource)
  (declare (ignorable this _resource))
  (error (JR.newException "AbstractMethodError" "getRectangle")))

    
(unless (fboundp 'jm_getRectangleArrayOfArrays_1) (defgeneric jm_getRectangleArrayOfArrays_1 (this p1)))
(defmethod jm_getRectangleArrayOfArrays_1 ((this RectangleResourceFactoryInterface) _resource)
  (declare (ignorable this _resource))
  (error (JR.newException "AbstractMethodError" "getRectangleArrayOfArrays")))



