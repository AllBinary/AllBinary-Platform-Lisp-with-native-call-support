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
;;;; package org.allbinary.animation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Animation (JObject)
  ((f_basicSetColorUtil :initform nil)
   (f_basicColor :initform nil)
   (f_colorP :initform 0)
   (f_changeBasicColorP :initform nil)
   (f_changeColorP :initform 0)
   (f_alphaP :initform 0)))

    
(defun Animation.jnew_0 ()
  (let ((this (make-instance 'Animation)))
    (setf (slot-value this 'f_basicSetColorUtil) (BasicColorSetUtil.jm_getInstance_0))
    (setf (slot-value this 'f_basicColor) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE))
    
    (setf (slot-value this 'f_changeBasicColorP) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_NULL_COLOR))
    
    
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_setAlpha_1) (defgeneric jm_setAlpha_1 (this p1)))
(defmethod jm_setAlpha_1 ((this Animation) _alpha)
  (declare (ignorable this _alpha))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_alphaP) _alpha))))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this Animation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this Animation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_setBasicColorP3_3 (slot-value this 'f_basicSetColorUtil) _graphics (jm_getBasicColorP_0 this) (jm_getColor_0 this)))))

    
(unless (fboundp 'jm_paintThreedXYZ_4) (defgeneric jm_paintThreedXYZ_4 (this p1 p2 p3 p4)))
(defmethod jm_paintThreedXYZ_4 ((this Animation) _graphics _x _y _z)
  (declare (ignorable this _graphics _x _y _z))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isThreed_0) (defgeneric jm_isThreed_0 (this)))
(defmethod jm_isThreed_0 ((this Animation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this Animation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicColor)))))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this Animation) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicColor) _basicColor)
        (setf (slot-value this 'f_colorP) (jm_intValue_0 (slot-value this 'f_basicColor))))))

    
(unless (fboundp 'jm_setBackgroundBasicColorP_1) (defgeneric jm_setBackgroundBasicColorP_1 (this p1)))
(defmethod jm_setBackgroundBasicColorP_1 ((this Animation) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getChangeBasicColor_0) (defgeneric jm_getChangeBasicColor_0 (this)))
(defmethod jm_getChangeBasicColor_0 ((this Animation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_changeBasicColorP)))))

    
(unless (fboundp 'jm_changeBasicColor_1) (defgeneric jm_changeBasicColor_1 (this p1)))
(defmethod jm_changeBasicColor_1 ((this Animation) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_changeBasicColorP) _basicColor)
        (setf (slot-value this 'f_changeColorP) (jm_intValue_0 (slot-value this 'f_changeBasicColorP))))))

    
(unless (fboundp 'jm_getChangeColor_0) (defgeneric jm_getChangeColor_0 (this)))
(defmethod jm_getChangeColor_0 ((this Animation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_changeColorP)))))

    
(unless (fboundp 'jm_getColor_0) (defgeneric jm_getColor_0 (this)))
(defmethod jm_getColor_0 ((this Animation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_colorP)))))

    
(unless (fboundp 'jm_setScale_2) (defgeneric jm_setScale_2 (this p1 p2)))
(defmethod jm_setScale_2 ((this Animation) _scaleX _scaleY)
  (declare (ignorable this _scaleX _scaleY))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setMaxScale_2) (defgeneric jm_setMaxScale_2 (this p1 p2)))
(defmethod jm_setMaxScale_2 ((this Animation) _maxScaleX _maxScaleY)
  (declare (ignorable this _maxScaleX _maxScaleY))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this Animation) _gl)
  (declare (ignorable this _gl))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setDx_1) (defgeneric jm_setDx_1 (this p1)))
(defmethod jm_setDx_1 ((this Animation) _dx)
  (declare (ignorable this _dx))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getDx_0) (defgeneric jm_getDx_0 (this)))
(defmethod jm_getDx_0 ((this Animation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_setDy_1) (defgeneric jm_setDy_1 (this p1)))
(defmethod jm_setDy_1 ((this Animation) _dy)
  (declare (ignorable this _dy))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getDy_0) (defgeneric jm_getDy_0 (this)))
(defmethod jm_getDy_0 ((this Animation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))



