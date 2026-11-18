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

(defclass VectorAnimationFactory (JObject)
  ())

(defun VectorAnimationFactory.jnew_0 ()
  (let ((this (make-instance 'VectorAnimationFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_2) (defgeneric jm_getInstance_2 (this p1 p2)))
(defmethod jm_getInstance_2 ((this VectorAnimationFactory) _points _basicColor)
  (declare (ignorable this _points _basicColor))
  (let ()
    (block jreturn
        (return-from jreturn (VectorAnimation.jnew_3 _points _basicColor (AnimationBehavior.jm_getInstance_0))))))



