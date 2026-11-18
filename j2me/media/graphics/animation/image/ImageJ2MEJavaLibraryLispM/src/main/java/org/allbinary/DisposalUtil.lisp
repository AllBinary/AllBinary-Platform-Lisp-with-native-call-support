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
;;;; package org.allbinary

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DisposalUtil (JObject)
  ())

(defvar DisposalUtil.jcell_instance :jnone)
(defun DisposalUtil.jstatic_instance ()
  (when (eq DisposalUtil.jcell_instance :jnone) (setf DisposalUtil.jcell_instance (DisposalUtil.jnew_0)))
  DisposalUtil.jcell_instance)
(defun (setf DisposalUtil.jstatic_instance) (value) (setf DisposalUtil.jcell_instance value))

(defun DisposalUtil.jnew_0 ()
  (let ((this (make-instance 'DisposalUtil)))
    this))

    
(defun DisposalUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DisposalUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_disposeImage_1) (defgeneric jm_disposeImage_1 (this p1)))
(defmethod jm_disposeImage_1 ((this DisposalUtil) _image)
  (declare (ignorable this _image))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_disposeResource_1) (defgeneric jm_disposeResource_1 (this p1)))
(defmethod jm_disposeResource_1 ((this DisposalUtil) _resource)
  (declare (ignorable this _resource))
  (let ()
    (block jreturn
        (if (not (jm_isDisposed_0 _resource))
            (progn
            (jm_dispose_0 _resource))))))



