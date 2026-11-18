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
;;;; package org.allbinary.media.audio

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SecondaryPlayerQueueFactory (JObject)
  ())

(defvar SecondaryPlayerQueueFactory.jcell_SINGLETON :jnone)
(defun SecondaryPlayerQueueFactory.jstatic_SINGLETON ()
  (when (eq SecondaryPlayerQueueFactory.jcell_SINGLETON :jnone) (setf SecondaryPlayerQueueFactory.jcell_SINGLETON (PlayerQueue.jnew_1 4)))
  SecondaryPlayerQueueFactory.jcell_SINGLETON)
(defun (setf SecondaryPlayerQueueFactory.jstatic_SINGLETON) (value) (setf SecondaryPlayerQueueFactory.jcell_SINGLETON value))

(defun SecondaryPlayerQueueFactory.jnew_0 ()
  (let ((this (make-instance 'SecondaryPlayerQueueFactory)))
    this))

    
(defun SecondaryPlayerQueueFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SecondaryPlayerQueueFactory.jstatic_SINGLETON)))))



