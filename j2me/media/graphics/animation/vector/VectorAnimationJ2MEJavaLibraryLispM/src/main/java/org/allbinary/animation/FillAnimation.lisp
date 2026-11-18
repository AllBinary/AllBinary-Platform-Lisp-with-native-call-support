;;;; Generated Code Do Not Modify
;;;; package org.allbinary.animation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FillAnimation (IndexedAnimation)
  ((f_pixelBuffer :initform nil)
   (f_width :initform 0)
   (f_height :initform 0)))

    
(defun FillAnimation.jnew_4 (_pixelBuffer _width _height _animationBehavior)
  (declare (ignorable _pixelBuffer _width _height _animationBehavior))
  (let ((this (make-instance 'FillAnimation)))
    
    
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_width) 100)
        (setf (slot-value this 'f_height) 100)
        (setf (slot-value this 'f_pixelBuffer) _pixelBuffer)))
    this))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this FillAnimation) _basicColor)
  (declare (ignorable this _basicColor))
  (let (_changed)
  (declare (ignorable _changed))
    (block jreturn
        (setf _changed nil)
        (if (or (null (jm_getBasicColorP_0 this)) (not (eq (jm_intValue_0 (jm_getBasicColorP_0 this)) (jm_intValue_0 _basicColor))))
            (progn
            (setf _changed t)))
        (call-next-method this _basicColor)
        (if _changed
            (progn
            (jm_updateModifiers_0 this))))))

    
(unless (fboundp 'jm_changeBasicColor_1) (defgeneric jm_changeBasicColor_1 (this p1)))
(defmethod jm_changeBasicColor_1 ((this FillAnimation) _basicColor)
  (declare (ignorable this _basicColor))
  (let (_changed)
  (declare (ignorable _changed))
    (block jreturn
        (setf _changed nil)
        (if (or (null (jm_getChangeBasicColor_0 this)) (not (eq (jm_intValue_0 (jm_getChangeBasicColor_0 this)) (jm_intValue_0 _basicColor))))
            (progn
            (setf _changed t)))
        (call-next-method this _basicColor)
        (if _changed
            (progn
            (jm_updateModifiers_0 this))))))

    
(unless (fboundp 'jm_setAlpha_1) (defgeneric jm_setAlpha_1 (this p1)))
(defmethod jm_setAlpha_1 ((this FillAnimation) _alpha)
  (declare (ignorable this _alpha))
  (let (_changed)
  (declare (ignorable _changed))
    (block jreturn
        (setf _changed nil)
        (if (not (eq (slot-value this 'f_alphaP) _alpha))
            (progn
            (setf _changed t)))
        (call-next-method this _alpha)
        (if _changed
            (progn
            (jm_updateModifiers_0 this))))))

    
(unless (fboundp 'jm_setScale_2) (defgeneric jm_setScale_2 (this p1 p2)))
(defmethod jm_setScale_2 ((this FillAnimation) _scaleX _scaleY)
  (declare (ignorable this _scaleX _scaleY))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setMaxScale_2) (defgeneric jm_setMaxScale_2 (this p1 p2)))
(defmethod jm_setMaxScale_2 ((this FillAnimation) _maxScaleX _maxScaleY)
  (declare (ignorable this _maxScaleX _maxScaleY))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_updateModifiers_0) (defgeneric jm_updateModifiers_0 (this)))
(defmethod jm_updateModifiers_0 ((this FillAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this FillAnimation) _g)
  (declare (ignorable this _g))
  (let ()
    (block jreturn
        (jm_drawRGB_8 _g (slot-value this 'f_pixelBuffer) 0 (slot-value this 'f_width) 0 0 (slot-value this 'f_width) (slot-value this 'f_height) t))))



