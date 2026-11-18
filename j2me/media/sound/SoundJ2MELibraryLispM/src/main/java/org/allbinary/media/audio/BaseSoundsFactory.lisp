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
;;;; package org.allbinary.media.audio

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BaseSoundsFactory (JObject)
  ((f_initialized :initform nil)))

(defun BaseSoundsFactory.jnew_0 ()
  (let ((this (make-instance 'BaseSoundsFactory)))
    
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this BaseSoundsFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSoundInterfaceArray_0) (defgeneric jm_getSoundInterfaceArray_0 (this)))
(defmethod jm_getSoundInterfaceArray_0 ((this BaseSoundsFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.newArray nil 0)))))

    
(unless (fboundp 'jm_setInitialized_1) (defgeneric jm_setInitialized_1 (this p1)))
(defmethod jm_setInitialized_1 ((this BaseSoundsFactory) _initialized)
  (declare (ignorable this _initialized))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_initialized) _initialized))))

    
(unless (fboundp 'jm_isInitialized_0) (defgeneric jm_isInitialized_0 (this)))
(defmethod jm_isInitialized_0 ((this BaseSoundsFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_initialized)))))



