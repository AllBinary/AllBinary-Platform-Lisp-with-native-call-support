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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TouchButtonsPaintable (Paintable)
  ((f_foregroundBasicColor :initform nil)
   (f_foregroundColor :initform 0)
   (f_basicSetColorUtil :initform nil)
   (f_touchButtonFactory :initform nil)))

    
(defun TouchButtonsPaintable.jnew_1 (_basicColor)
  (declare (ignorable _basicColor))
  (let ((this (make-instance 'TouchButtonsPaintable)))
    
    
    (setf (slot-value this 'f_basicSetColorUtil) (BasicColorSetUtil.jm_getInstance_0))
    (setf (slot-value this 'f_touchButtonFactory) (TouchButtonFactory.jm_getInstance_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_foregroundBasicColor) _basicColor)
        (setf (slot-value this 'f_foregroundColor) (jm_intValue_0 _basicColor))))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this TouchButtonsPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_list _touchButton _index)
  (declare (ignorable _list _touchButton _index))
    (block jreturn
        (setf _list (jm_getList_0 (slot-value this 'f_touchButtonFactory)))
        (jm_setBasicColorP3_3 (slot-value this 'f_basicSetColorUtil) _graphics (slot-value this 'f_foregroundBasicColor) (slot-value this 'f_foregroundColor))
        (setf _touchButton nil)
        (progn
            (setf _index (jm_size_0 _list))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _touchButton (aref (slot-value _list 'f_objectArray) _index))
            (jm_paint_1 _touchButton _graphics)))))
        (progn
            (setf _index (jm_size_0 _list))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _touchButton (aref (slot-value _list 'f_objectArray) _index))
            (jm_paintHint_1 _touchButton _graphics))))))))



