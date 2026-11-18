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
;;;; package org.allbinary.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnimationFactoryImageScaleUtil (JObject)
  ((f_imageScaleUtil :initform nil)))

(defvar AnimationFactoryImageScaleUtil.jcell_instance :jnone)
(defun AnimationFactoryImageScaleUtil.jstatic_instance ()
  (when (eq AnimationFactoryImageScaleUtil.jcell_instance :jnone) (setf AnimationFactoryImageScaleUtil.jcell_instance (AnimationFactoryImageScaleUtil.jnew_0)))
  AnimationFactoryImageScaleUtil.jcell_instance)
(defun (setf AnimationFactoryImageScaleUtil.jstatic_instance) (value) (setf AnimationFactoryImageScaleUtil.jcell_instance value))

(defun AnimationFactoryImageScaleUtil.jnew_0 ()
  (let ((this (make-instance 'AnimationFactoryImageScaleUtil)))
    (setf (slot-value this 'f_imageScaleUtil) (ImageJ2MEScaleUtil.jm_getInstance_0))
    this))

    
(defun AnimationFactoryImageScaleUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AnimationFactoryImageScaleUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_createImage_5) (defgeneric jm_createImage_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_createImage_5 ((this AnimationFactoryImageScaleUtil) _image _width _height _scaleWidth _scaleHeight)
  (declare (ignorable this _image _width _height _scaleWidth _scaleHeight))
  (let (_scaledImage _scaleX _scaleY _scaledWidth _scaledHeight)
  (declare (ignorable _scaledImage _scaleX _scaleY _scaledWidth _scaledHeight))
    (block jreturn
        (setf _scaledImage nil)
        (if (and (/= _scaleWidth 0) (/= _scaleHeight 0))
            (progn
            (setf _scaleX (/ (coerce _scaleWidth 'single-float) (coerce _width 'single-float)))
            (setf _scaleY (/ (coerce _scaleHeight 'single-float) (coerce _height 'single-float)))
            (if (or (and (= _scaleX 1.0f0) (= _scaleY 1.0f0)) (or (= _scaleX 0.0f0) (= _scaleY 0.0f0)))
                (progn
                (setf _scaledImage _image))
                (progn
                (setf _scaledWidth (JR.d2i (* _scaleX (coerce _width 'single-float))))
                (setf _scaledHeight (JR.d2i (* _scaleY (coerce _height 'single-float))))
                (setf _scaledImage (jm_scale_3 (slot-value this 'f_imageScaleUtil) _image _scaledWidth _scaledHeight)))))
            (progn
            (setf _scaledImage _image)))
        (return-from jreturn _scaledImage))))

    
(unless (fboundp 'jm_processAdjust_1) (defgeneric jm_processAdjust_1 (this p1)))
(defmethod jm_processAdjust_1 ((this AnimationFactoryImageScaleUtil) _baseImageAnimationFactory)
  (declare (ignorable this _baseImageAnimationFactory))
  (let (_scaleProperties _animationFactoryInitializationVisitor _scaleX _scaleY)
  (declare (ignorable _scaleProperties _animationFactoryInitializationVisitor _scaleX _scaleY))
    (block jreturn
        (setf _scaleProperties (jm_getScalePropertiesP_0 _baseImageAnimationFactory))
        (if (and (not (eq (slot-value _scaleProperties 'f_scaleWidth) 0)) (not (eq (slot-value _scaleProperties 'f_scaleHeight) 0)))
            (progn
            (setf _animationFactoryInitializationVisitor (jm_getAnimationFactoryInitializationVisitorP_0 _baseImageAnimationFactory))
            (setf _scaleX (/ (coerce (slot-value _scaleProperties 'f_scaleWidth) 'single-float) (coerce (slot-value _animationFactoryInitializationVisitor 'f_width) 'single-float)))
            (setf _scaleY (/ (coerce (slot-value _scaleProperties 'f_scaleHeight) 'single-float) (coerce (slot-value _animationFactoryInitializationVisitor 'f_height) 'single-float)))
            (if (or (and (= _scaleX 1.0f0) (= _scaleY 1.0f0)) (or (= _scaleX 0.0f0) (= _scaleY 0.0f0)))
                (progn
                nil)
                (progn
                (setf (slot-value _animationFactoryInitializationVisitor 'f_dx) (* (slot-value _animationFactoryInitializationVisitor 'f_originalDx) _scaleX))
                (setf (slot-value _animationFactoryInitializationVisitor 'f_dy) (* (slot-value _animationFactoryInitializationVisitor 'f_originalDy) _scaleY)))))
            (progn
            nil)))))



