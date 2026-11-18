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

(defclass CompositeSound (Sound)
  ())

    
(defun CompositeSound.jnew_1 (_resource)
  (declare (ignorable _resource))
  (let ((this (make-instance 'CompositeSound)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this CompositeSound))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setPlayerP_1 this (PlayerComposite.jnew_2 (AllBinaryMediaManager.jm_createPlayer_1 (jm_getResource_0 this)) 570)))))



