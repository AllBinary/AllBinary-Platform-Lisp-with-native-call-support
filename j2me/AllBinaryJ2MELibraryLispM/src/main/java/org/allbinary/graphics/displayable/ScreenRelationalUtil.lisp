;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.displayable

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ScreenRelationalUtil (JObject)
  ())

(defvar ScreenRelationalUtil.jcell_instance :jnone)
(defun ScreenRelationalUtil.jstatic_instance ()
  (when (eq ScreenRelationalUtil.jcell_instance :jnone) (setf ScreenRelationalUtil.jcell_instance (ScreenRelationalUtil.jnew_0)))
  ScreenRelationalUtil.jcell_instance)
(defun (setf ScreenRelationalUtil.jstatic_instance) (value) (setf ScreenRelationalUtil.jcell_instance value))

(defun ScreenRelationalUtil.jnew_0 ()
  (let ((this (make-instance 'ScreenRelationalUtil)))
    this))

    
(defun ScreenRelationalUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ScreenRelationalUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getScaleImage_1) (defgeneric jm_getScaleImage_1 (this p1)))
(defmethod jm_getScaleImage_1 ((this ScreenRelationalUtil) _image)
  (declare (ignorable this _image))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getScaleWH_2 this (jm_getWidth_0 _image) (jm_getHeight_0 _image))))))

    
(unless (fboundp 'jm_getScaleWH_2) (defgeneric jm_getScaleWH_2 (this p1 p2)))
(defmethod jm_getScaleWH_2 ((this ScreenRelationalUtil) _aWidth _aHeight)
  (declare (ignorable this _aWidth _aHeight))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getScaleWHA_3 this _aWidth _aHeight 20)))))

    
(unless (fboundp 'jm_getScaleWHA_3) (defgeneric jm_getScaleWHA_3 (this p1 p2 p3)))
(defmethod jm_getScaleWHA_3 ((this ScreenRelationalUtil) _aWidth _aHeight _add)
  (declare (ignorable this _aWidth _aHeight _add))
  (let (_displayInfoSingleton _last _width _height _largestSize _scale)
  (declare (ignorable _displayInfoSingleton _last _width _height _largestSize _scale))
    (block jreturn
        (setf _displayInfoSingleton (DisplayInfoSingleton.jm_getInstance_0))
        (setf _last (jm_getLast_0 _displayInfoSingleton))
        (setf _width (coerce (aref _last (slot-value _displayInfoSingleton 'f_WIDTH)) 'single-float))
        (setf _height (coerce (aref _last (slot-value _displayInfoSingleton 'f_HEIGHT)) 'single-float))
        (setf _largestSize _width)
        (if (< _largestSize _height)
            (progn
            (setf _largestSize _height)))
        (setf _scale (/ _largestSize (coerce _aWidth 'single-float)))
        (return-from jreturn _scale))))

    
(unless (fboundp 'jm_getScaledHeight_2) (defgeneric jm_getScaledHeight_2 (this p1 p2)))
(defmethod jm_getScaledHeight_2 ((this ScreenRelationalUtil) _aWidth _aHeight)
  (declare (ignorable this _aWidth _aHeight))
  (let ()
    (block jreturn
        (return-from jreturn (JR.d2i (* (jm_getScaleWH_2 this _aWidth _aHeight) (coerce _aHeight 'single-float)))))))

    
(unless (fboundp 'jm_getScaledHeightAdd_3) (defgeneric jm_getScaledHeightAdd_3 (this p1 p2 p3)))
(defmethod jm_getScaledHeightAdd_3 ((this ScreenRelationalUtil) _aWidth _aHeight _add)
  (declare (ignorable this _aWidth _aHeight _add))
  (let ()
    (block jreturn
        (return-from jreturn (JR.d2i (* (jm_getScaleWHA_3 this _aWidth _aHeight _add) (coerce _aHeight 'single-float)))))))



