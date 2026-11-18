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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ScreenCaptureFactory (JObject)
  ())

(defvar ScreenCaptureFactory.jcell_instance :jnone)
(defun ScreenCaptureFactory.jstatic_instance ()
  (when (eq ScreenCaptureFactory.jcell_instance :jnone) (setf ScreenCaptureFactory.jcell_instance (ScreenCaptureNoneFactory.jm_getInstance_0)))
  ScreenCaptureFactory.jcell_instance)
(defun (setf ScreenCaptureFactory.jstatic_instance) (value) (setf ScreenCaptureFactory.jcell_instance value))

(defun ScreenCaptureFactory.jnew_0 ()
  (let ((this (make-instance 'ScreenCaptureFactory)))
    this))

    
(defun ScreenCaptureFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ScreenCaptureFactory.jstatic_instance)))))



