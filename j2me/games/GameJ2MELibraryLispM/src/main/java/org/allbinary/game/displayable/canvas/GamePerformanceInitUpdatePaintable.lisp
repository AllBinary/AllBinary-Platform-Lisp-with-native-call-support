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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GamePerformanceInitUpdatePaintable (InitUpdatePaintable)
  ((f_halfHeight :initform 0)
   (f_yArray :initform nil)
   (f_myFontProcessor :initform nil)
   (f_baseRefreshHelperCharArray :initform nil)
   (f_defaultStringWidth :initform 0)
   (f_RED :initform 0)))

(defun GamePerformanceInitUpdatePaintable.jnew_0 ()
  (let ((this (make-instance 'GamePerformanceInitUpdatePaintable)))
    (setf (slot-value this 'f_halfHeight) (jm_getLastHalfHeight_0 (DisplayInfoSingleton.jm_getInstance_0)))
    (setf (slot-value this 'f_yArray) (vector (JR.i32 (+ (slot-value this 'f_halfHeight) 30)) (JR.i32 (+ (slot-value this 'f_halfHeight) 30)) (JR.i32 (+ (JR.i32 (+ (slot-value this 'f_halfHeight) 30)) 15)) (JR.i32 (+ (JR.i32 (+ (slot-value this 'f_halfHeight) 30)) 15)) (JR.i32 (+ (JR.i32 (+ (slot-value this 'f_halfHeight) 30)) 30)) (JR.i32 (+ (JR.i32 (+ (slot-value this 'f_halfHeight) 30)) 30)) (JR.i32 (+ (JR.i32 (+ (slot-value this 'f_halfHeight) 30)) 45)) (JR.i32 (+ (JR.i32 (+ (slot-value this 'f_halfHeight) 30)) 45))))
    (setf (slot-value this 'f_myFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_baseRefreshHelperCharArray) (JR.newArray 0 0 0))
    
    (setf (slot-value this 'f_RED) (jm_intValue_0 (slot-value (BasicColorFactory.jm_getInstance_0) 'f_RED)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this GamePerformanceInitUpdatePaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_defaultStringWidth) (MyFontProcessor.jm_defaultStringWidth_2 _font 2))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this GamePerformanceInitUpdatePaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this GamePerformanceInitUpdatePaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_baseRefreshHelperCharArray) (jm_to2DCharArray_0 (GameStatisticsFactory.jm_getInstance_0))))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this GamePerformanceInitUpdatePaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_charArray _charArray2 _size2 _size3 _size _index)
  (declare (ignorable _charArray _charArray2 _size2 _size3 _size _index))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_setColor_1 _graphics (slot-value this 'f_RED))
        (setf _charArray nil)
        (setf _charArray2 nil)
        (setf _size2 0)
        (setf _size3 0)
        (setf _size (JR.i32 (- (length (slot-value this 'f_baseRefreshHelperCharArray)) 2)))
        (progn
            (setf _index _size)
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _charArray (aref (slot-value this 'f_baseRefreshHelperCharArray) _index))
            (setf _charArray2 (aref (slot-value this 'f_baseRefreshHelperCharArray) (JR.i32 (+ _index 1))))
            (setf _size2 (length _charArray))
            (setf _size3 (length _charArray2))
            (jm_drawChars_6 _graphics _charArray 0 _size2 0 (aref (slot-value this 'f_yArray) _index) 0)
            (jm_drawChars_6 _graphics _charArray2 0 _size3 (JR.i32 (* _size2 (slot-value this 'f_defaultStringWidth))) (aref (slot-value this 'f_yArray) (JR.i32 (+ _index 1))) 0))
                (setf _index (JR.i32 (- _index 2)))))))))



