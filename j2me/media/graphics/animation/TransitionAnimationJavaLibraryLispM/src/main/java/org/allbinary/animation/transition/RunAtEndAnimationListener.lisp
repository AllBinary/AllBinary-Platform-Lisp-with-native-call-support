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

(defclass RunAtEndAnimationListener (JObject)
  ((f_runnable :initform nil)))

    
(defun RunAtEndAnimationListener.jnew_1 (_runnable)
  (declare (ignorable _runnable))
  (let ((this (make-instance 'RunAtEndAnimationListener)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_runnable) _runnable)))
    this))

    
(unless (fboundp 'jm_onPlatformAnimationStart_0) (defgeneric jm_onPlatformAnimationStart_0 (this)))
(defmethod jm_onPlatformAnimationStart_0 ((this RunAtEndAnimationListener))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onPlatformAnimationEnd_0) (defgeneric jm_onPlatformAnimationEnd_0 (this)))
(defmethod jm_onPlatformAnimationEnd_0 ((this RunAtEndAnimationListener))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onPlatformAnimationRepeat_0) (defgeneric jm_onPlatformAnimationRepeat_0 (this)))
(defmethod jm_onPlatformAnimationRepeat_0 ((this RunAtEndAnimationListener))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



