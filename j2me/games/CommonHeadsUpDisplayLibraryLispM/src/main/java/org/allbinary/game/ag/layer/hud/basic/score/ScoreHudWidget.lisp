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
;;;; package org.allbinary.game.ag.layer.hud.basic.score

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ScoreHudWidget (NumberStringHud)
  ())

    
(defun ScoreHudWidget.jm_getInstance_3 (_maxscore _location _direction)
  (declare (ignorable _maxscore _location _direction))
  (let ()
    (block jreturn
        (return-from jreturn (ScoreHudWidget.jnew_5 _maxscore _location _direction 2 (slot-value (BasicColorFactory.jm_getInstance_0) 'f_GREY))))))

    
(defun ScoreHudWidget.jnew_5 (_maxscore _location _direction _bufferZone _basicColor)
  (declare (ignorable _maxscore _location _direction _bufferZone _basicColor))
  (let ((this (make-instance 'ScoreHudWidget)))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_updateMaxHeight) 14)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this ScoreHudWidget) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_updateMaxWidth) (JR.i32 (* (jm_getSize_0 _font) 5)))
        (call-next-method this _graphics))))



