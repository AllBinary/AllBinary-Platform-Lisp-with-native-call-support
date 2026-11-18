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
;;;; package org.allbinary.game.ag.layer.hud.basic

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NumberStringHud (BasicHud)
  ((f_primitiveLongUtil :initform nil)
   (f_prependString :initform nil)
   (f_PREPEND_STRING :initform nil)
   (f_value :initform 0)
   (f_max :initform 0)
   (f_offset :initform 0)
   (f_valueString :initform nil)
   (f_valueTotalDigits :initform 0)))

    
(defun NumberStringHud.jnew_6 (_prependString _max _location _direction _bufferZone _basicColor)
  (declare (ignorable _prependString _max _location _direction _bufferZone _basicColor))
  (let ((this (make-instance 'NumberStringHud)))
    
    
    
    
    
    
    
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_prependString) _prependString)
        (setf (slot-value this 'f_PREPEND_STRING) (JR.toCharArray _prependString))
        (setf (slot-value this 'f_valueString) (aref (slot-value (PrimitiveLongSingleton.jm_getInstance_0) 'f_NUMBER_CHAR_ARRAYS) 0))
        (setf (slot-value this 'f_primitiveLongUtil) (PrimitiveLongUtil.jm_createPowerOfTen_1 (JR.i32 (+ _max 1))))
        (setf (slot-value this 'f_max) _max)
        (setf (slot-value this 'f_value) 0)
        (if (= _direction 0)
            (progn
            (error (JR.newException "RuntimeException" (slot-value (BasicHudFactory.jm_getInstance_0) 'f_DIRECTION_EXCEPTION)))))))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this NumberStringHud) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_offset) (JR.i32 (+ (jm_stringWidth_1 _font (slot-value this 'f_prependString)) (MyFontProcessor.jm_defaultCharWidth_1 _font))))
        (call-next-method this _graphics))))

    
(unless (fboundp 'jm_get_0) (defgeneric jm_get_0 (this)))
(defmethod jm_get_0 ((this NumberStringHud))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_value)))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this NumberStringHud) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (jm_set_1 this (JR.i32 (+ (slot-value this 'f_value) _value))))))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this NumberStringHud) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_value) _value)
        (if (> (slot-value this 'f_value) (slot-value this 'f_max))
            (progn
            (setf (slot-value this 'f_value) 0)))
        (setf (slot-value this 'f_valueString) (jm_getCharArray_1 (slot-value this 'f_primitiveLongUtil) (slot-value this 'f_value)))
        (setf (slot-value this 'f_valueTotalDigits) (jm_getCurrentTotalDigits_0 (slot-value this 'f_primitiveLongUtil))))))

    
(unless (fboundp 'jm_reduce_1) (defgeneric jm_reduce_1 (this p1)))
(defmethod jm_reduce_1 ((this NumberStringHud) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (jm_set_1 this (JR.i32 (- (slot-value this 'f_value) _value))))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this NumberStringHud) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paintDX_8 this _graphics (slot-value this 'f_PREPEND_STRING) 0 (length (slot-value this 'f_PREPEND_STRING)) (slot-value this 'f_valueString) 0 (slot-value this 'f_valueTotalDigits) (slot-value this 'f_offset)))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this NumberStringHud) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let (_charArray _len _charArray2 _len2)
  (declare (ignorable _charArray _len _charArray2 _len2))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (setf _charArray (slot-value this 'f_PREPEND_STRING))
        (setf _len (length (slot-value this 'f_PREPEND_STRING)))
        (setf _charArray2 (slot-value this 'f_valueString))
        (setf _len2 (slot-value this 'f_valueTotalDigits))
        (jm_setBasicColorP_2 (slot-value this 'f_basicSetColorUtil) _graphics (jm_getBasicColorP_0 this))
        (jm_drawChars_6 _graphics _charArray 0 _len _x _y 0)
        (jm_drawChars_6 _graphics _charArray2 0 _len2 (JR.i32 (- _x (slot-value this 'f_offset))) _y 0))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this NumberStringHud) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))



