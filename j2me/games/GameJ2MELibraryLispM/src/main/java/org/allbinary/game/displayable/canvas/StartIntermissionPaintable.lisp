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

(defclass StartIntermissionPaintable (InitUpdatePaintable)
  ((f_fontDebugFactory :initform nil)
   (f_basicSetColorUtil :initform nil)
   (f_gameCanvas :initform nil)
   (f_stringArray :initform nil)
   (f_fontSize :initform 0)
   (f_font :initform nil)
   (f_lastWidth :initform nil)
   (f_updateMyFontProcessor :initform nil)
   (f_myFontProcessor :initform nil)
   (f_basicColor :initform nil)
   (f_color :initform 0)
   (f_lineYOffsetArray :initform nil)
   (f_hasChanged :initform nil)
   (f_anchor :initform 0)
   (f_fontHeightP :initform 0)
   (f_BEGIN_LEVEL :initform nil)
   (f_EMPTY_STRING :initform nil)))

    
(defun StartIntermissionPaintable.jnew_4 (_gameCanvas _stringArray _basicColor _font)
  (declare (ignorable _gameCanvas _stringArray _basicColor _font))
  (let ((this (make-instance 'StartIntermissionPaintable)))
    (setf (slot-value this 'f_fontDebugFactory) (FontDebugFactory.jm_getInstance_0))
    (setf (slot-value this 'f_basicSetColorUtil) (BasicColorSetUtil.jm_getInstance_0))
    
    
    
    
    
    (setf (slot-value this 'f_updateMyFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor))
    (setf (slot-value this 'f_basicColor) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLACK))
    
    (setf (slot-value this 'f_lineYOffsetArray) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_INT_ARRAY))
    (setf (slot-value this 'f_hasChanged) t)
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
    
    (setf (slot-value this 'f_BEGIN_LEVEL) "Begin Level ")
    (setf (slot-value this 'f_EMPTY_STRING) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameCanvas) _gameCanvas)
        (setf (slot-value this 'f_stringArray) _stringArray)
        (setf (slot-value this 'f_lastWidth) (JR.newArray 0 (length (slot-value this 'f_stringArray))))
        (jm_setBasicColorP_1 this _basicColor)
        (setf (slot-value this 'f_color) (jm_intValue_0 _basicColor))
        (setf (slot-value this 'f_fontSize) (jm_getSize_0 _font))
        (setf (slot-value this 'f_font) _font)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this StartIntermissionPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_fontHeightP) (jm_getHeight_0 _font))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this StartIntermissionPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_existingFont _displayInfo _beginWidth _index)
  (declare (ignorable _existingFont _displayInfo _beginWidth _index))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (setf _existingFont (jm_getFont_0 _graphics))
        (jm_setFont_2 (slot-value this 'f_fontDebugFactory) (slot-value this 'f_font) _graphics)
        (setf _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (jm_setBasicColorP3_3 (slot-value this 'f_basicSetColorUtil) _graphics (slot-value this 'f_basicColor) (slot-value this 'f_color))
        (setf _beginWidth 0)
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_lineYOffsetArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (if (slot-value this 'f_hasChanged)
                (progn
                (setf (aref (slot-value this 'f_lastWidth) _index) (ash (jm_stringWidth_1 (jm_getFont_0 _graphics) (aref (slot-value this 'f_stringArray) _index)) (- (logand 1 31))))))
            (setf _beginWidth (aref (slot-value this 'f_lastWidth) _index))
            (jm_drawString_4 _graphics (aref (slot-value this 'f_stringArray) _index) (JR.i32 (- (jm_getLastHalfWidth_0 _displayInfo) _beginWidth)) (JR.i32 (- (jm_getLastHalfHeight_0 _displayInfo) (aref (slot-value this 'f_lineYOffsetArray) _index))) (slot-value this 'f_anchor)))
                (setf _index (JR.i32 (- _index 1))))))
        (setf (slot-value this 'f_hasChanged) nil)
        (jm_setFont_2 (slot-value this 'f_fontDebugFactory) _existingFont _graphics))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this StartIntermissionPaintable))
  (declare (ignorable this))
  (let (_level _index)
  (declare (ignorable _level _index))
    (block jreturn
        (setf _level (jm_getCurrentLevel_0 (jm_getGameInfo_0 (jm_getLayerManager_0 (slot-value this 'f_gameCanvas)))))
        (setf (aref (slot-value this 'f_stringArray) 0) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_BEGIN_LEVEL)) _level)))
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_stringArray)) 1)))
            (block jbreak (loop while (>= _index 1) do
                (block jcontinue
            (setf (aref (slot-value this 'f_stringArray) _index) (slot-value this 'f_EMPTY_STRING)))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this StartIntermissionPaintable) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicColor) _basicColor))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this StartIntermissionPaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicColor)))))



