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
;;;; package org.allbinary.animation.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RightToLeftImageAnimation (ImageSegmentAnimation)
  ((f_startWidth :initform 0)
   (f_currentWidth :initform 0)
   (f_anchor :initform 0)))

    
(defun RightToLeftImageAnimation.jnew_2 (_image _animationBehavior)
  (declare (ignorable _image _animationBehavior))
  (let ((this (make-instance 'RightToLeftImageAnimation)))
    
    
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
  (let ()
    (block jreturn
        nil
        (jm_setFrame_1 this (JR.i32 (- (jm_getSize_0 this) 1)))))
    this))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this RightToLeftImageAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_previousFrame_0 this)
        (jm_update_0 this))))

    
(unless (fboundp 'jm_previousFrame_0) (defgeneric jm_previousFrame_0 (this)))
(defmethod jm_previousFrame_0 ((this RightToLeftImageAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_nextFrame_0 this)
        (jm_update_0 this))))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this RightToLeftImageAnimation) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (call-next-method this _index)
        (jm_update_0 this))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this RightToLeftImageAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_startWidth) (JR.idiv (JR.i32 (* (jm_getDrawWidth_0 this) (jm_getFrame_0 this))) (jm_getSize_0 this)))
        (setf (slot-value this 'f_currentWidth) (JR.i32 (- (jm_getDrawWidth_0 this) (slot-value this 'f_startWidth)))))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this RightToLeftImageAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_drawRegion_9 _graphics (jm_getImage_0 this) (slot-value this 'f_startWidth) (jm_getStartY_0 this) (slot-value this 'f_currentWidth) (jm_getDrawHeight_0 this) (Sprite.jstatic_TRANS_NONE) (JR.i32 (+ _x (slot-value this 'f_startWidth))) _y (slot-value this 'f_anchor)))))



