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

(defclass PaintableComposite (Paintable)
  ((f_paintableArray :initform nil)))

    
(defun PaintableComposite.jnew_1 (_paintableArray)
  (declare (ignorable _paintableArray))
  (let ((this (make-instance 'PaintableComposite)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_paintableArray) _paintableArray)))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this PaintableComposite) _graphics)
  (declare (ignorable this _graphics))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_paintableArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_paint_1 (aref (slot-value this 'f_paintableArray) _index) _graphics))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this PaintableComposite) _graphics)
  (declare (ignorable this _graphics))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_paintableArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_paintThreed_1 (aref (slot-value this 'f_paintableArray) _index) _graphics))
                (setf _index (JR.i32 (- _index 1)))))))))



