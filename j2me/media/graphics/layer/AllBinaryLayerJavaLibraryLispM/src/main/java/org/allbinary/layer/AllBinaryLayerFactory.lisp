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
;;;; package org.allbinary.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinaryLayerFactory (JObject)
  ((f_rectangle :initform nil)))

    
(defun AllBinaryLayerFactory.jnew_1 (_rectangle)
  (declare (ignorable _rectangle))
  (let ((this (make-instance 'AllBinaryLayerFactory)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_rectangle) _rectangle)))
    this))

    
(unless (fboundp 'jm_getInstance_0) (defgeneric jm_getInstance_0 (this)))
(defmethod jm_getInstance_0 ((this AllBinaryLayerFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (AllBinaryLayer.jnew_3 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (slot-value this 'f_rectangle) (ViewPosition.jm_getInstanceD_0))))))



