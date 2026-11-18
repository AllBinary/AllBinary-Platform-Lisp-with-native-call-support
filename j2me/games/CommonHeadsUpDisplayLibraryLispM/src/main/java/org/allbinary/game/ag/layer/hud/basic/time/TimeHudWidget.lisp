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
;;;; package org.allbinary.game.ag.layer.hud.basic.time

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TimeHudWidget (BasicHud)
  ((f_TIME_STRING :initform nil)
   (f_TIME_CHAR_ARRAY :initform nil)
   (f_offset :initform 0)
   (f_string :initform nil)
   (f_totalDigits :initform 0)
   (f_timer :initform nil)))

    
(defun TimeHudWidget.jm_getInstance_4 (_location _direction _basicColor _timer)
  (declare (ignorable _location _direction _basicColor _timer))
  (let ()
    (block jreturn
        (return-from jreturn (TimeHudWidget.jnew_5 _location _direction 2 _basicColor _timer)))))

    
(defun TimeHudWidget.jnew_5 (_location _direction _bufferZone _basicColor _timer)
  (declare (ignorable _location _direction _bufferZone _basicColor _timer))
  (let ((this (make-instance 'TimeHudWidget)))
    (setf (slot-value this 'f_TIME_STRING) "Time ")
    (setf (slot-value this 'f_TIME_CHAR_ARRAY) (vector (char-code #\T) (char-code #\i) (char-code #\m) (char-code #\e) (char-code #\ )))
    
    (setf (slot-value this 'f_string) (slot-value (PrimitiveLongSingleton.jm_getInstance_0) 'f_ZERO))
    (setf (slot-value this 'f_totalDigits) 1)
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_timer) _timer)
        (jm_set_0 this)
        (setf (slot-value this 'f_updateMaxHeight) 14)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this TimeHudWidget) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_updateMaxWidth) (JR.i32 (* (jm_getSize_0 _font) 5)))
        (setf (slot-value this 'f_offset) (JR.i32 (+ (jm_stringWidth_1 _font (slot-value this 'f_TIME_STRING)) (MyFontProcessor.jm_defaultStringWidth_2 _font 3))))
        (call-next-method this _graphics))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this TimeHudWidget))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_update_0 (slot-value this 'f_timer))
        (jm_set_0 this))))

    
(unless (fboundp 'jm_set_0) (defgeneric jm_set_0 (this)))
(defmethod jm_set_0 ((this TimeHudWidget))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_string) (jm_getTimeChars_0 (slot-value this 'f_timer)))
        (setf (slot-value this 'f_totalDigits) (jm_getCurrentTotalDigits_0 (slot-value this 'f_timer))))))

    
(unless (fboundp 'jm_getTimer_0) (defgeneric jm_getTimer_0 (this)))
(defmethod jm_getTimer_0 ((this TimeHudWidget))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_timer)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this TimeHudWidget) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paintDX_8 this _graphics (slot-value this 'f_TIME_CHAR_ARRAY) 0 (length (slot-value this 'f_TIME_CHAR_ARRAY)) (slot-value this 'f_string) 0 (slot-value this 'f_totalDigits) (slot-value this 'f_offset)))))



