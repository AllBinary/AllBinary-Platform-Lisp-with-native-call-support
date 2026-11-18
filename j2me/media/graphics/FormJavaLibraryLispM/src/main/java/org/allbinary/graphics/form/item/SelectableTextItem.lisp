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
;;;; package org.allbinary.graphics.form.item

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SelectableTextItem (ABTextItem)
  ())

    
(defun SelectableTextItem.jnew_5 (_label _layout _altText _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _label _layout _altText _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'SelectableTextItem)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_isFocusable_0) (defgeneric jm_isFocusable_0 (this)))
(defmethod jm_isFocusable_0 ((this SelectableTextItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this SelectableTextItem) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let (_stringComponent)
  (declare (ignorable _stringComponent))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (setf _stringComponent (jm_getLabelStringComponent_0 this))
        (if (not (null _stringComponent))
            (progn
            (jm_setColor_1 _graphics (jm_intValue_0 (jm_getForegroundBasicColor_0 _stringComponent)))))
        (jm_drawString_4 _graphics (jm_getLabel_0 this) (JR.i32 (+ _x 2)) _y 0))))



