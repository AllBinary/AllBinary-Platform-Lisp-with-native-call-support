;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.graphics.threed

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GLHolder (JObject)
  ((f_isCreated :initform nil)))

    
(defun GLHolder.jnew_0 ()
  (let ((this (make-instance 'GLHolder)))
    (setf (slot-value this 'f_isCreated) t)
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_runOnSurfaceCreated_1) (defgeneric jm_runOnSurfaceCreated_1 (this p1)))
(defmethod jm_runOnSurfaceCreated_1 ((this GLHolder) _renderer)
  (declare (ignorable this _renderer))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_runOnSurfaceChanged_3) (defgeneric jm_runOnSurfaceChanged_3 (this p1 p2 p3)))
(defmethod jm_runOnSurfaceChanged_3 ((this GLHolder) _renderer _width _height)
  (declare (ignorable this _renderer _width _height))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_run_1) (defgeneric jm_run_1 (this p1)))
(defmethod jm_run_1 ((this GLHolder) _renderer)
  (declare (ignorable this _renderer))
  (let ()
    (block jreturn nil)))



