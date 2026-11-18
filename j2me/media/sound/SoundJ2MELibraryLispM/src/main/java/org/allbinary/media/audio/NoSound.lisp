;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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

(defclass NoSound (Sound)
  ())

(defvar NoSound.jcell_instance :jnone)
(defun NoSound.jstatic_instance ()
  (when (eq NoSound.jcell_instance :jnone) (setf NoSound.jcell_instance (NoSound.jnew_0)))
  NoSound.jcell_instance)
(defun (setf NoSound.jstatic_instance) (value) (setf NoSound.jcell_instance value))

    
(defun NoSound.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NoSound.jstatic_instance)))))

    
(defun NoSound.jnew_0 ()
  (let ((this (make-instance 'NoSound)))
  (let ()
    (block jreturn
        nil
        (jm_setPlayerP_1 this (NoPlayer.jstatic_NO_PLAYER))))
    this))



