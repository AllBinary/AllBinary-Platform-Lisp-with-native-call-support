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

(defclass ImageScaleUtil (JObject)
  ())

(defvar ImageScaleUtil.jcell_instance :jnone)
(defun ImageScaleUtil.jstatic_instance ()
  (when (eq ImageScaleUtil.jcell_instance :jnone) (setf ImageScaleUtil.jcell_instance (ImageScaleUtil.jnew_0)))
  ImageScaleUtil.jcell_instance)
(defun (setf ImageScaleUtil.jstatic_instance) (value) (setf ImageScaleUtil.jcell_instance value))

    
(defun ImageScaleUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ImageScaleUtil.jstatic_instance)))))

    
(defun ImageScaleUtil.jnew_0 ()
  (let ((this (make-instance 'ImageScaleUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_createImage2_7) (defgeneric jm_createImage2_7 (this p1 p2 p3 p4 p5 p6 p7)))
(defmethod jm_createImage2_7 ((this ImageScaleUtil) _imageCache _originalImage _scaleNominatorX _scaleDenominatorX _scaleNominatorY _scaleDenominatorY _cached)
  (declare (ignorable this _imageCache _originalImage _scaleNominatorX _scaleDenominatorX _scaleNominatorY _scaleDenominatorY _cached))
  (let ()
    (block jreturn
        (return-from jreturn (jm_createImage3_8 this _imageCache _originalImage _scaleNominatorX _scaleDenominatorX _scaleNominatorY _scaleDenominatorY _cached t)))))

    
(unless (fboundp 'jm_createImage3_8) (defgeneric jm_createImage3_8 (this p1 p2 p3 p4 p5 p6 p7 p8)))
(defmethod jm_createImage3_8 ((this ImageScaleUtil) _imageCache _originalImage _scaleNominatorX _scaleDenominatorX _scaleNominatorY _scaleDenominatorY _cached _mutable)
  (declare (ignorable this _imageCache _originalImage _scaleNominatorX _scaleDenominatorX _scaleNominatorY _scaleDenominatorY _cached _mutable))
  (let ()
    (block jreturn
        (return-from jreturn _originalImage))))



