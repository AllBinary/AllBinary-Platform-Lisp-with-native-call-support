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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullWaitGameRunnable (GameRunnable)
  ())

(defvar NullWaitGameRunnable.jcell_instance :jnone)
(defun NullWaitGameRunnable.jstatic_instance ()
  (when (eq NullWaitGameRunnable.jcell_instance :jnone) (setf NullWaitGameRunnable.jcell_instance (NullWaitGameRunnable.jnew_0)))
  NullWaitGameRunnable.jcell_instance)
(defun (setf NullWaitGameRunnable.jstatic_instance) (value) (setf NullWaitGameRunnable.jcell_instance value))

(defun NullWaitGameRunnable.jnew_0 ()
  (let ((this (make-instance 'NullWaitGameRunnable)))
    this))

    
(defun NullWaitGameRunnable.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullWaitGameRunnable.jstatic_instance)))))



