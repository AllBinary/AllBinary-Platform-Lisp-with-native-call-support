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

(defclass BasicColor (JObject)
  ((f_name :initform nil)
   (f_value :initform 0)
   (f_redComponent :initform 0.0f0)
   (f_greenComponent :initform 0.0f0)
   (f_blueComponent :initform 0.0f0)
   (f_alphaComponent :initform 0.0f0)
   (f_red :initform 0)
   (f_green :initform 0)
   (f_blue :initform 0)
   (f_alpha :initform 0)))

    
(defun BasicColor.jnew_3 (_alphaValue _value _name)
  (declare (ignorable _alphaValue _value _name))
  (let ((this (make-instance 'BasicColor)))
    
    
    
    
    
    
    
    
    
    
  (let (_tempValue _basicColorUtil _alphaInt _redInt _greenInt _blueInt)
  (declare (ignorable _tempValue _basicColorUtil _alphaInt _redInt _greenInt _blueInt))
    (block jreturn
        (setf (slot-value this 'f_name) _name)
        (setf _tempValue 0)
        (setf _basicColorUtil (BasicColorUtil.jm_getInstance_0))
        (if (slot-value _basicColorUtil 'f_isAlpha)
            (progn
            (if (slot-value _basicColorUtil 'f_ffOpaque)
                (progn
                (setf _tempValue (logior _alphaValue _value)))
                (progn
                (setf _tempValue (logior #x00000000 _value)))))
            (progn
            (setf _tempValue _value)))
        (setf _alphaInt (logand (ash _tempValue (- (logand 24 31))) 255))
        (setf (slot-value this 'f_alpha) (JR.i16 _alphaInt))
        (setf (slot-value this 'f_alphaComponent) (/ (coerce _alphaInt 'single-float) 255.0f0))
        (setf _redInt (logand (ash _tempValue (- (logand 16 31))) 255))
        (setf (slot-value this 'f_red) (JR.i16 _redInt))
        (setf (slot-value this 'f_redComponent) (/ (coerce _redInt 'single-float) 255.0f0))
        (setf _greenInt (logand (ash _tempValue (- (logand 8 31))) 255))
        (setf (slot-value this 'f_green) (JR.i16 _greenInt))
        (setf (slot-value this 'f_greenComponent) (/ (coerce _greenInt 'single-float) 255.0f0))
        (setf _blueInt (logand _tempValue 255))
        (setf (slot-value this 'f_blue) (JR.i16 _blueInt))
        (setf (slot-value this 'f_blueComponent) (/ (coerce _blueInt 'single-float) 255.0f0))
        (setf (slot-value this 'f_value) _tempValue)))
    this))

    
(unless (fboundp 'jm_intValue_0) (defgeneric jm_intValue_0 (this)))
(defmethod jm_intValue_0 ((this BasicColor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_value)))))

    
(unless (fboundp 'jm_toInt_0) (defgeneric jm_toInt_0 (this)))
(defmethod jm_toInt_0 ((this BasicColor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_value)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this BasicColor))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "BasicColor: ")
        (jm_append_1 _stringBuffer "Alpha: ")
        (jm_appendshort_1 _stringBuffer (slot-value this 'f_alpha))
        (jm_append_1 _stringBuffer " Red: ")
        (jm_appendshort_1 _stringBuffer (slot-value this 'f_red))
        (jm_append_1 _stringBuffer " Green: ")
        (jm_appendshort_1 _stringBuffer (slot-value this 'f_green))
        (jm_append_1 _stringBuffer " Blue: ")
        (jm_appendshort_1 _stringBuffer (slot-value this 'f_blue))
        (jm_append_1 _stringBuffer " Value: ")
        (jm_appendint_1 _stringBuffer (slot-value this 'f_value))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this BasicColor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_getRedComponent_0) (defgeneric jm_getRedComponent_0 (this)))
(defmethod jm_getRedComponent_0 ((this BasicColor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_redComponent)))))

    
(unless (fboundp 'jm_getGreenComponent_0) (defgeneric jm_getGreenComponent_0 (this)))
(defmethod jm_getGreenComponent_0 ((this BasicColor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_greenComponent)))))

    
(unless (fboundp 'jm_getBlueComponent_0) (defgeneric jm_getBlueComponent_0 (this)))
(defmethod jm_getBlueComponent_0 ((this BasicColor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_blueComponent)))))

    
(unless (fboundp 'jm_getAlphaComponent_0) (defgeneric jm_getAlphaComponent_0 (this)))
(defmethod jm_getAlphaComponent_0 ((this BasicColor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_alphaComponent)))))



