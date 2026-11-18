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
(defclass SelectSound (CompositeSound)
  ())

(defvar SelectSound.jcell_soundInterface :jnone)
(defun SelectSound.jstatic_soundInterface ()
  (when (eq SelectSound.jcell_soundInterface :jnone) (setf SelectSound.jcell_soundInterface (SelectSound.jnew_0)))
  SelectSound.jcell_soundInterface)
(defun (setf SelectSound.jstatic_soundInterface) (value) (setf SelectSound.jcell_soundInterface value))

    
(defun SelectSound.jnew_0 ()
  (let ((this (make-instance 'SelectSound)))
  (let ()
    (block jreturn
        nil))
    this))

    
(defun SelectSound.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SelectSound.jstatic_soundInterface)))))



