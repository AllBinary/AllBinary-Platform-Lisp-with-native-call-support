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
;;;; package org.allbinary.graphics.displayable

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BaseScalable (JObject)
  ())

(defun BaseScalable.jnew_0 ()
  (let ((this (make-instance 'BaseScalable)))
    this))

    
(unless (fboundp 'jm_getRatio_1) (defgeneric jm_getRatio_1 (this p1)))
(defmethod jm_getRatio_1 ((this BaseScalable) _ratio)
  (declare (ignorable this _ratio))
  (let ()
    (block jreturn
        (return-from jreturn 1.0f0))))

    
(unless (fboundp 'jm_getLeft_1) (defgeneric jm_getLeft_1 (this p1)))
(defmethod jm_getLeft_1 ((this BaseScalable) _xOffset)
  (declare (ignorable this _xOffset))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_getTop_1) (defgeneric jm_getTop_1 (this p1)))
(defmethod jm_getTop_1 ((this BaseScalable) _yOffset)
  (declare (ignorable this _yOffset))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_scale_1) (defgeneric jm_scale_1 (this p1)))
(defmethod jm_scale_1 ((this BaseScalable) _ratio)
  (declare (ignorable this _ratio))
  (let ()
    (block jreturn nil)))



