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

(defclass ErrorSound (CompositeSound)
  ())

(defvar ErrorSound.jcell_soundInterface :jnone)
(defun ErrorSound.jstatic_soundInterface ()
  (when (eq ErrorSound.jcell_soundInterface :jnone) (setf ErrorSound.jcell_soundInterface (ErrorSound.jnew_0)))
  ErrorSound.jcell_soundInterface)
(defun (setf ErrorSound.jstatic_soundInterface) (value) (setf ErrorSound.jcell_soundInterface value))

    
(defun ErrorSound.jnew_0 ()
  (let ((this (make-instance 'ErrorSound)))
  (let ()
    (block jreturn
        nil))
    this))

    
(defun ErrorSound.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ErrorSound.jstatic_soundInterface)))))



