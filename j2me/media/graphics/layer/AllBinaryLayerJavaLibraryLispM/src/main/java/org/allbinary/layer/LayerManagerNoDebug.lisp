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

(defclass LayerManagerNoDebug (LayerManagerLoggingBase)
  ())

(defvar LayerManagerNoDebug.jcell_instance :jnone)
(defun LayerManagerNoDebug.jstatic_instance ()
  (when (eq LayerManagerNoDebug.jcell_instance :jnone) (setf LayerManagerNoDebug.jcell_instance (LayerManagerNoDebug.jnew_0)))
  LayerManagerNoDebug.jcell_instance)
(defun (setf LayerManagerNoDebug.jstatic_instance) (value) (setf LayerManagerNoDebug.jcell_instance value))

(defun LayerManagerNoDebug.jnew_0 ()
  (let ((this (make-instance 'LayerManagerNoDebug)))
    this))

    
(defun LayerManagerNoDebug.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LayerManagerNoDebug.jstatic_instance)))))



