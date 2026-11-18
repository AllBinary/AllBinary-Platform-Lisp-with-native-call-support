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
;;;; package org.allbinary.game.health

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HealthBarTwodAnimation (HealthBarAnimation)
  ())

    
(defun HealthBarTwodAnimation.jnew_2 (_layerInterface _location)
  (declare (ignorable _layerInterface _location))
  (let ((this (make-instance 'HealthBarTwodAnimation)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this HealthBarTwodAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let (_ax)
  (declare (ignorable _ax))
    (block jreturn
        (setf _ax (jm_getX_0 (jm_getViewPosition_0 (slot-value this 'f_allbinaryLayer))))
        (jm_setBasicColorP3_3 (slot-value this 'f_basicSetColorUtil) _graphics (slot-value this 'f_basicColor) (slot-value this 'f_colorP))
        (jm_fillRect_4 _graphics _ax (JR.i32 (- (jm_getY_0 this) 1)) (slot-value this 'f_x2) (slot-value this 'f_thickness)))))



