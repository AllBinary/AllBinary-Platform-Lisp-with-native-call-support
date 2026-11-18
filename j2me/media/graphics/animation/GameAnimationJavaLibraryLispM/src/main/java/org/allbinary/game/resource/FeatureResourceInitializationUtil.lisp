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
;;;; package org.allbinary.game.resource

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FeatureResourceInitializationUtil (JObject)
  ((f_logUtil :initform nil)))

(defvar FeatureResourceInitializationUtil.jcell_instance :jnone)
(defun FeatureResourceInitializationUtil.jstatic_instance ()
  (when (eq FeatureResourceInitializationUtil.jcell_instance :jnone) (setf FeatureResourceInitializationUtil.jcell_instance (FeatureResourceInitializationUtil.jnew_0)))
  FeatureResourceInitializationUtil.jcell_instance)
(defun (setf FeatureResourceInitializationUtil.jstatic_instance) (value) (setf FeatureResourceInitializationUtil.jcell_instance value))

(defun FeatureResourceInitializationUtil.jnew_0 ()
  (let ((this (make-instance 'FeatureResourceInitializationUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    this))

    
(defun FeatureResourceInitializationUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FeatureResourceInitializationUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this FeatureResourceInitializationUtil) _level)
  (declare (ignorable this _level))
  (let (_commonStrings _featuredResourceFactory)
  (declare (ignorable _commonStrings _featuredResourceFactory))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_START) this (slot-value _commonStrings 'f_INIT))
        (setf _featuredResourceFactory (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0))
        (jm_init_1 _featuredResourceFactory _level)
        (jm_init_1 (FeaturedResourceRelativeRelationshipFactory.jm_getInstance_0) _level))))



