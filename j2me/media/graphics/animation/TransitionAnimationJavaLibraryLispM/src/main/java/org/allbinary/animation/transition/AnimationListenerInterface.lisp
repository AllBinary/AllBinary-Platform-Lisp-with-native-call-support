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
;;;; package org.allbinary.animation.transition

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnimationListenerInterface (JObject)
  ())

(defun AnimationListenerInterface.jnew_0 ()
  (let ((this (make-instance 'AnimationListenerInterface)))
    this))

    
(unless (fboundp 'jm_onPlatformAnimationStart_0) (defgeneric jm_onPlatformAnimationStart_0 (this)))
(defmethod jm_onPlatformAnimationStart_0 ((this AnimationListenerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "onPlatformAnimationStart")))

    
(unless (fboundp 'jm_onPlatformAnimationEnd_0) (defgeneric jm_onPlatformAnimationEnd_0 (this)))
(defmethod jm_onPlatformAnimationEnd_0 ((this AnimationListenerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "onPlatformAnimationEnd")))

    
(unless (fboundp 'jm_onPlatformAnimationRepeat_0) (defgeneric jm_onPlatformAnimationRepeat_0 (this)))
(defmethod jm_onPlatformAnimationRepeat_0 ((this AnimationListenerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "onPlatformAnimationRepeat")))



