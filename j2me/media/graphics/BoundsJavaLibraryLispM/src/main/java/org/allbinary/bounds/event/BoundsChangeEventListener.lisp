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
;;;; package org.allbinary.bounds.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BoundsChangeEventListener (JObject)
  ())

(defun BoundsChangeEventListener.jnew_0 ()
  (let ((this (make-instance 'BoundsChangeEventListener)))
    this))

    
(unless (fboundp 'jm_onBoundsChangeEvent_1) (defgeneric jm_onBoundsChangeEvent_1 (this p1)))
(defmethod jm_onBoundsChangeEvent_1 ((this BoundsChangeEventListener) _boundsChangeEvent)
  (declare (ignorable this _boundsChangeEvent))
  (error (JR.newException "AbstractMethodError" "onBoundsChangeEvent")))



