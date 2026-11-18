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

(defclass ScreenCaptureNoneFactory (JObject)
  ())

(defvar ScreenCaptureNoneFactory.jcell_instance :jnone)
(defun ScreenCaptureNoneFactory.jstatic_instance ()
  (when (eq ScreenCaptureNoneFactory.jcell_instance :jnone) (setf ScreenCaptureNoneFactory.jcell_instance (ScreenCapture.jnew_0)))
  ScreenCaptureNoneFactory.jcell_instance)
(defun (setf ScreenCaptureNoneFactory.jstatic_instance) (value) (setf ScreenCaptureNoneFactory.jcell_instance value))

(defun ScreenCaptureNoneFactory.jnew_0 ()
  (let ((this (make-instance 'ScreenCaptureNoneFactory)))
    this))

    
(defun ScreenCaptureNoneFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ScreenCaptureNoneFactory.jstatic_instance)))))



