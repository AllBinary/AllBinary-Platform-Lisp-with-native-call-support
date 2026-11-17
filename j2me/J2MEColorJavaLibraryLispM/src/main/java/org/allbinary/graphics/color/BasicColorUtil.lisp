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
;;;; package org.allbinary.graphics.color

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicColorUtil (JObject)
  ((f_ZERO_ARRAY :initform nil)
   (f_ALPHA :initform 0)
   (f_isAlpha :initform nil)
   (f_ffOpaque :initform nil)))

(defvar BasicColorUtil.jcell_instance :jnone)
(defun BasicColorUtil.jstatic_instance ()
  (when (eq BasicColorUtil.jcell_instance :jnone) (setf BasicColorUtil.jcell_instance (BasicColorUtil.jnew_0)))
  BasicColorUtil.jcell_instance)

(defun BasicColorUtil.jnew_0 ()
  (let ((this (make-instance 'BasicColorUtil)))
    (setf (slot-value this 'f_ZERO_ARRAY) (JR.newArray nil 0))
    (setf (slot-value this 'f_ALPHA) #xFF000000)
    (setf (slot-value this 'f_isAlpha) t)
    (setf (slot-value this 'f_ffOpaque) t)
    this))

    
(defun BasicColorUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BasicColorUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getRGB_3) (defgeneric jm_getRGB_3 (this p1 p2 p3)))
(defmethod jm_getRGB_3 ((this BasicColorUtil) _red _green _blue)
  (declare (ignorable this _red _green _blue))
  (let (_value)
  (declare (ignorable _value))
    (block jreturn
        (setf _value 0)
        (if (slot-value this 'f_isAlpha)
            (progn
            (if (slot-value this 'f_ffOpaque)
                (progn
                (setf _value (slot-value this 'f_ALPHA))))))
        (setf _value (logior (JR.i32 (ash _red (logand 16 31))) _value))
        (setf _value (logior (JR.i32 (ash _green (logand 8 31))) _value))
        (setf _value (logior _blue _value))
        (return-from jreturn _value))))

    
(unless (fboundp 'jm_getARGB_4) (defgeneric jm_getARGB_4 (this p1 p2 p3 p4)))
(defmethod jm_getARGB_4 ((this BasicColorUtil) _alphaValue _r _g _b)
  (declare (ignorable this _alphaValue _r _g _b))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ (JR.i32 (+ (JR.i32 (+ (logand (JR.i32 (ash _alphaValue (logand 24 31))) (slot-value this 'f_ALPHA)) (logand (JR.i32 (ash _r (logand 16 31))) #x00FF0000))) (logand (JR.i32 (ash _g (logand 8 31))) #x0000FF00))) (logand _b #x000000FF)))))))

    
(unless (fboundp 'jm_get_2) (defgeneric jm_get_2 (this p1 p2)))
(defmethod jm_get_2 ((this BasicColorUtil) _alphaValue _color)
  (declare (ignorable this _alphaValue _color))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ (logand (JR.i32 (ash _alphaValue (logand 24 31))) (slot-value this 'f_ALPHA)) _color))))))

    
(unless (fboundp 'jm_invert_1) (defgeneric jm_invert_1 (this p1)))
(defmethod jm_invert_1 ((this BasicColorUtil) _color)
  (declare (ignorable this _color))
  (let ()
    (block jreturn
        (return-from jreturn (logior (JR.i32 (- #xFFFFFF _color)) (slot-value this 'f_ALPHA))))))



