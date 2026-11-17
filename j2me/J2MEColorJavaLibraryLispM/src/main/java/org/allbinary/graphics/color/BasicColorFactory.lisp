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

(defclass BasicColorFactory (JObject)
  ((f_NULL_COLOR :initform nil)
   (f_TAN :initform nil)
   (f_SKIN_PINK :initform nil)
   (f_RED :initform nil)
   (f_LIGHT_RED :initform nil)
   (f_DARK_GREEN :initform nil)
   (f_GREEN :initform nil)
   (f_LIGHT_GREEN :initform nil)
   (f_PURPLE :initform nil)
   (f_BLUE :initform nil)
   (f_LIGHT_BLUE :initform nil)
   (f_VERY_LIGHT_BLUE :initform nil)
   (f_PUCE :initform nil)
   (f_AQUA :initform nil)
   (f_YELLOW :initform nil)
   (f_PINK :initform nil)
   (f_BLACK :initform nil)
   (f_GREY :initform nil)
   (f_LIGHT_GREY :initform nil)
   (f_DARK_GREY :initform nil)
   (f_ORANGE :initform nil)
   (f_BROWN :initform nil)
   (f_WHITE :initform nil)
   (f_TRANSPARENT_COLOR :initform nil)
   (f_TRANSPARENT_GREY :initform nil)
   (f_TRANSPARENT_BLACK :initform nil)
   (f_TRANSPARENT_RED :initform nil)
   (f_CLEAR_COLOR :initform nil)
   (f_BORDER_COLOR :initform nil)))

(defvar BasicColorFactory.jcell_instance :jnone)
(defun BasicColorFactory.jstatic_instance ()
  (when (eq BasicColorFactory.jcell_instance :jnone) (setf BasicColorFactory.jcell_instance (BasicColorFactory.jnew_0)))
  BasicColorFactory.jcell_instance)

(defun BasicColorFactory.jnew_0 ()
  (let ((this (make-instance 'BasicColorFactory)))
    (setf (slot-value this 'f_NULL_COLOR) (jm_createInstanceARGB_5 this 255 255 255 255 "null color"))
    (setf (slot-value this 'f_TAN) (jm_createInstance_1 this #xE9D8B5))
    (setf (slot-value this 'f_SKIN_PINK) (jm_createInstance_1 this #xFDCECE))
    (setf (slot-value this 'f_RED) (jm_createInstanceAN_3 this (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ALPHA) #xFF0000 "red"))
    (setf (slot-value this 'f_LIGHT_RED) (jm_createInstanceAN_3 this (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ALPHA) #xFFA0A0 "light red"))
    (setf (slot-value this 'f_DARK_GREEN) (jm_createInstance_1 this #x00FF00))
    (setf (slot-value this 'f_GREEN) (jm_createInstanceAN_3 this (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ALPHA) #x00DD00 "green"))
    (setf (slot-value this 'f_LIGHT_GREEN) (jm_createInstance_1 this #x007700))
    (setf (slot-value this 'f_PURPLE) (jm_createInstanceAN_3 this (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ALPHA) #x400040 "purple"))
    (setf (slot-value this 'f_BLUE) (jm_createInstanceAN_3 this (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ALPHA) #x0000FF "blue"))
    (setf (slot-value this 'f_LIGHT_BLUE) (jm_createInstance_1 this #x00aaff))
    (setf (slot-value this 'f_VERY_LIGHT_BLUE) (jm_createInstance_1 this #x000033))
    (setf (slot-value this 'f_PUCE) (jm_createInstance_1 this #xFF00AA))
    (setf (slot-value this 'f_AQUA) (jm_createInstance_1 this #x00FFFF))
    (setf (slot-value this 'f_YELLOW) (jm_createInstanceAN_3 this (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ALPHA) #xFFFF00 "yellow"))
    (setf (slot-value this 'f_PINK) (jm_createInstance_1 this #xFF00FF))
    (setf (slot-value this 'f_BLACK) (jm_createInstanceAN_3 this (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ALPHA) #x000000 "black"))
    (setf (slot-value this 'f_GREY) (jm_createInstanceAN_3 this (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ALPHA) #xAAAAAA "grey"))
    (setf (slot-value this 'f_LIGHT_GREY) (jm_createInstance_1 this #xC0C0C0))
    (setf (slot-value this 'f_DARK_GREY) (jm_createInstance_1 this #x404040))
    (setf (slot-value this 'f_ORANGE) (jm_createInstance_1 this #xe07718))
    (setf (slot-value this 'f_BROWN) (jm_createInstance_1 this #x956B00))
    (setf (slot-value this 'f_WHITE) (jm_createInstance_1 this #xFFFFFF))
    (setf (slot-value this 'f_TRANSPARENT_COLOR) (jm_createInstanceAN_3 this #x00000000 #x000000 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))
    (setf (slot-value this 'f_TRANSPARENT_GREY) (jm_createInstanceAN_3 this #x52000000 #xECECEC (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))
    (setf (slot-value this 'f_TRANSPARENT_BLACK) (jm_createInstanceAN_3 this #x52000000 #x000000 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))
    (setf (slot-value this 'f_TRANSPARENT_RED) (jm_createInstanceAN_3 this #x52000000 #xFF0000 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))
    (setf (slot-value this 'f_CLEAR_COLOR) (slot-value this 'f_BLACK))
    (setf (slot-value this 'f_BORDER_COLOR) (slot-value this 'f_WHITE))
    this))

    
(defun BasicColorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BasicColorFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_createInstance_1) (defgeneric jm_createInstance_1 (this p1)))
(defmethod jm_createInstance_1 ((this BasicColorFactory) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (return-from jreturn (BasicColor.jnew_3 (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ALPHA) _value (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))))))

    
(unless (fboundp 'jm_createInstanceA_2) (defgeneric jm_createInstanceA_2 (this p1 p2)))
(defmethod jm_createInstanceA_2 ((this BasicColorFactory) _alphaValue _value)
  (declare (ignorable this _alphaValue _value))
  (let ()
    (block jreturn
        (return-from jreturn (BasicColor.jnew_3 _alphaValue _value (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))))))

    
(unless (fboundp 'jm_createInstanceAN_3) (defgeneric jm_createInstanceAN_3 (this p1 p2 p3)))
(defmethod jm_createInstanceAN_3 ((this BasicColorFactory) _alphaValue _value _name)
  (declare (ignorable this _alphaValue _value _name))
  (let ()
    (block jreturn
        (return-from jreturn (BasicColor.jnew_3 _alphaValue _value _name)))))

    
(unless (fboundp 'jm_createInstanceARGB_5) (defgeneric jm_createInstanceARGB_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_createInstanceARGB_5 ((this BasicColorFactory) _alphaValue _r _g _b _name)
  (declare (ignorable this _alphaValue _r _g _b _name))
  (let (_ALPHA_MASK)
  (declare (ignorable _ALPHA_MASK))
    (block jreturn
        (setf _ALPHA_MASK #xFF000000)
        (return-from jreturn (BasicColor.jnew_3 _alphaValue (JR.i32 (+ (JR.i32 (+ (JR.i32 (+ (logand (JR.i32 (ash _alphaValue (logand 24 31))) _ALPHA_MASK) (logand (JR.i32 (ash _r (logand 16 31))) #x00FF0000))) (logand (JR.i32 (ash _g (logand 8 31))) #x0000FF00))) (logand _b #x000000FF))) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))))))



