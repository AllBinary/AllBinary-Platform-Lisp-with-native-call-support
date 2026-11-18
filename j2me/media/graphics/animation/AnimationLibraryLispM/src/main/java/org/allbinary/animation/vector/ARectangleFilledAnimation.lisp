;;;; Generated Code Do Not Modify
;;;; package org.allbinary.animation.vector

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ARectangleFilledAnimation (RectangleFilledAnimation)
  ((f_x :initform 0)
   (f_y :initform 0)))

    
(defun ARectangleFilledAnimation.jnew_0 ()
  (let ((this (make-instance 'ARectangleFilledAnimation)))
    
    
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this ARectangleFilledAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this ARectangleFilledAnimation) _graphics _unusedX _unusedY)
  (declare (ignorable this _graphics _unusedX _unusedY))
  (let ()
    (block jreturn
        (call-next-method this _graphics (slot-value this 'f_x) (slot-value this 'f_y)))))



