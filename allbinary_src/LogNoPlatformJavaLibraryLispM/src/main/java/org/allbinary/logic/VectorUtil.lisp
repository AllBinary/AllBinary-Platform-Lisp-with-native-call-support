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
;;;; package org.allbinary.logic

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass VectorUtil (JObject)
  ())

(defvar VectorUtil.jcell_instance :jnone)
(defun VectorUtil.jstatic_instance ()
  (when (eq VectorUtil.jcell_instance :jnone) (setf VectorUtil.jcell_instance (VectorUtil.jnew_0)))
  VectorUtil.jcell_instance)

(defun VectorUtil.jnew_0 ()
  (let ((this (make-instance 'VectorUtil)))
    this))

    
(defun VectorUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (VectorUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getSize_1) (defgeneric jm_getSize_1 (this p1)))
(defmethod jm_getSize_1 ((this VectorUtil) _anyType)
  (declare (ignorable this _anyType))
  (let (_vector)
  (declare (ignorable _vector))
    (block jreturn
        (setf _vector _anyType)
        (return-from jreturn (jm_size_0 _vector)))))

    
(unless (fboundp 'jm_elementAt_2) (defgeneric jm_elementAt_2 (this p1 p2)))
(defmethod jm_elementAt_2 ((this VectorUtil) _anyType _index)
  (declare (ignorable this _anyType _index))
  (let (_vector)
  (declare (ignorable _vector))
    (block jreturn
        (setf _vector _anyType)
        (return-from jreturn (jm_elementAt_1 _vector _index)))))



