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
;;;; package org.allbinary.media.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ImageToRotationImageArrayUtil (JObject)
  ())

(defvar ImageToRotationImageArrayUtil.jcell_instance :jnone)
(defun ImageToRotationImageArrayUtil.jstatic_instance ()
  (when (eq ImageToRotationImageArrayUtil.jcell_instance :jnone) (setf ImageToRotationImageArrayUtil.jcell_instance (ImageToRotationImageArrayUtil.jnew_0)))
  ImageToRotationImageArrayUtil.jcell_instance)
(defun (setf ImageToRotationImageArrayUtil.jstatic_instance) (value) (setf ImageToRotationImageArrayUtil.jcell_instance value))

    
(defun ImageToRotationImageArrayUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ImageToRotationImageArrayUtil.jstatic_instance)))))

    
(defun ImageToRotationImageArrayUtil.jnew_0 ()
  (let ((this (make-instance 'ImageToRotationImageArrayUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_generate_3) (defgeneric jm_generate_3 (this p1 p2 p3)))
(defmethod jm_generate_3 ((this ImageToRotationImageArrayUtil) _image _angleIncrement _totalAngle)
  (declare (ignorable this _image _angleIncrement _totalAngle))
  (let (_imageRotationUtil _totalFrames _imageArray _index)
  (declare (ignorable _imageRotationUtil _totalFrames _imageArray _index))
    (block jreturn
        (setf _imageRotationUtil (ImageRotationUtil.jm_getInstance_0))
        (setf _totalFrames (JR.idiv _totalAngle _angleIncrement))
        (setf _imageArray (JR.newArray nil _totalFrames))
        (setf (aref _imageArray 0) _image)
        (progn
            (setf _index 1)
            (block jbreak (loop while (< _index _totalFrames) do
                (block jcontinue
            (setf (aref _imageArray _index) (jm_createRotatedImage_2 _imageRotationUtil _image (JR.i32 (* _index _angleIncrement)))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _imageArray))))



