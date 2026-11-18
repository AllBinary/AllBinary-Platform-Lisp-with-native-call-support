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

;J2MEForJ2ME
(defclass AboutPaintable (Paintable)
  ((f_displayInfoSingleton :initform nil)
   (f_ABOUT :initform nil)
   (f_info :initform nil)
   (f_developers :initform nil)
   (f_paintableArray :initform nil)
   (f_myFontProcessor :initform nil)
   (f_charHeight :initform 0)
   (f_aboutBeginWidth :initform 0)
   (f_infoBeginWidth :initform nil)
   (f_developersBeginWidth :initform nil)
   (f_anchor :initform 0)))

    
(defun AboutPaintable.jm_getInstance_2 (_info _developers)
  (declare (ignorable _info _developers))
  (let ()
    (block jreturn
        (return-from jreturn (AboutPaintable.jnew_2 _info _developers)))))

    
(defun AboutPaintable.jnew_2 (_info _developers)
  (declare (ignorable _info _developers))
  (let ((this (make-instance 'AboutPaintable)))
    (setf (slot-value this 'f_displayInfoSingleton) (DisplayInfoSingleton.jm_getInstance_0))
    (setf (slot-value this 'f_ABOUT) (slot-value (CanvasStrings.jm_getInstance_0) 'f_ABOUT))
    
    
    (setf (slot-value this 'f_paintableArray) (vector this))
    (setf (slot-value this 'f_myFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    
    
    
    
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_info) _info)
        (setf (slot-value this 'f_infoBeginWidth) (JR.newArray 0 (length (slot-value this 'f_info))))
        (setf (slot-value this 'f_developers) _developers)
        (setf (slot-value this 'f_developersBeginWidth) (JR.newArray 0 (length (slot-value this 'f_developers))))))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this AboutPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_font _infoSize _index _size)
  (declare (ignorable _font _infoSize _index _size))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_charHeight) (jm_getHeight_0 _font))
        (setf (slot-value this 'f_aboutBeginWidth) (ash (jm_stringWidth_1 _font (slot-value this 'f_ABOUT)) (- (logand 1 31))))
        (setf _infoSize (length (slot-value this 'f_info)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _infoSize) do
                (block jcontinue
            (setf (aref (slot-value this 'f_infoBeginWidth) _index) (ash (jm_stringWidth_1 _font (aref (slot-value this 'f_info) _index)) (- (logand 1 31)))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf _size (length (slot-value this 'f_developers)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf (aref (slot-value this 'f_developersBeginWidth) _index) (ash (jm_stringWidth_1 _font (aref (slot-value this 'f_developers) _index)) (- (logand 1 31)))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_getPaintableArrayInstance_0) (defgeneric jm_getPaintableArrayInstance_0 (this)))
(defmethod jm_getPaintableArrayInstance_0 ((this AboutPaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_paintableArray)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this AboutPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_halfWidth _infoSize _index _size)
  (declare (ignorable _halfWidth _infoSize _index _size))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (setf _halfWidth (jm_getLastHalfWidth_0 (slot-value this 'f_displayInfoSingleton)))
        (jm_drawString_4 _graphics (slot-value this 'f_ABOUT) (JR.i32 (- _halfWidth (slot-value this 'f_aboutBeginWidth))) (JR.i32 (* 2 (slot-value this 'f_charHeight))) (slot-value this 'f_anchor))
        (setf _infoSize (length (slot-value this 'f_info)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _infoSize) do
                (block jcontinue
            (jm_drawString_4 _graphics (aref (slot-value this 'f_info) _index) (JR.i32 (- _halfWidth (aref (slot-value this 'f_infoBeginWidth) _index))) (JR.i32 (* (JR.i32 (+ 4 _index)) (slot-value this 'f_charHeight))) (slot-value this 'f_anchor)))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf _size (length (slot-value this 'f_developers)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_drawString_4 _graphics (aref (slot-value this 'f_developers) _index) (JR.i32 (- _halfWidth (aref (slot-value this 'f_developersBeginWidth) _index))) (JR.i32 (* (JR.i32 (+ (JR.i32 (+ 5 _infoSize)) _index)) (slot-value this 'f_charHeight))) (slot-value this 'f_anchor)))
                (setf _index (JR.i32 (+ _index 1)))))))))



