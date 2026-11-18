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
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LockablePaintable (ItemPaintable)
  ((f_animation :initform nil)
   (f_lockedIndex :initform 0)))

    
(defun LockablePaintable.jnew_1 (_lockedIndex)
  (declare (ignorable _lockedIndex))
  (let ((this (make-instance 'LockablePaintable)))
    (setf (slot-value this 'f_animation) (jm_getInstance_1 (jm_get_1 (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0) (slot-value (LockedResources.jm_getInstance_0) 'f_LOCKED_DEMO_GAME_FEATURE_RESOURCE)) 0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_lockedIndex) _lockedIndex)))
    this))

    
(unless (fboundp 'jm_paint_4) (defgeneric jm_paint_4 (this p1 p2 p3 p4)))
(defmethod jm_paint_4 ((this LockablePaintable) _graphics _currentIndex _x _y)
  (declare (ignorable this _graphics _currentIndex _x _y))
  (let ()
    (block jreturn
        (if (and (jm_isLocked_0 (LockedUtil.jm_getInstance_0)) (>= _currentIndex (jm_getLockedIndex_0 this)))
            (progn
            (jm_paintXY_3 (jm_getAnimation_0 this) _graphics _x _y))))))

    
(unless (fboundp 'jm_getLockedIndex_0) (defgeneric jm_getLockedIndex_0 (this)))
(defmethod jm_getLockedIndex_0 ((this LockablePaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_lockedIndex)))))

    
(unless (fboundp 'jm_getAnimation_0) (defgeneric jm_getAnimation_0 (this)))
(defmethod jm_getAnimation_0 ((this LockablePaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_animation)))))



