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
;;;; package org.allbinary.graphics.paint

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnimationCompositePaintable (InitUpdatePaintable)
  ((f_animationInterface :initform nil)))

    
(defun AnimationCompositePaintable.jnew_1 (_animationInterface)
  (declare (ignorable _animationInterface))
  (let ((this (make-instance 'AnimationCompositePaintable)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_animationInterface) _animationInterface)))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this AnimationCompositePaintable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paintXY_3 (slot-value this 'f_animationInterface) _graphics 0 0))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this AnimationCompositePaintable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paintThreedXYZ_4 (slot-value this 'f_animationInterface) _graphics 0 0 0))))



