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

(defclass TouchFeatureFactory (JObject)
  ((f_TOUCH_ENABLED :initform nil)
   (f_SHOW_SCREEN_BUTTONS :initform nil)
   (f_AUTO_HIDE_SHOW_SCREEN_BUTTONS :initform nil)
   (f_HIDE_SCREEN_BUTTONS :initform nil)))

(defvar TouchFeatureFactory.jcell_instance :jnone)
(defun TouchFeatureFactory.jstatic_instance ()
  (when (eq TouchFeatureFactory.jcell_instance :jnone) (setf TouchFeatureFactory.jcell_instance (TouchFeatureFactory.jnew_0)))
  TouchFeatureFactory.jcell_instance)
(defun (setf TouchFeatureFactory.jstatic_instance) (value) (setf TouchFeatureFactory.jcell_instance value))

    
(defun TouchFeatureFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchFeatureFactory.jstatic_instance)))))

    
(defun TouchFeatureFactory.jnew_0 ()
  (let ((this (make-instance 'TouchFeatureFactory)))
    (setf (slot-value this 'f_TOUCH_ENABLED) (TouchFeature.jnew_1 "Touch Enabled"))
    (setf (slot-value this 'f_SHOW_SCREEN_BUTTONS) (TouchFeature.jnew_1 "Show"))
    (setf (slot-value this 'f_AUTO_HIDE_SHOW_SCREEN_BUTTONS) (TouchFeature.jnew_1 "Auto Hide (One Level)"))
    (setf (slot-value this 'f_HIDE_SCREEN_BUTTONS) (TouchFeature.jnew_1 "Hide"))
  (let ()
    (block jreturn nil))
    this))



