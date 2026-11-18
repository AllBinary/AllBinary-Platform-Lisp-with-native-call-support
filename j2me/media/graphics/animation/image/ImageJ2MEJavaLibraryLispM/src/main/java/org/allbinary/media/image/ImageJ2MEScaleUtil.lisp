;;;;
;;;; AllBinary Open License Version 1
;;;; Copyright (c) 2023 AllBinary
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

(defclass ImageJ2MEScaleUtil (JObject)
  ())

(defvar ImageJ2MEScaleUtil.jcell_instance :jnone)
(defun ImageJ2MEScaleUtil.jstatic_instance ()
  (when (eq ImageJ2MEScaleUtil.jcell_instance :jnone) (setf ImageJ2MEScaleUtil.jcell_instance (ImageJ2MEScaleUtil.jnew_0)))
  ImageJ2MEScaleUtil.jcell_instance)
(defun (setf ImageJ2MEScaleUtil.jstatic_instance) (value) (setf ImageJ2MEScaleUtil.jcell_instance value))

    
(defun ImageJ2MEScaleUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ImageJ2MEScaleUtil.jstatic_instance)))))

    
(defun ImageJ2MEScaleUtil.jnew_0 ()
  (let ((this (make-instance 'ImageJ2MEScaleUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_scaleArray_3) (defgeneric jm_scaleArray_3 (this p1 p2 p3)))
(defmethod jm_scaleArray_3 ((this ImageJ2MEScaleUtil) _images _width _height)
  (declare (ignorable this _images _width _height))
  (let (_scaledImages _index)
  (declare (ignorable _scaledImages _index))
    (block jreturn
        (setf _scaledImages (JR.newArray nil (length _images)))
        (progn
            (setf _index (length _images))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf (aref _scaledImages _index) (jm_scale_3 this (aref _images _index) _width _height))))))
        (return-from jreturn _scaledImages))))

    
(unless (fboundp 'jm_scale_3) (defgeneric jm_scale_3 (this p1 p2 p3)))
(defmethod jm_scale_3 ((this ImageJ2MEScaleUtil) _image _width _height)
  (declare (ignorable this _image _width _height))
  (let (_sourceWidth _sourceHeight _originalData _scaledData _heightRatioFactor _widthRatioFactor _scaledIndex _dx _dy _index2 _index _scaledImage)
  (declare (ignorable _sourceWidth _sourceHeight _originalData _scaledData _heightRatioFactor _widthRatioFactor _scaledIndex _dx _dy _index2 _index _scaledImage))
    (block jreturn
        (setf _sourceWidth (jm_getWidth_0 _image))
        (setf _sourceHeight (jm_getHeight_0 _image))
        (setf _originalData (JR.newArray 0 (JR.i32 (* (jm_getWidth_0 _image) (jm_getHeight_0 _image)))))
        (jm_getRGB_7 _image _originalData 0 (jm_getWidth_0 _image) 0 0 (jm_getWidth_0 _image) (jm_getHeight_0 _image))
        (setf _scaledData (JR.newArray 0 (JR.i32 (* _width _height))))
        (setf _heightRatioFactor (JR.idiv (JR.i32 (* 8 _sourceHeight)) _height))
        (setf _widthRatioFactor (JR.idiv (JR.i32 (* 8 _sourceWidth)) _width))
        (setf _scaledIndex (JR.i32 (- (length _scaledData) 1)))
        (setf _dx 0)
        (setf _dy 0)
        (progn
            (setf _index _height)
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _dy (ash (JR.i32 (* _index _heightRatioFactor)) (- (logand 3 31))))
            (progn
                (setf _index2 _width)
                (block jbreak (loop while (>= (setf _index2 (JR.i32 (- _index2 1))) 0) do
                    (block jcontinue
                (setf _dx (ash (JR.i32 (* _index2 _widthRatioFactor)) (- (logand 3 31))))
                (setf (aref _scaledData (prog1 _scaledIndex (setf _scaledIndex (JR.i32 (- _scaledIndex 1))))) (aref _originalData (JR.i32 (+ (JR.i32 (* _sourceWidth _dy)) _dx))))))))))))
        (setf _scaledImage (Image.jm_createRGBImage_4 _scaledData _width _height t))
        (return-from jreturn _scaledImage))))



