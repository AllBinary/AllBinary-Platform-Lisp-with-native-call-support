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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory (BaseResourceAnimationInterfaceFactoryInterfaceFactory)
  ())

    
(defun TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jm_createFactory_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jnew_1 "TouchButton Animations")))))

    
(defun TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jnew_1 (_name)
  (declare (ignorable _name))
  (let ((this (make-instance 'TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory) _level)
  (declare (ignorable this _level))
  (let ()
    (block jreturn
        (jm_initImageCache_2 this (ImageCacheFactory.jm_getInstance_0) _level))))

    
(unless (fboundp 'jm_initImageCache_2) (defgeneric jm_initImageCache_2 (this p1 p2)))
(defmethod jm_initImageCache_2 ((this TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory) _imageCache _level)
  (declare (ignorable this _imageCache _level))
  (let ()
    (block jreturn
        (if (jm_isInitialized_0 this)
            (progn
            (return-from jreturn)))
        (jm_init_1 this _level))))

    
(unless (fboundp 'jm_isLoadingLevel_1) (defgeneric jm_isLoadingLevel_1 (this p1)))
(defmethod jm_isLoadingLevel_1 ((this TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory) _level)
  (declare (ignorable this _level))
  (let (_resourceLoadingLevelFactory)
  (declare (ignorable _resourceLoadingLevelFactory))
    (block jreturn
        (setf _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (if (= _level (jm_getLevel_0 (slot-value _resourceLoadingLevelFactory 'f_LOAD_TOUCH)))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn (call-next-method this _level)))))))

    
(unless (fboundp 'jm_isFeature_0) (defgeneric jm_isFeature_0 (this)))
(defmethod jm_isFeature_0 ((this TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (not (jm_isDefault_1 (Features.jm_getInstance_0) (slot-value (OpenGLFeatureFactory.jm_getInstance_0) 'f_OPENGL)))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))



