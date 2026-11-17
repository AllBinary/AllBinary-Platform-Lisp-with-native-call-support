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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ResizableListenerInterface (JObject)
  ())

(defun ResizableListenerInterface.jnew_0 ()
  (let ((this (make-instance 'ResizableListenerInterface)))
    this))

    
(unless (fboundp 'jm_onResizable_1) (defgeneric jm_onResizable_1 (this p1)))
(defmethod jm_onResizable_1 ((this ResizableListenerInterface) _isResizable)
  (declare (ignorable this _isResizable))
  (error (JR.newException "AbstractMethodError" "onResizable")))



