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
;;;; package org.allbinary.time

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RendererInitializedStupidTimerFactory (JObject)
  ())

(defvar RendererInitializedStupidTimerFactory.jcell_instance :jnone)
(defun RendererInitializedStupidTimerFactory.jstatic_instance ()
  (when (eq RendererInitializedStupidTimerFactory.jcell_instance :jnone) (setf RendererInitializedStupidTimerFactory.jcell_instance (StupidTimer.jnew_0)))
  RendererInitializedStupidTimerFactory.jcell_instance)
(defun (setf RendererInitializedStupidTimerFactory.jstatic_instance) (value) (setf RendererInitializedStupidTimerFactory.jcell_instance value))

(defun RendererInitializedStupidTimerFactory.jnew_0 ()
  (let ((this (make-instance 'RendererInitializedStupidTimerFactory)))
    this))

    
(defun RendererInitializedStupidTimerFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (RendererInitializedStupidTimerFactory.jstatic_instance)))))



