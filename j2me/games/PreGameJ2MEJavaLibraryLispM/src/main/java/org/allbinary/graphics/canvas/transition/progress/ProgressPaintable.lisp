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
;;;; package org.allbinary.graphics.canvas.transition.progress

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ProgressPaintable (Paintable)
  ((f_progressCanvas :initform nil)))

    
(defun ProgressPaintable.jnew_1 (_progressCanvas)
  (declare (ignorable _progressCanvas))
  (let ((this (make-instance 'ProgressPaintable)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_progressCanvas) _progressCanvas)))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this ProgressPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paint2_1 (slot-value this 'f_progressCanvas) _graphics))))



