;;;; Generated Code Do Not Modify
;;;; package org.allbinary.animation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullIndexedAnimation (IndexedAnimation)
  ())

    
(defun NullIndexedAnimation.jnew_1 (_animationBehavior)
  (declare (ignorable _animationBehavior))
  (let ((this (make-instance 'NullIndexedAnimation)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getAnimationSize_0) (defgeneric jm_getAnimationSize_0 (this)))
(defmethod jm_getAnimationSize_0 ((this NullIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))



