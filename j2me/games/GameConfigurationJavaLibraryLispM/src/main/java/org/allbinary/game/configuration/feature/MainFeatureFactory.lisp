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
;;;; package org.allbinary.game.configuration.feature

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MainFeatureFactory (JObject)
  ((f_FULL_SCREEN :initform nil)
   (f_TITLE_BAR :initform nil)
   (f_STATIC :initform nil)
   (f_LOAD_ONDEMAND :initform nil)
   (f_LOAD_ALL :initform nil)))

(defvar MainFeatureFactory.jcell_instance :jnone)
(defun MainFeatureFactory.jstatic_instance ()
  (when (eq MainFeatureFactory.jcell_instance :jnone) (setf MainFeatureFactory.jcell_instance (MainFeatureFactory.jnew_0)))
  MainFeatureFactory.jcell_instance)
(defun (setf MainFeatureFactory.jstatic_instance) (value) (setf MainFeatureFactory.jcell_instance value))

(defun MainFeatureFactory.jnew_0 ()
  (let ((this (make-instance 'MainFeatureFactory)))
    (setf (slot-value this 'f_FULL_SCREEN) (Feature.jnew_1 "Full Screen"))
    (setf (slot-value this 'f_TITLE_BAR) (Feature.jnew_1 "Title Bar"))
    (setf (slot-value this 'f_STATIC) (Feature.jnew_1 "Static Dependent Feature"))
    (setf (slot-value this 'f_LOAD_ONDEMAND) (Feature.jnew_1 "Load OnDemand"))
    (setf (slot-value this 'f_LOAD_ALL) (Feature.jnew_1 "Load All"))
    this))

    
(defun MainFeatureFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MainFeatureFactory.jstatic_instance)))))



