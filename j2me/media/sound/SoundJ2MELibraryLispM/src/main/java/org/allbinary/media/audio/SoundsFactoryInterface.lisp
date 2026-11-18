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

(defclass SoundsFactoryInterface (JObject)
  ())

(defun SoundsFactoryInterface.jnew_0 ()
  (let ((this (make-instance 'SoundsFactoryInterface)))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this SoundsFactoryInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "init")))

    
(unless (fboundp 'jm_getSoundInterfaceArray_0) (defgeneric jm_getSoundInterfaceArray_0 (this)))
(defmethod jm_getSoundInterfaceArray_0 ((this SoundsFactoryInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getSoundInterfaceArray")))

    
(unless (fboundp 'jm_setInitialized_1) (defgeneric jm_setInitialized_1 (this p1)))
(defmethod jm_setInitialized_1 ((this SoundsFactoryInterface) _initialized)
  (declare (ignorable this _initialized))
  (error (JR.newException "AbstractMethodError" "setInitialized")))

    
(unless (fboundp 'jm_isInitialized_0) (defgeneric jm_isInitialized_0 (this)))
(defmethod jm_isInitialized_0 ((this SoundsFactoryInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isInitialized")))



