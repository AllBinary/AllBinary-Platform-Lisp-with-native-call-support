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

(defclass DropWeaponSound (CompositeSound)
  ())

(defvar DropWeaponSound.jcell_soundInterface :jnone)
(defun DropWeaponSound.jstatic_soundInterface ()
  (when (eq DropWeaponSound.jcell_soundInterface :jnone) (setf DropWeaponSound.jcell_soundInterface (DropWeaponSound.jnew_0)))
  DropWeaponSound.jcell_soundInterface)
(defun (setf DropWeaponSound.jstatic_soundInterface) (value) (setf DropWeaponSound.jcell_soundInterface value))

    
(defun DropWeaponSound.jnew_0 ()
  (let ((this (make-instance 'DropWeaponSound)))
  (let ()
    (block jreturn
        nil))
    this))

    
(defun DropWeaponSound.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DropWeaponSound.jstatic_soundInterface)))))



