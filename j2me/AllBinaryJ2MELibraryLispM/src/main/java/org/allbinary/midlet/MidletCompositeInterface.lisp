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
;;;; package org.allbinary.midlet

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MidletCompositeInterface (JObject)
  ())

(defun MidletCompositeInterface.jnew_0 ()
  (let ((this (make-instance 'MidletCompositeInterface)))
    this))

    
(unless (fboundp 'jm_setMidlet_1) (defgeneric jm_setMidlet_1 (this p1)))
(defmethod jm_setMidlet_1 ((this MidletCompositeInterface) _midlet)
  (declare (ignorable this _midlet))
  (error (JR.newException "AbstractMethodError" "setMidlet")))

    
(unless (fboundp 'jm_getMidlet_0) (defgeneric jm_getMidlet_0 (this)))
(defmethod jm_getMidlet_0 ((this MidletCompositeInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getMidlet")))

    
(unless (fboundp 'jm_getDisplayable_0) (defgeneric jm_getDisplayable_0 (this)))
(defmethod jm_getDisplayable_0 ((this MidletCompositeInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getDisplayable")))



