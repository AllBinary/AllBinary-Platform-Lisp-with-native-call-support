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
;;;; package org.allbinary.animation.transition.shake

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NoShakeAnimationListener (ShakeAnimationListener)
  ())

(defvar NoShakeAnimationListener.jcell_NO_SHAKE_ANIMATION_LISTENER :jnone)
(defun NoShakeAnimationListener.jstatic_NO_SHAKE_ANIMATION_LISTENER ()
  (when (eq NoShakeAnimationListener.jcell_NO_SHAKE_ANIMATION_LISTENER :jnone) (setf NoShakeAnimationListener.jcell_NO_SHAKE_ANIMATION_LISTENER (NoShakeAnimationListener.jnew_0)))
  NoShakeAnimationListener.jcell_NO_SHAKE_ANIMATION_LISTENER)
(defun (setf NoShakeAnimationListener.jstatic_NO_SHAKE_ANIMATION_LISTENER) (value) (setf NoShakeAnimationListener.jcell_NO_SHAKE_ANIMATION_LISTENER value))

(defun NoShakeAnimationListener.jnew_0 ()
  (let ((this (make-instance 'NoShakeAnimationListener)))
    this))



