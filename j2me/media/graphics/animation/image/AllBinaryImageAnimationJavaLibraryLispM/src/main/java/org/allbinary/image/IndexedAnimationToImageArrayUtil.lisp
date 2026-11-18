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
;;;; package org.allbinary.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass IndexedAnimationToImageArrayUtil (JObject)
  ())

(defun IndexedAnimationToImageArrayUtil.jnew_0 ()
  (let ((this (make-instance 'IndexedAnimationToImageArrayUtil)))
    this))

    
(defun IndexedAnimationToImageArrayUtil.jm_getInstance_3 (_width _height _sequentialAnimationInterface)
  (declare (ignorable _width _height _sequentialAnimationInterface))
  (let (_size _imageArray _index)
  (declare (ignorable _size _imageArray _index))
    (block jreturn
        (setf _size (jm_getAnimationSize_0 _sequentialAnimationInterface))
        (setf _imageArray (JR.newArray nil _size))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_setFrame_1 _sequentialAnimationInterface _index)
            (setf (aref _imageArray _index) (jm_getInstanceWH_3 (AnimationFrameToImageUtil.jm_getInstance_0) _width _height _sequentialAnimationInterface)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _imageArray))))



