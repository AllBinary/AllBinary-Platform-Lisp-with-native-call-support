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

(defclass PressStartMenuPaintable (Paintable)
  ((f_displayInfo :initform nil)
   (f_PRESS_START :initform nil)
   (f_KEY_START :initform nil)
   (f_MENU_START :initform nil)
   (f_myFontProcessor :initform nil)
   (f_startString :initform nil)
   (f_timeDelayHelper :initform nil)
   (f_flash :initform nil)
   (f_anchor :initform 0)
   (f_beginWidth :initform 0)
   (f_line :initform 0)))

    
(defun PressStartMenuPaintable.jnew_0 ()
  (let ((this (make-instance 'PressStartMenuPaintable)))
    (setf (slot-value this 'f_displayInfo) (DisplayInfoSingleton.jm_getInstance_0))
    (setf (slot-value this 'f_PRESS_START) "Press Screen To Start")
    (setf (slot-value this 'f_KEY_START) "Press or Click F2 To Begin")
    (setf (slot-value this 'f_MENU_START) "Press Start From The Menu To Begin")
    (setf (slot-value this 'f_myFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_startString) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_timeDelayHelper) (TimeDelayHelper.jnew_1 1100))
    
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
    
    
  (let ()
    (block jreturn
        (if (jm_isTouch_0 (TouchScreenFactory.jm_getInstance_0))
            (progn
            (setf (slot-value this 'f_startString) (slot-value this 'f_PRESS_START)))
            (if (AppletUtil.jm_isAppletLoader_1 this)
            (progn
            (setf (slot-value this 'f_startString) (slot-value this 'f_KEY_START)))
            (progn
            (setf (slot-value this 'f_startString) (slot-value this 'f_MENU_START)))))))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this PressStartMenuPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_beginWidth) (ash (jm_stringWidth_1 (jm_getFont_0 _graphics) (slot-value this 'f_startString)) (- (logand 1 31))))
        (setf (slot-value this 'f_line) (JR.i32 (+ (JR.i32 (* 4 (MyFontProcessor.jm_defaultCharWidth_1 _font))) (ash (jm_getHeight_0 _font) (- (logand 1 31))))))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this PressStartMenuPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (if (jm_isTimeTNT_0 (slot-value this 'f_timeDelayHelper))
            (progn
            (if (jm_isFlash_0 this)
                (progn
                (jm_setFlash_1 this nil))
                (progn
                (jm_setFlash_1 this t)))))
        (if (jm_isFlash_0 this)
            (progn
            (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
            (jm_drawString_4 _graphics (slot-value this 'f_startString) (JR.i32 (- (jm_getLastHalfWidth_0 (slot-value this 'f_displayInfo)) (slot-value this 'f_beginWidth))) (JR.i32 (- (jm_getLastHeight_0 (slot-value this 'f_displayInfo)) (slot-value this 'f_line))) (slot-value this 'f_anchor)))))))

    
(unless (fboundp 'jm_setFlash_1) (defgeneric jm_setFlash_1 (this p1)))
(defmethod jm_setFlash_1 ((this PressStartMenuPaintable) _flash)
  (declare (ignorable this _flash))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_flash) _flash))))

    
(unless (fboundp 'jm_isFlash_0) (defgeneric jm_isFlash_0 (this)))
(defmethod jm_isFlash_0 ((this PressStartMenuPaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_flash)))))



