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
;;;; package org.allbinary.game.score

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HighScoresCanvasLevelChangeInputProcessor (HighScoresCanvasInputProcessor)
  ((f_displayInfoSingleton :initform nil)
   (f_INSTRUCTIONS :initform nil)
   (f_myFontProcessor :initform nil)
   (f_anchor :initform 0)
   (f_fontHeight :initform 0)))

    
(defun HighScoresCanvasLevelChangeInputProcessor.jnew_1 (_highScoresCanvas)
  (declare (ignorable _highScoresCanvas))
  (let ((this (make-instance 'HighScoresCanvasLevelChangeInputProcessor)))
    (setf (slot-value this 'f_displayInfoSingleton) (DisplayInfoSingleton.jm_getInstance_0))
    (setf (slot-value this 'f_INSTRUCTIONS) "(Right = Next Track, Left = Previous Track)")
    (setf (slot-value this 'f_myFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
    (setf (slot-value this 'f_fontHeight) 0)
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this HighScoresCanvasLevelChangeInputProcessor) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_fontHeight) (jm_getHeight_0 _font))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_open_0) (defgeneric jm_open_0 (this)))
(defmethod jm_open_0 ((this HighScoresCanvasLevelChangeInputProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_addListener_1 (GameKeyEventHandler.jm_getInstance_0) this))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this HighScoresCanvasLevelChangeInputProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_removeListener_1 (GameKeyEventHandler.jm_getInstance_0) this))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this HighScoresCanvasLevelChangeInputProcessor))
  (declare (ignorable this))
  (let (_list _size _anyType _key _index)
  (declare (ignorable _list _size _anyType _key _index))
    (block jreturn
        (setf _list (jm_getGameKeyEventList_0 this))
        (setf _size (jm_size_0 _list))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _anyType (aref (slot-value _list 'f_objectArray) _index))
            (setf _key (GameKeyEventUtil.jm_getKey_1 _anyType))
            (if (= _key (Canvas.jstatic_RIGHT))
                (progn
                (jm_nextGameLevel_0 (jm_getGameInfo_0 (jm_getHighScoresCanvas_0 this))))
                (if (= _key (Canvas.jstatic_LEFT))
                (progn
                (jm_previousGameLevel_0 (jm_getGameInfo_0 (jm_getHighScoresCanvas_0 this))))))
            (jm_executeUpdate_0 (jm_getHighScoresCanvas_0 this)))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_clear_0 _list))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this HighScoresCanvasLevelChangeInputProcessor) _graphics)
  (declare (ignorable this _graphics))
  (let (_width _topScoresWidth)
  (declare (ignorable _width _topScoresWidth))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (setf _width (jm_getLastWidth_0 (slot-value this 'f_displayInfoSingleton)))
        (setf _topScoresWidth (ash (jm_stringWidth_1 (jm_getFont_0 _graphics) (slot-value this 'f_INSTRUCTIONS)) (- (logand 1 31))))
        (jm_drawString_4 _graphics (slot-value this 'f_INSTRUCTIONS) (JR.i32 (- (ash _width (- (logand 1 31))) _topScoresWidth)) (JR.i32 (* (slot-value this 'f_fontHeight) 2)) (slot-value this 'f_anchor)))))



