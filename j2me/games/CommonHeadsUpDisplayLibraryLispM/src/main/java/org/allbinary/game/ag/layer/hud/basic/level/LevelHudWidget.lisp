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
;;;; package org.allbinary.game.ag.layer.hud.basic.level

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LevelHudWidget (BasicHud)
  ((f_level :initform 0)
   (f_maxlevel :initform 0)
   (f_levelString :initform nil)
   (f_levelNumberCharArray :initform nil)
   (f_levelNumberTotalDigits :initform 0)
   (f_offset :initform 0)
   (f_primitiveLongUtil :initform nil)))

    
(defun LevelHudWidget.jm_createHud_3 (_maxlevel _location _direction)
  (declare (ignorable _maxlevel _location _direction))
  (let ()
    (block jreturn
        (return-from jreturn (LevelHudWidget.jnew_3 _maxlevel _location _direction)))))

    
(defun LevelHudWidget.jnew_3 (_maxlevel _location _direction)
  (declare (ignorable _maxlevel _location _direction))
  (let ((this (make-instance 'LevelHudWidget)))
    
    
    
    (setf (slot-value this 'f_levelNumberCharArray) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_CHAR_ARRAY))
    
    
    
  (let (_LEVEL)
  (declare (ignorable _LEVEL))
    (block jreturn
        nil
        (setf (slot-value this 'f_primitiveLongUtil) (PrimitiveLongUtil.jm_createPowerOfTen_1 1000))
        (setf _LEVEL "Lv ")
        (setf (slot-value this 'f_levelString) (JR.toCharArray _LEVEL))
        (setf (slot-value this 'f_maxlevel) _maxlevel)
        (setf (slot-value this 'f_level) _maxlevel)
        (jm_update_0 this)
        (setf (slot-value this 'f_updateMaxHeight) 14)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this LevelHudWidget) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_updateMaxWidth) (JR.i32 (* (jm_getSize_0 _font) 4)))
        (setf (slot-value this 'f_offset) (JR.i32 (+ (jm_charsWidth_3 _font (slot-value this 'f_levelString) 0 (length (slot-value this 'f_levelString))) (jm_getSize_0 _font))))
        (call-next-method this _graphics))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this LevelHudWidget))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_levelNumberCharArray) (jm_getCharArray_1 (slot-value this 'f_primitiveLongUtil) (slot-value this 'f_level)))
        (setf (slot-value this 'f_levelNumberTotalDigits) (jm_getCurrentTotalDigits_0 (slot-value this 'f_primitiveLongUtil))))))

    
(unless (fboundp 'jm_setLevel_1) (defgeneric jm_setLevel_1 (this p1)))
(defmethod jm_setLevel_1 ((this LevelHudWidget) _level)
  (declare (ignorable this _level))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_level) _level)
        (jm_update_0 this))))

    
(unless (fboundp 'jm_nextLevel_0) (defgeneric jm_nextLevel_0 (this)))
(defmethod jm_nextLevel_0 ((this LevelHudWidget))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_level) (JR.i32 (+ (slot-value this 'f_level) 1)))
        (jm_update_0 this))))

    
(unless (fboundp 'jm_previousLevel_0) (defgeneric jm_previousLevel_0 (this)))
(defmethod jm_previousLevel_0 ((this LevelHudWidget))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_level) (JR.i32 (- (slot-value this 'f_level) 1)))
        (if (< (slot-value this 'f_level) 0)
            (progn
            (setf (slot-value this 'f_level) 0)))
        (jm_update_0 this))))

    
(unless (fboundp 'jm_isComplete_0) (defgeneric jm_isComplete_0 (this)))
(defmethod jm_isComplete_0 ((this LevelHudWidget))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (<= (slot-value this 'f_level) (slot-value this 'f_maxlevel))
            (progn
            (return-from jreturn nil))
            (progn
            (return-from jreturn t))))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this LevelHudWidget) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paintDX_8 this _graphics (slot-value this 'f_levelString) 0 (length (slot-value this 'f_levelString)) (slot-value this 'f_levelNumberCharArray) 0 (slot-value this 'f_levelNumberTotalDigits) (slot-value this 'f_offset)))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this LevelHudWidget) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))



