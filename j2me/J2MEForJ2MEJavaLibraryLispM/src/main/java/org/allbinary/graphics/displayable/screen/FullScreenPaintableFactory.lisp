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
;;;; package org.allbinary.graphics.displayable.screen

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FullScreenPaintableFactory (JObject)
  ((f_paintable :initform nil)))

(defvar FullScreenPaintableFactory.jcell_instance :jnone)
(defun FullScreenPaintableFactory.jstatic_instance ()
  (when (eq FullScreenPaintableFactory.jcell_instance :jnone) (setf FullScreenPaintableFactory.jcell_instance (FullScreenPaintableFactory.jnew_0)))
  FullScreenPaintableFactory.jcell_instance)
(defun (setf FullScreenPaintableFactory.jstatic_instance) (value) (setf FullScreenPaintableFactory.jcell_instance value))

(defun FullScreenPaintableFactory.jnew_0 ()
  (let ((this (make-instance 'FullScreenPaintableFactory)))
    (setf (slot-value this 'f_paintable) (NullPaintable.jm_getInstance_0))
    this))

    
(defun FullScreenPaintableFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FullScreenPaintableFactory.jstatic_instance)))))



