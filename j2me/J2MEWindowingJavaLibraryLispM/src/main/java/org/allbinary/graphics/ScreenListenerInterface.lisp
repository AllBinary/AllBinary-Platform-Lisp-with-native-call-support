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

(defclass ScreenListenerInterface (JObject)
  ())

(defun ScreenListenerInterface.jnew_0 ()
  (let ((this (make-instance 'ScreenListenerInterface)))
    this))

    
(unless (fboundp 'jm_onFullScreen_1) (defgeneric jm_onFullScreen_1 (this p1)))
(defmethod jm_onFullScreen_1 ((this ScreenListenerInterface) _isFullScreen)
  (declare (ignorable this _isFullScreen))
  (error (JR.newException "AbstractMethodError" "onFullScreen")))

    
(unless (fboundp 'jm_onFullScreenDisplay_0) (defgeneric jm_onFullScreenDisplay_0 (this)))
(defmethod jm_onFullScreenDisplay_0 ((this ScreenListenerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "onFullScreenDisplay")))



