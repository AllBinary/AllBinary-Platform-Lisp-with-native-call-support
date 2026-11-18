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
(defclass GameYouWinSound (CompositeSound)
  ())

(defvar GameYouWinSound.jcell_soundInterface :jnone)
(defun GameYouWinSound.jstatic_soundInterface ()
  (when (eq GameYouWinSound.jcell_soundInterface :jnone) (setf GameYouWinSound.jcell_soundInterface (GameYouWinSound.jnew_0)))
  GameYouWinSound.jcell_soundInterface)
(defun (setf GameYouWinSound.jstatic_soundInterface) (value) (setf GameYouWinSound.jcell_soundInterface value))

    
(defun GameYouWinSound.jnew_0 ()
  (let ((this (make-instance 'GameYouWinSound)))
  (let ()
    (block jreturn
        nil))
    this))

    
(defun GameYouWinSound.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameYouWinSound.jstatic_soundInterface)))))



