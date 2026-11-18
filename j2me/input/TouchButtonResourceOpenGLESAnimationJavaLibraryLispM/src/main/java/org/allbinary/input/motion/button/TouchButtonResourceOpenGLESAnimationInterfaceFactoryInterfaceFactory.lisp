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

(defclass TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory)
  ())

    
(defun TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory.jnew_0 ()
  (let ((this (make-instance 'TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory) _level)
  (declare (ignorable this _level))
  (let ()
    (block jreturn
        (jm_initImageCache_2 this (OpenGLImageCacheFactory.jm_getInstance_0) _level))))

    
(unless (fboundp 'jm_isFeature_0) (defgeneric jm_isFeature_0 (this)))
(defmethod jm_isFeature_0 ((this TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (jm_isDefault_1 (Features.jm_getInstance_0) (slot-value (OpenGLFeatureFactory.jm_getInstance_0) 'f_OPENGL))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))



