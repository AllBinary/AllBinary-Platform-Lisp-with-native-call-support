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
;;;; package org.allbinary.view

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CenterStaticViewPositionFactory (JObject)
  ())

    
(defun CenterStaticViewPositionFactory.jnew_0 ()
  (let ((this (make-instance 'CenterStaticViewPositionFactory)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this CenterStaticViewPositionFactory) _z)
  (declare (ignorable this _z))
  (let (_displayInfoSingleton)
  (declare (ignorable _displayInfoSingleton))
    (block jreturn
        (setf _displayInfoSingleton (DisplayInfoSingleton.jm_getInstance_0))
        (return-from jreturn (StaticViewPosition.jnew_3 (ash (jm_getLastWidth_0 _displayInfoSingleton) (- (logand 1 31))) (ash (jm_getLastHeight_0 _displayInfoSingleton) (- (logand 1 31))) _z)))))



