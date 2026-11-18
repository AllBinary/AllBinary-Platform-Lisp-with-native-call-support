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
;;;; package org.allbinary.ag.weapon.media.audio

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ExplosionBasicSound (CompositeSound)
  ())

(defvar ExplosionBasicSound.jcell_soundInterface :jnone)
(defun ExplosionBasicSound.jstatic_soundInterface ()
  (when (eq ExplosionBasicSound.jcell_soundInterface :jnone) (setf ExplosionBasicSound.jcell_soundInterface (ExplosionBasicSound.jnew_0)))
  ExplosionBasicSound.jcell_soundInterface)
(defun (setf ExplosionBasicSound.jstatic_soundInterface) (value) (setf ExplosionBasicSound.jcell_soundInterface value))

    
(defun ExplosionBasicSound.jnew_0 ()
  (let ((this (make-instance 'ExplosionBasicSound)))
  (let ()
    (block jreturn
        nil))
    this))

    
(defun ExplosionBasicSound.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ExplosionBasicSound.jstatic_soundInterface)))))



