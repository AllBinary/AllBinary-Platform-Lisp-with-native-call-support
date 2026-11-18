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

(defclass ColorFillPaintable (ColorFillBasePaintable)
  ((f_displayInfoSingleton :initform nil)))

    
(defun ColorFillPaintable.jnew_1 (_basicColor)
  (declare (ignorable _basicColor))
  (let ((this (make-instance 'ColorFillPaintable)))
    (setf (slot-value this 'f_displayInfoSingleton) (DisplayInfoSingleton.jm_getInstance_0))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this ColorFillPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_setColor_1 _graphics (slot-value this 'f_colorP))
        (jm_fillRect_4 _graphics 0 0 (jm_getLastWidth_0 (slot-value this 'f_displayInfoSingleton)) (jm_getLastHeight_0 (slot-value this 'f_displayInfoSingleton))))))



