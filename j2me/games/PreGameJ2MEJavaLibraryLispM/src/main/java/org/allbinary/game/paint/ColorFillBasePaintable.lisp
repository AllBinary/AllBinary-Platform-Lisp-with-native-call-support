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

(defclass ColorFillBasePaintable (Paintable)
  ((f_basicColor :initform nil)
   (f_colorP :initform 0)))

    
(defun ColorFillBasePaintable.jnew_1 (_basicColor)
  (declare (ignorable _basicColor))
  (let ((this (make-instance 'ColorFillBasePaintable)))
    (setf (slot-value this 'f_basicColor) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE))
    
  (let ()
    (block jreturn
        (jm_setBasicColorP_1 this _basicColor)))
    this))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this ColorFillBasePaintable) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicColor) _basicColor)
        (jm_setColor_1 this (jm_intValue_0 (jm_getBasicColorP_0 this))))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this ColorFillBasePaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicColor)))))

    
(unless (fboundp 'jm_getColor_0) (defgeneric jm_getColor_0 (this)))
(defmethod jm_getColor_0 ((this ColorFillBasePaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_colorP)))))

    
(unless (fboundp 'jm_setColor_1) (defgeneric jm_setColor_1 (this p1)))
(defmethod jm_setColor_1 ((this ColorFillBasePaintable) _color)
  (declare (ignorable this _color))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_colorP) _color))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this ColorFillBasePaintable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))



