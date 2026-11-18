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
;;;; package org.allbinary.game.init

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicBuildGameInitializerFactory (JObject)
  ())

(defvar BasicBuildGameInitializerFactory.jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY :jnone)
(defun BasicBuildGameInitializerFactory.jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY ()
  (when (eq BasicBuildGameInitializerFactory.jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY :jnone) (setf BasicBuildGameInitializerFactory.jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY (BasicBuildGameInitializerFactory.jnew_0)))
  BasicBuildGameInitializerFactory.jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY)
(defun (setf BasicBuildGameInitializerFactory.jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY) (value) (setf BasicBuildGameInitializerFactory.jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY value))

(defun BasicBuildGameInitializerFactory.jnew_0 ()
  (let ((this (make-instance 'BasicBuildGameInitializerFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_0) (defgeneric jm_getInstance_0 (this)))
(defmethod jm_getInstance_0 ((this BasicBuildGameInitializerFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (BaseGameInitialization.jstatic_NULL_BASE_GAME_INITIALIZATION)))))



