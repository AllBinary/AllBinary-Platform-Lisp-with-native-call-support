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

(defclass OpenGLESImageProperties (JObject)
  ((f_textureID :initform 0)
   (f_scaleX :initform 0.0f0)
   (f_scaleY :initform 0.0f0)
   (f_scaleX2 :initform 0.0f0)
   (f_scaleY2 :initform 0.0f0)
   (f_angle :initform 0)
   (f_redf :initform 0.0f0)
   (f_greenf :initform 0.0f0)
   (f_bluef :initform 0.0f0)
   (f_alphaf :initform 0.0f0)))

(defun OpenGLESImageProperties.jnew_0 ()
  (let ((this (make-instance 'OpenGLESImageProperties)))
    (setf (slot-value this 'f_textureID) (JR.i32 (- 1)))
    (setf (slot-value this 'f_scaleX) 1.0f0)
    (setf (slot-value this 'f_scaleY) 1.0f0)
    (setf (slot-value this 'f_scaleX2) 1.0f0)
    (setf (slot-value this 'f_scaleY2) 1.0f0)
    
    (setf (slot-value this 'f_redf) 1.0f0)
    (setf (slot-value this 'f_greenf) 1.0f0)
    (setf (slot-value this 'f_bluef) 1.0f0)
    
    this))



