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
;;;; package org.allbinary.game.paint

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;J2SEForJ2ME
(defclass OwnershipPaintable (Paintable)
  ((f_logUtil :initform nil)
   (f_displayInfo :initform nil)
   (f_myFontProcessor :initform nil)
   (f_COPYRIGHT :initform nil)
   (f_basicColor :initform nil)
   (f_color :initform 0)
   (f_anchor :initform 0)
   (f_COPYRIGHT_Y :initform 0)
   (f_beginWidth :initform 0)))

    
(defun OwnershipPaintable.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OwnershipPaintable.jnew_0)))))

    
(defun OwnershipPaintable.jnew_0 ()
  (let ((this (make-instance 'OwnershipPaintable)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_displayInfo) (DisplayInfoSingleton.jm_getInstance_0))
    (setf (slot-value this 'f_myFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_COPYRIGHT) "AllBinary Copyright (c) 2011")
    (setf (slot-value this 'f_basicColor) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE))
    (setf (slot-value this 'f_color) (jm_intValue_0 (slot-value this 'f_basicColor)))
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
    
    
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this OwnershipPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_COPYRIGHT_Y) (JR.i32 (* 2 (jm_getHeight_0 _font))))
        (setf (slot-value this 'f_beginWidth) (ash (jm_stringWidth_1 _font (slot-value this 'f_COPYRIGHT)) (- (logand 1 31))))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this OwnershipPaintable) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicColor) _basicColor)
        (setf (slot-value this 'f_color) (jm_intValue_0 _basicColor)))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this OwnershipPaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicColor)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this OwnershipPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_halfWidth _height)
  (declare (ignorable _halfWidth _height))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_setColor_1 _graphics (slot-value this 'f_color))
        (setf _halfWidth (jm_getLastHalfWidth_0 (slot-value this 'f_displayInfo)))
        (setf _height (jm_getLastHeight_0 (slot-value this 'f_displayInfo)))
        (jm_drawString_4 _graphics (slot-value this 'f_COPYRIGHT) (JR.i32 (- _halfWidth (slot-value this 'f_beginWidth))) (JR.i32 (- _height (slot-value this 'f_COPYRIGHT_Y))) (slot-value this 'f_anchor)))))



