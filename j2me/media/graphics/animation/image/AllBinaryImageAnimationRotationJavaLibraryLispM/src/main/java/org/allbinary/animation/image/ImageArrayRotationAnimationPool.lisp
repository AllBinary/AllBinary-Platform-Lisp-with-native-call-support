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
;;;; package org.allbinary.animation.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ImageArrayRotationAnimationPool (BasicArrayListResetablePool)
  ())

(defvar ImageArrayRotationAnimationPool.jcell_IMAGE_ROTATION_ANIMATION_POOL :jnone)
(defun ImageArrayRotationAnimationPool.jstatic_IMAGE_ROTATION_ANIMATION_POOL ()
  (when (eq ImageArrayRotationAnimationPool.jcell_IMAGE_ROTATION_ANIMATION_POOL :jnone) (setf ImageArrayRotationAnimationPool.jcell_IMAGE_ROTATION_ANIMATION_POOL (ImageArrayRotationAnimationPool.jnew_1 (ImageArrayRotationAnimationCacheableInterfaceFactory.jnew_0))))
  ImageArrayRotationAnimationPool.jcell_IMAGE_ROTATION_ANIMATION_POOL)
(defun (setf ImageArrayRotationAnimationPool.jstatic_IMAGE_ROTATION_ANIMATION_POOL) (value) (setf ImageArrayRotationAnimationPool.jcell_IMAGE_ROTATION_ANIMATION_POOL value))

    
(defun ImageArrayRotationAnimationPool.jnew_1 (_cacheableInterfaceFactoryInterface)
  (declare (ignorable _cacheableInterfaceFactoryInterface))
  (let ((this (make-instance 'ImageArrayRotationAnimationPool)))
  (let ()
    (block jreturn
        nil))
    this))

    
(defun ImageArrayRotationAnimationPool.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ImageArrayRotationAnimationPool.jstatic_IMAGE_ROTATION_ANIMATION_POOL)))))

    
(unless (fboundp 'jm_remove_1) (defgeneric jm_remove_1 (this p1)))
(defmethod jm_remove_1 ((this ImageArrayRotationAnimationPool) _key)
  (declare (ignorable this _key))
  (let (_cacheableInterface _allBinaryImageRotationAnimationInfo _imageArrayRotationAnimationCacheable)
  (declare (ignorable _cacheableInterface _allBinaryImageRotationAnimationInfo _imageArrayRotationAnimationCacheable))
    (block jreturn
        (setf _cacheableInterface (call-next-method this _key))
        (setf _allBinaryImageRotationAnimationInfo _key)
        (setf _imageArrayRotationAnimationCacheable _cacheableInterface)
        (jm_setImageArray_1 _imageArrayRotationAnimationCacheable (jm_getImageArray_0 _allBinaryImageRotationAnimationInfo))
        (return-from jreturn _cacheableInterface))))



