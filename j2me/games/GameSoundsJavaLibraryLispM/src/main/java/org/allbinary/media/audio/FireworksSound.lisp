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

;Use 8hz16bitmono for most J2ME
(defclass FireworksSound (CompositeSound)
  ())

(defvar FireworksSound.jcell_soundInterface :jnone)
(defun FireworksSound.jstatic_soundInterface ()
  (when (eq FireworksSound.jcell_soundInterface :jnone) (setf FireworksSound.jcell_soundInterface (FireworksSound.jnew_0)))
  FireworksSound.jcell_soundInterface)
(defun (setf FireworksSound.jstatic_soundInterface) (value) (setf FireworksSound.jcell_soundInterface value))

    
(defun FireworksSound.jnew_0 ()
  (let ((this (make-instance 'FireworksSound)))
  (let ()
    (block jreturn
        nil))
    this))

    
(defun FireworksSound.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FireworksSound.jstatic_soundInterface)))))



