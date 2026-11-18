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

(defclass HighScoresCanvasInputProcessor (PlayerGameInput)
  ((f_highScoresCanvas :initform nil)))

    
(defun HighScoresCanvasInputProcessor.jnew_1 (_highScoresCanvas)
  (declare (ignorable _highScoresCanvas))
  (let ((this (make-instance 'HighScoresCanvasInputProcessor)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_highScoresCanvas) _highScoresCanvas)))
    this))

    
(unless (fboundp 'jm_open_0) (defgeneric jm_open_0 (this)))
(defmethod jm_open_0 ((this HighScoresCanvasInputProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this HighScoresCanvasInputProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onPressGameKeyEvent_1) (defgeneric jm_onPressGameKeyEvent_1 (this p1)))
(defmethod jm_onPressGameKeyEvent_1 ((this HighScoresCanvasInputProcessor) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (call-next-method this _gameKeyEvent)
        (jm_update_0 this))))

    
(unless (fboundp 'jm_onDownGameKeyEvent_1) (defgeneric jm_onDownGameKeyEvent_1 (this p1)))
(defmethod jm_onDownGameKeyEvent_1 ((this HighScoresCanvasInputProcessor) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (call-next-method this _gameKeyEvent)
        (jm_update_0 this))))

    
(unless (fboundp 'jm_onUpGameKeyEvent_1) (defgeneric jm_onUpGameKeyEvent_1 (this p1)))
(defmethod jm_onUpGameKeyEvent_1 ((this HighScoresCanvasInputProcessor) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (call-next-method this _gameKeyEvent)
        (jm_update_0 this))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this HighScoresCanvasInputProcessor) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getHighScoresCanvas_0) (defgeneric jm_getHighScoresCanvas_0 (this)))
(defmethod jm_getHighScoresCanvas_0 ((this HighScoresCanvasInputProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_highScoresCanvas)))))



