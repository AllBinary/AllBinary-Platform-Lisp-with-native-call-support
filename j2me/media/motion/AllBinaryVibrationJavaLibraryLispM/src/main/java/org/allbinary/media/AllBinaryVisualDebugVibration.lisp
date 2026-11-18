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
;;;; package org.allbinary.media

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinaryVisualDebugVibration (AllBinaryVibrationME)
  ((f_displayInfoSingleton :initform nil)
   (f_timeDelayHelper :initform nil)
   (f_VIBRATING :initform nil)
   (f_myFontProcessor :initform nil)
   (f_anchor :initform 0)
   (f_width :initform 0)))

(defun AllBinaryVisualDebugVibration.jnew_0 ()
  (let ((this (make-instance 'AllBinaryVisualDebugVibration)))
    (setf (slot-value this 'f_displayInfoSingleton) (DisplayInfoSingleton.jm_getInstance_0))
    (setf (slot-value this 'f_timeDelayHelper) (TimeDelayHelper.jnew_1 (Integer.jstatic_MAX_VALUE)))
    (setf (slot-value this 'f_VIBRATING) "Vibrating")
    (setf (slot-value this 'f_myFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
    
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this AllBinaryVisualDebugVibration) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_width) (jm_stringWidth_1 _font (slot-value this 'f_VIBRATING)))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_vibrate_3) (defgeneric jm_vibrate_3 (this p1 p2 p3)))
(defmethod jm_vibrate_3 ((this AllBinaryVisualDebugVibration) _duration _type _volume)
  (declare (ignorable this _duration _type _volume))
  (let ()
    (block jreturn
        (setf (slot-value (slot-value this 'f_timeDelayHelper) 'f_delay) _duration))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this AllBinaryVisualDebugVibration) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (if (jm_isTimeTNT_0 (slot-value this 'f_timeDelayHelper))
            (progn
            (setf (slot-value (slot-value this 'f_timeDelayHelper) 'f_delay) (Integer.jstatic_MAX_VALUE))
            (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
            (jm_drawString_4 _graphics (slot-value this 'f_VIBRATING) (JR.i32 (- (jm_getLastHalfWidth_0 (slot-value this 'f_displayInfoSingleton)) (ash (slot-value this 'f_width) (- (logand 1 31))))) 0 (slot-value this 'f_anchor)))))))



