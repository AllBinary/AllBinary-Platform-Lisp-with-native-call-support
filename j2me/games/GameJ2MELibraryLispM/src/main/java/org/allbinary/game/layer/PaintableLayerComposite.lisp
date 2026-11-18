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

(defclass PaintableLayerComposite (Paintable)
  ((f_paintableArray :initform nil)))

    
(defun PaintableLayerComposite.jnew_1 (_paintableArray)
  (declare (ignorable _paintableArray))
  (let ((this (make-instance 'PaintableLayerComposite)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_paintableArray) _paintableArray)))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this PaintableLayerComposite) _graphics)
  (declare (ignorable this _graphics))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (length (slot-value this 'f_paintableArray)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (jm_paint_1 (aref (slot-value this 'f_paintableArray) _index) _graphics))))))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this PaintableLayerComposite) _graphics)
  (declare (ignorable this _graphics))
  (let (_paintableInterface _index)
  (declare (ignorable _paintableInterface _index))
    (block jreturn
        (setf _paintableInterface nil)
        (progn
            (setf _index (length (slot-value this 'f_paintableArray)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _paintableInterface (aref (slot-value this 'f_paintableArray) _index))
            (jm_paintThreed_1 _paintableInterface _graphics))))))))



