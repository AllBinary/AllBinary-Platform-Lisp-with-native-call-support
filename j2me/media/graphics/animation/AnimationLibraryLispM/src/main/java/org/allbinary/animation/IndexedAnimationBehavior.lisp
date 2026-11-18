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
;;;; package org.allbinary.animation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass IndexedAnimationBehavior (AnimationBehavior)
  ((f_frameDelayTime :initform 0)
   (f_loopTotal :initform 0)
   (f_elapsedTime :initform 0)
   (f_loopIndex :initform 0)))

    
(defun IndexedAnimationBehavior.jnew_2 (_loopTotal _frameDelayTime)
  (declare (ignorable _loopTotal _frameDelayTime))
  (let ((this (make-instance 'IndexedAnimationBehavior)))
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_loopTotal) _loopTotal)
        (setf (slot-value this 'f_frameDelayTime) _frameDelayTime)))
    this))

    
(unless (fboundp 'jm_reset_0) (defgeneric jm_reset_0 (this)))
(defmethod jm_reset_0 ((this IndexedAnimationBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_loopIndex) 0))))



