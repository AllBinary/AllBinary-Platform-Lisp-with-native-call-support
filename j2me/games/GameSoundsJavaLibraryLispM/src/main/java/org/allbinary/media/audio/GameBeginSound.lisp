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
(defclass GameBeginSound (CompositeSound)
  ())

(defvar GameBeginSound.jcell_soundInterface :jnone)
(defun GameBeginSound.jstatic_soundInterface ()
  (when (eq GameBeginSound.jcell_soundInterface :jnone) (setf GameBeginSound.jcell_soundInterface (GameBeginSound.jnew_0)))
  GameBeginSound.jcell_soundInterface)
(defun (setf GameBeginSound.jstatic_soundInterface) (value) (setf GameBeginSound.jcell_soundInterface value))

    
(defun GameBeginSound.jnew_0 ()
  (let ((this (make-instance 'GameBeginSound)))
  (let ()
    (block jreturn
        nil))
    this))

    
(defun GameBeginSound.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameBeginSound.jstatic_soundInterface)))))



