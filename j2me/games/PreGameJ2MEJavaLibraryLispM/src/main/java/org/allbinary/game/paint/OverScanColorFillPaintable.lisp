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
;;;; package org.allbinary.game.paint

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OverScanColorFillPaintable (ColorFillPaintable)
  ())

    
(defun OverScanColorFillPaintable.jnew_1 (_basicColor)
  (declare (ignorable _basicColor))
  (let ((this (make-instance 'OverScanColorFillPaintable)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this OverScanColorFillPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_setColor_1 _graphics (slot-value this 'f_colorP))
        (jm_fillRect_4 _graphics (JR.i32 (- (jm_getClipX_0 _graphics))) (JR.i32 (- (jm_getClipY_0 _graphics))) (JR.i32 (+ (jm_getLastWidth_0 (slot-value this 'f_displayInfoSingleton)) (JR.i32 (* (jm_getClipX_0 _graphics) 2)))) (JR.i32 (+ (jm_getLastHeight_0 (slot-value this 'f_displayInfoSingleton)) (JR.i32 (* (jm_getClipY_0 _graphics) 2))))))))



