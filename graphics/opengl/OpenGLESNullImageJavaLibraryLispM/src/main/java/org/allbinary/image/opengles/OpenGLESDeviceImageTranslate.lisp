;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.image.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLESDeviceImageTranslate (OpenGLESImageTranslate)
  ((f_translateX :initform 0.0f0)
   (f_translateY :initform 0.0f0)
   (f_translateX2 :initform 0.0f0)
   (f_translateY2 :initform 0.0f0)))

(defun OpenGLESDeviceImageTranslate.jnew_0 ()
  (let ((this (make-instance 'OpenGLESDeviceImageTranslate)))
    (setf (slot-value this 'f_translateX) 0.0f0)
    (setf (slot-value this 'f_translateY) 0.0f0)
    (setf (slot-value this 'f_translateX2) 0.0f0)
    (setf (slot-value this 'f_translateY2) 0.0f0)
    this))

    
(unless (fboundp 'jm_translate_4) (defgeneric jm_translate_4 (this p1 p2 p3 p4)))
(defmethod jm_translate_4 ((this OpenGLESDeviceImageTranslate) _gl _openGLESImage _x _y)
  (declare (ignorable this _gl _openGLESImage _x _y))
  (let ()
    (block jreturn
        (jm_translate_3 (slot-value _openGLESImage 'f_imageProcessor) _gl (+ (slot-value this 'f_translateX) (* (slot-value (slot-value _openGLESImage 'f_openGLESImageProperties) 'f_scaleX) _x)) (+ (slot-value this 'f_translateY) (* (slot-value (slot-value _openGLESImage 'f_openGLESImageProperties) 'f_scaleY) _y))))))

    
(unless (fboundp 'jm_translate2_2) (defgeneric jm_translate2_2 (this p1 p2)))
(defmethod jm_translate2_2 ((this OpenGLESDeviceImageTranslate) _gl _openGLESImage)
  (declare (ignorable this _gl _openGLESImage))
  (let ()
    (block jreturn
        (jm_translate_3 (slot-value _openGLESImage 'f_imageProcessor) _gl (slot-value this 'f_translateX2) (slot-value this 'f_translateY2)))))



