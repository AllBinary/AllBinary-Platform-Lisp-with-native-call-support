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

(defclass AnimationFrameToImageUtil (JObject)
  ())

(defvar AnimationFrameToImageUtil.jcell_instance :jnone)
(defun AnimationFrameToImageUtil.jstatic_instance ()
  (when (eq AnimationFrameToImageUtil.jcell_instance :jnone) (setf AnimationFrameToImageUtil.jcell_instance (AnimationFrameToImageUtil.jnew_0)))
  AnimationFrameToImageUtil.jcell_instance)
(defun (setf AnimationFrameToImageUtil.jstatic_instance) (value) (setf AnimationFrameToImageUtil.jcell_instance value))

(defun AnimationFrameToImageUtil.jnew_0 ()
  (let ((this (make-instance 'AnimationFrameToImageUtil)))
    this))

    
(defun AnimationFrameToImageUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AnimationFrameToImageUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getInstanceTranslate_3) (defgeneric jm_getInstanceTranslate_3 (this p1 p2 p3)))
(defmethod jm_getInstanceTranslate_3 ((this AnimationFrameToImageUtil) _width _height _animationInterface)
  (declare (ignorable this _width _height _animationInterface))
  (let (_image _graphics _tranlateX _tranlateY)
  (declare (ignorable _image _graphics _tranlateX _tranlateY))
    (block jreturn
        (setf _image (jm_get_3 (GameFeatureImageCacheFactory.jm_getInstance_0) (JR.className (AnimationFrameToImageUtil.jstatic_instance)) (ash (JR.i32 (* _width 3)) (- (logand 1 31))) (ash (JR.i32 (* _height 3)) (- (logand 1 31)))))
        (setf _graphics (jm_getGraphics_0 _image))
        (setf _tranlateX (ash _width (- (logand 2 31))))
        (setf _tranlateY (ash _height (- (logand 2 31))))
        (jm_translate_2 _graphics _tranlateX _tranlateY)
        (jm_paintXY_3 _animationInterface _graphics 0 0)
        (jm_translate_2 _graphics (JR.i32 (- _tranlateX)) (JR.i32 (- _tranlateY)))
        (return-from jreturn _image))))

    
(unless (fboundp 'jm_getInstanceWH_3) (defgeneric jm_getInstanceWH_3 (this p1 p2 p3)))
(defmethod jm_getInstanceWH_3 ((this AnimationFrameToImageUtil) _width _height _animationInterface)
  (declare (ignorable this _width _height _animationInterface))
  (let (_image _graphics)
  (declare (ignorable _image _graphics))
    (block jreturn
        (setf _image (jm_get_3 (GameFeatureImageCacheFactory.jm_getInstance_0) (JR.className (AnimationFrameToImageUtil.jstatic_instance)) _width _height))
        (setf _graphics (jm_getGraphics_0 _image))
        (jm_paintXY_3 _animationInterface _graphics 0 0)
        (return-from jreturn _image))))



