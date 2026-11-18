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
;;;; package org.allbinary.image.sprite

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnimationFactorySpriteScaleUtil (JObject)
  ((f_imageCache :initform nil)
   (f_imageScaleUtil :initform nil)
   (f_openGLUtil :initform nil)
   (f_j2seMath :initform nil)
   (f_openGLESImageExclusionUtil :initform nil)))

(defvar AnimationFactorySpriteScaleUtil.jcell_instance :jnone)
(defun AnimationFactorySpriteScaleUtil.jstatic_instance ()
  (when (eq AnimationFactorySpriteScaleUtil.jcell_instance :jnone) (setf AnimationFactorySpriteScaleUtil.jcell_instance (AnimationFactorySpriteScaleUtil.jnew_0)))
  AnimationFactorySpriteScaleUtil.jcell_instance)
(defun (setf AnimationFactorySpriteScaleUtil.jstatic_instance) (value) (setf AnimationFactorySpriteScaleUtil.jcell_instance value))

(defun AnimationFactorySpriteScaleUtil.jnew_0 ()
  (let ((this (make-instance 'AnimationFactorySpriteScaleUtil)))
    (setf (slot-value this 'f_imageCache) (ImageCacheFactory.jm_getInstance_0))
    (setf (slot-value this 'f_imageScaleUtil) (ImageScaleUtil.jm_getInstance_0))
    (setf (slot-value this 'f_openGLUtil) (OpenGLUtil.jm_getInstance_0))
    (setf (slot-value this 'f_j2seMath) (J2SEMath.jm_getInstance_0))
    (setf (slot-value this 'f_openGLESImageExclusionUtil) (OpenGLESImageExclusionUtil.jm_getInstance_0))
    this))

    
(defun AnimationFactorySpriteScaleUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AnimationFactorySpriteScaleUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_createImage_5) (defgeneric jm_createImage_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_createImage_5 ((this AnimationFactorySpriteScaleUtil) _image _width _height _scaleWidth _scaleHeight)
  (declare (ignorable this _image _width _height _scaleWidth _scaleHeight))
  (let (_spriteFactory _sprite _scaledImage _scaleX _scaleY _width2 _height2 _multiplesOf16Width _by16Width _multiplesOf16Height _by16Height)
  (declare (ignorable _spriteFactory _sprite _scaledImage _scaleX _scaleY _width2 _height2 _multiplesOf16Width _by16Width _multiplesOf16Height _by16Height))
    (block jreturn
        (setf _spriteFactory (SpriteFactory.jm_getInstance_0))
        (setf _sprite nil)
        (setf _scaledImage nil)
        (if (and (/= _scaleWidth 0) (/= _scaleHeight 0))
            (progn
            (setf _scaleX (/ (coerce _scaleWidth 'single-float) (coerce _width 'single-float)))
            (setf _scaleY (/ (coerce _scaleHeight 'single-float) (coerce _height 'single-float)))
            (if (or (and (= _scaleX 1.0f0) (= _scaleY 1.0f0)) (or (= _scaleX 0.0f0) (= _scaleY 0.0f0)))
                (progn
                (setf _scaledImage (jm_addImage_1 (slot-value this 'f_openGLUtil) _image))
                (setf _sprite (jm_createSprite_3 _spriteFactory _scaledImage _width _height)))
                (progn
                (if (jm_isCustomScaling_1 (slot-value this 'f_openGLESImageExclusionUtil) _image)
                    (progn
                    (setf _width2 (jm_round_1 (slot-value this 'f_j2seMath) (- (coerce _scaleWidth 'single-float) 0.5f0)))
                    (setf _height2 (jm_round_1 (slot-value this 'f_j2seMath) (- (coerce _scaleHeight 'single-float) 0.5f0)))
                    (setf _multiplesOf16Width (JR.idiv _width2 16))
                    (setf _by16Width (JR.i32 (* _multiplesOf16Width 16)))
                    (setf _scaleX (/ (coerce _by16Width 'single-float) (coerce _width 'single-float)))
                    (setf _multiplesOf16Height (JR.idiv _height2 16))
                    (setf _by16Height (JR.i32 (* _multiplesOf16Height 16)))
                    (setf _scaleY (/ (coerce _by16Height 'single-float) (coerce _height 'single-float)))
                    (if (< _scaleWidth _width)
                        (progn
                        (setf _scaleX (* _scaleX 2.35f0))))
                    (if (< _scaleHeight _height)
                        (progn
                        (setf _scaleY (* _scaleY 2.35f0))))))
                (setf _scaledImage (jm_createImage2_7 (slot-value this 'f_imageScaleUtil) (slot-value this 'f_imageCache) _image _scaleX 1.0f0 _scaleY 1.0f0 t))
                (setf _sprite (jm_createSprite_3 _spriteFactory _scaledImage (JR.d2i (* (coerce _width 'single-float) _scaleX)) (JR.d2i (* (coerce _height 'single-float) _scaleY)))))))
            (progn
            (setf _scaledImage (jm_addImage_1 (slot-value this 'f_openGLUtil) _image))
            (setf _sprite (jm_createSprite_3 _spriteFactory _scaledImage _width _height))))
        (return-from jreturn _sprite))))



