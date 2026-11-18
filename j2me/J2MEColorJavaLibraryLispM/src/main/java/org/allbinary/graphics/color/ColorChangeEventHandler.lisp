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
;;;; package org.allbinary.graphics.color

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ColorChangeEventHandler (BasicEventHandler)
  ())

(defvar ColorChangeEventHandler.jcell_eventHandler :jnone)
(defun ColorChangeEventHandler.jstatic_eventHandler ()
  (when (eq ColorChangeEventHandler.jcell_eventHandler :jnone) (setf ColorChangeEventHandler.jcell_eventHandler (ColorChangeEventHandler.jnew_0)))
  ColorChangeEventHandler.jcell_eventHandler)
(defun (setf ColorChangeEventHandler.jstatic_eventHandler) (value) (setf ColorChangeEventHandler.jcell_eventHandler value))

    
(defun ColorChangeEventHandler.jnew_0 ()
  (let ((this (make-instance 'ColorChangeEventHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(defun ColorChangeEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ColorChangeEventHandler.jstatic_eventHandler)))))



