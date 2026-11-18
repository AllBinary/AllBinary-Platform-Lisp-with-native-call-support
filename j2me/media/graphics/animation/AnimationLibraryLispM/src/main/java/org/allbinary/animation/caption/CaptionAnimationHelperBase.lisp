;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.animation.caption

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CaptionAnimationHelperBase (Animation)
  ())

(defvar CaptionAnimationHelperBase.jcell_INSTANCE :jnone)
(defun CaptionAnimationHelperBase.jstatic_INSTANCE ()
  (when (eq CaptionAnimationHelperBase.jcell_INSTANCE :jnone) (setf CaptionAnimationHelperBase.jcell_INSTANCE (CaptionAnimationHelperBase.jnew_0)))
  CaptionAnimationHelperBase.jcell_INSTANCE)
(defun (setf CaptionAnimationHelperBase.jstatic_INSTANCE) (value) (setf CaptionAnimationHelperBase.jcell_INSTANCE value))

(defun CaptionAnimationHelperBase.jnew_0 ()
  (let ((this (make-instance 'CaptionAnimationHelperBase)))
    this))

    
(unless (fboundp 'jm_isShowing_0) (defgeneric jm_isShowing_0 (this)))
(defmethod jm_isShowing_0 ((this CaptionAnimationHelperBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_tick_0) (defgeneric jm_tick_0 (this)))
(defmethod jm_tick_0 ((this CaptionAnimationHelperBase))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_update_2) (defgeneric jm_update_2 (this p1 p2)))
(defmethod jm_update_2 ((this CaptionAnimationHelperBase) _message _basicColor)
  (declare (ignorable this _message _basicColor))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this CaptionAnimationHelperBase) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn nil)))



