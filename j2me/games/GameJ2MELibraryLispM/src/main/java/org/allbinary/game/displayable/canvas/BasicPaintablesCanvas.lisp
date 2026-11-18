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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicPaintablesCanvas (GameCommandCanvas)
  ((f_paintableArray :initform nil)
   (f_colorFillPaintable :initform nil)))

    
(defun BasicPaintablesCanvas.jnew_4 (_cmdListener _name _allBinaryGameLayerManager _paintableArray)
  (declare (ignorable _cmdListener _name _allBinaryGameLayerManager _paintableArray))
  (let ((this (make-instance 'BasicPaintablesCanvas)))
    
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_paintableArray) _paintableArray)
        (setf (slot-value this 'f_colorFillPaintable) (jm_getInstance_2 (ColorFillPaintableFactory.jm_getInstance_0) (jm_getBackgroundBasicColor_0 _allBinaryGameLayerManager) nil))))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this BasicPaintablesCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (jm_paint_1 (slot-value this 'f_colorFillPaintable) _graphics)
        (jm_setColor_1 _graphics (slot-value this 'f_foregroundColor))
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_paintableArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_paint_1 (aref (slot-value this 'f_paintableArray) _index) _graphics))
                (setf _index (JR.i32 (- _index 1))))))
        (call-next-method this _graphics))))



