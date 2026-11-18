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
;;;; package org.allbinary.game.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SWTBlackPaintable (Paintable)
  ((f_basicSetColorUtil :initform nil)
   (f_BLACK :initform nil)))

(defun SWTBlackPaintable.jnew_0 ()
  (let ((this (make-instance 'SWTBlackPaintable)))
    (setf (slot-value this 'f_basicSetColorUtil) (BasicColorSetUtil.jm_getInstance_0))
    (setf (slot-value this 'f_BLACK) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLACK))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this SWTBlackPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_setBasicColorP_2 (slot-value this 'f_basicSetColorUtil) _graphics (slot-value this 'f_BLACK)))))



