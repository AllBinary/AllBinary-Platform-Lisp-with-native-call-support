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

(defclass HighScoresPaintable (Paintable)
  ((f_displayInfoSingleton :initform nil)
   (f_myFontProcessor :initform nil)
   (f_basicColor :initform nil)
   (f_highScores :initform nil)
   (f_anchor :initform 0)
   (f_charHeight :initform 0)))

    
(defun HighScoresPaintable.jnew_0 ()
  (let ((this (make-instance 'HighScoresPaintable)))
    (setf (slot-value this 'f_displayInfoSingleton) (DisplayInfoSingleton.jm_getInstance_0))
    (setf (slot-value this 'f_myFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_basicColor) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE))
    (setf (slot-value this 'f_highScores) (NullHighScoresSingletonFactory.jm_getInstance_0))
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
    
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this HighScoresPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_charHeight) (jm_getHeight_0 _font))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this HighScoresPaintable) _eventObject)
  (declare (ignorable this _eventObject))
  (let (_colorChangeEvent)
  (declare (ignorable _colorChangeEvent))
    (block jreturn
        (setf _colorChangeEvent _eventObject)
        (setf (slot-value this 'f_basicColor) (jm_getBasicColorP_0 _colorChangeEvent)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this HighScoresPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_width _height _heading _topScoresWidth _charHeight _columnTwoHeading _columnTwoHeadingWidth _index _largestSecondColumnWidth _list _size _vectorIndex _highScore _nextScoreWidth)
  (declare (ignorable _width _height _heading _topScoresWidth _charHeight _columnTwoHeading _columnTwoHeadingWidth _index _largestSecondColumnWidth _list _size _vectorIndex _highScore _nextScoreWidth))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (setf _width (jm_getLastWidth_0 (slot-value this 'f_displayInfoSingleton)))
        (setf _height (jm_getLastHeight_0 (slot-value this 'f_displayInfoSingleton)))
        (jm_setColor_1 _graphics (jm_intValue_0 (jm_getBasicColorP_0 this)))
        (setf _heading (jm_getHeading_0 (slot-value this 'f_highScores)))
        (setf _topScoresWidth (ash (jm_stringWidth_1 (jm_getFont_0 _graphics) _heading) (- (logand 1 31))))
        (setf _charHeight (slot-value this 'f_charHeight))
        (jm_drawString_4 _graphics _heading (JR.i32 (- (ash _width (- (logand 1 31))) _topScoresWidth)) _charHeight (slot-value this 'f_anchor))
        (jm_drawString_4 _graphics (jm_getColumnOneHeading_0 (slot-value this 'f_highScores)) 10 (JR.i32 (* _charHeight 3)) (slot-value this 'f_anchor))
        (setf _columnTwoHeading (jm_getColumnTwoHeading_0 (slot-value this 'f_highScores)))
        (setf _columnTwoHeadingWidth (jm_stringWidth_1 (jm_getFont_0 _graphics) _columnTwoHeading))
        (jm_drawString_4 _graphics _columnTwoHeading (JR.i32 (- (JR.i32 (- _width 10)) _columnTwoHeadingWidth)) (JR.i32 (* _charHeight 3)) (slot-value this 'f_anchor))
        (setf _index 4)
        (setf _largestSecondColumnWidth _columnTwoHeadingWidth)
        (setf _list (jm_getList_0 (slot-value this 'f_highScores)))
        (setf _size (jm_size_0 _list))
        (setf _vectorIndex 0)
        (setf _highScore nil)
        (block jbreak (loop while (and (< _vectorIndex _size) (< (JR.i32 (* _charHeight _index)) (JR.i32 (- _height (JR.i32 (* _charHeight 2)))))) do
                (block jcontinue
            (setf _highScore (aref (slot-value _list 'f_objectArray) _vectorIndex))
            (setf _nextScoreWidth (jm_stringWidth_1 (jm_getFont_0 _graphics) (jm_getScoreString_0 _highScore)))
            (if (> _nextScoreWidth _largestSecondColumnWidth)
                (progn
                (setf _largestSecondColumnWidth _nextScoreWidth)))
            (setf _vectorIndex (JR.i32 (+ _vectorIndex 1))))))
        (setf _vectorIndex 0)
        (block jbreak (loop while (and (< _vectorIndex _size) (< (JR.i32 (* _charHeight _index)) (JR.i32 (- _height (JR.i32 (* _charHeight 2)))))) do
                (block jcontinue
            (setf _highScore (aref (slot-value _list 'f_objectArray) _vectorIndex))
            (jm_drawString_4 _graphics (jm_getName_0 _highScore) 10 (JR.i32 (* _charHeight _index)) (slot-value this 'f_anchor))
            (jm_drawString_4 _graphics (jm_getScoreString_0 _highScore) (JR.i32 (- (JR.i32 (- _width 10)) _largestSecondColumnWidth)) (JR.i32 (* _charHeight _index)) (slot-value this 'f_anchor))
            (setf _index (JR.i32 (+ _index 1)))
            (setf _vectorIndex (JR.i32 (+ _vectorIndex 1)))))))))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this HighScoresPaintable) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicColor) _basicColor))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this HighScoresPaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicColor)))))

    
(unless (fboundp 'jm_setHighScores_1) (defgeneric jm_setHighScores_1 (this p1)))
(defmethod jm_setHighScores_1 ((this HighScoresPaintable) _highScores)
  (declare (ignorable this _highScores))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_highScores) _highScores))))



