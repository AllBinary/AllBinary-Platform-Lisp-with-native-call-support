;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLBitmap (PlatformBitmapBase)
  ((f_bitmap :initform nil)))

    
(defun OpenGLBitmap.jnew_1 (_bitmap)
  (declare (ignorable _bitmap))
  (let ((this (make-instance 'OpenGLBitmap)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_bitmap) _bitmap)))
    this))

    
(unless (fboundp 'jm_getPixels_7) (defgeneric jm_getPixels_7 (this p1 p2 p3 p4 p5 p6 p7)))
(defmethod jm_getPixels_7 ((this OpenGLBitmap) _pixels _offset _stride _x _y _width _height)
  (declare (ignorable this _pixels _offset _stride _x _y _width _height))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setPixels_7) (defgeneric jm_setPixels_7 (this p1 p2 p3 p4 p5 p6 p7)))
(defmethod jm_setPixels_7 ((this OpenGLBitmap) _pixels _offset _stride _x _y _width _height)
  (declare (ignorable this _pixels _offset _stride _x _y _width _height))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_recycle_0) (defgeneric jm_recycle_0 (this)))
(defmethod jm_recycle_0 ((this OpenGLBitmap))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



