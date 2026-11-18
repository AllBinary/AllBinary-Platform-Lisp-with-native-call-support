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

(defclass PrimaryPlayerQueueFactory (JObject)
  ())

(defvar PrimaryPlayerQueueFactory.jcell_SINGLETON :jnone)
(defun PrimaryPlayerQueueFactory.jstatic_SINGLETON ()
  (when (eq PrimaryPlayerQueueFactory.jcell_SINGLETON :jnone) (setf PrimaryPlayerQueueFactory.jcell_SINGLETON (PlayerQueue.jnew_1 4)))
  PrimaryPlayerQueueFactory.jcell_SINGLETON)
(defun (setf PrimaryPlayerQueueFactory.jstatic_SINGLETON) (value) (setf PrimaryPlayerQueueFactory.jcell_SINGLETON value))

(defun PrimaryPlayerQueueFactory.jnew_0 ()
  (let ((this (make-instance 'PrimaryPlayerQueueFactory)))
    this))

    
(defun PrimaryPlayerQueueFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PrimaryPlayerQueueFactory.jstatic_SINGLETON)))))



