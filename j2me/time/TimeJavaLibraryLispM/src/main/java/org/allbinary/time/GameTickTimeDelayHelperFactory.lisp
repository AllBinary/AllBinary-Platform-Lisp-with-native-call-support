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

(defclass GameTickTimeDelayHelperFactory (JObject)
  ())

(defvar GameTickTimeDelayHelperFactory.jcell_instance :jnone)
(defun GameTickTimeDelayHelperFactory.jstatic_instance ()
  (when (eq GameTickTimeDelayHelperFactory.jcell_instance :jnone) (setf GameTickTimeDelayHelperFactory.jcell_instance (GameTickTimeDelayHelper.jnew_1 (JR.i32 (- 1)))))
  GameTickTimeDelayHelperFactory.jcell_instance)

    
(defun GameTickTimeDelayHelperFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameTickTimeDelayHelperFactory.jstatic_instance)))))

    
(defun GameTickTimeDelayHelperFactory.jnew_0 ()
  (let ((this (make-instance 'GameTickTimeDelayHelperFactory)))
  (let ()
    (block jreturn nil))
    this))



