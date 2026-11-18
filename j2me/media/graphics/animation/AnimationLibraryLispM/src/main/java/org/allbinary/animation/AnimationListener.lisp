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
;;;; package org.allbinary.animation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnimationListener (JObject)
  ())

(defun AnimationListener.jnew_0 ()
  (let ((this (make-instance 'AnimationListener)))
    this))

    
(unless (fboundp 'jm_onEnd_0) (defgeneric jm_onEnd_0 (this)))
(defmethod jm_onEnd_0 ((this AnimationListener))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "onEnd")))



