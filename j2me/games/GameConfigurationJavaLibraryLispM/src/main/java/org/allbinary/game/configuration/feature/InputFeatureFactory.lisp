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

(defclass InputFeatureFactory (JObject)
  ((f_REMOVE_DUPLICATE_KEY_PRESSES :initform nil)
   (f_INPUT_MAPPING :initform nil)
   (f_MULTI_KEY_PRESS :initform nil)
   (f_SINGLE_KEY_REPEAT_PRESS :initform nil)
   (f_SINGLE_KEY_PRESS :initform nil)))

(defvar InputFeatureFactory.jcell_instance :jnone)
(defun InputFeatureFactory.jstatic_instance ()
  (when (eq InputFeatureFactory.jcell_instance :jnone) (setf InputFeatureFactory.jcell_instance (InputFeatureFactory.jnew_0)))
  InputFeatureFactory.jcell_instance)
(defun (setf InputFeatureFactory.jstatic_instance) (value) (setf InputFeatureFactory.jcell_instance value))

    
(defun InputFeatureFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (InputFeatureFactory.jstatic_instance)))))

    
(defun InputFeatureFactory.jnew_0 ()
  (let ((this (make-instance 'InputFeatureFactory)))
    (setf (slot-value this 'f_REMOVE_DUPLICATE_KEY_PRESSES) (InputFeature.jnew_1 "Remove Duplicate Key Presses"))
    (setf (slot-value this 'f_INPUT_MAPPING) (InputFeature.jnew_1 "Input Mapping"))
    (setf (slot-value this 'f_MULTI_KEY_PRESS) (InputFeature.jnew_1 "Multi Key Press"))
    (setf (slot-value this 'f_SINGLE_KEY_REPEAT_PRESS) (InputFeature.jnew_1 "Single Key Repeat Press"))
    (setf (slot-value this 'f_SINGLE_KEY_PRESS) (InputFeature.jnew_1 "Single Key Press"))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_isSingleKeyProcessing_0) (defgeneric jm_isSingleKeyProcessing_0 (this)))
(defmethod jm_isSingleKeyProcessing_0 ((this InputFeatureFactory))
  (declare (ignorable this))
  (let (_features)
  (declare (ignorable _features))
    (block jreturn
        (setf _features (Features.jm_getInstance_0))
        (if (or (jm_isFeature_1 _features (slot-value this 'f_SINGLE_KEY_REPEAT_PRESS)) (jm_isFeature_1 _features (slot-value this 'f_SINGLE_KEY_PRESS)))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))



