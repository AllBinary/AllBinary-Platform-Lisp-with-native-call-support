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

(defclass HighScoresHelper2 (HighScoresHelperBase)
  ((f_circularIndexUtil :initform nil)
   (f_selectedHighScores :initform nil)))

(defun HighScoresHelper2.jnew_0 ()
  (let ((this (make-instance 'HighScoresHelper2)))
    (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstanceAt_2 0 0))
    (setf (slot-value this 'f_selectedHighScores) (NullHighScoresSingletonFactory.jm_getInstance_0))
    this))

    
(unless (fboundp 'jm_setSelectedHighScores_1) (defgeneric jm_setSelectedHighScores_1 (this p1)))
(defmethod jm_setSelectedHighScores_1 ((this HighScoresHelper2) _selectedHighScores)
  (declare (ignorable this _selectedHighScores))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_selectedHighScores) _selectedHighScores))))

    
(unless (fboundp 'jm_getSelectedHighScores_0) (defgeneric jm_getSelectedHighScores_0 (this)))
(defmethod jm_getSelectedHighScores_0 ((this HighScoresHelper2))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_selectedHighScores)))))

    
(unless (fboundp 'jm_setHighScoresArray_1) (defgeneric jm_setHighScoresArray_1 (this p1)))
(defmethod jm_setHighScoresArray_1 ((this HighScoresHelper2) _highScoresArrayP)
  (declare (ignorable this _highScoresArrayP))
  (let ()
    (block jreturn
        (call-next-method this _highScoresArrayP)
        (jm_setSize_1 (slot-value this 'f_circularIndexUtil) (length (slot-value this 'f_highScoresArrayP)))
        (jm_selectHighScores_0 this))))

    
(unless (fboundp 'jm_selectHighScores_0) (defgeneric jm_selectHighScores_0 (this)))
(defmethod jm_selectHighScores_0 ((this HighScoresHelper2))
  (declare (ignorable this))
  (let (_highScores _index)
  (declare (ignorable _highScores _index))
    (block jreturn
        (if (= (length (slot-value this 'f_highScoresArrayP)) 0)
            (progn
            (jm_setSelectedHighScores_1 this (NullHighScoresSingletonFactory.jm_getInstance_0))
            (return-from jreturn)))
        (jm_next_0 (slot-value this 'f_circularIndexUtil))
        (setf _highScores (aref (slot-value this 'f_highScoresArrayP) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))
        (setf _index 0)
        (block jbreak (loop while (and (< (jm_getTotal_0 _highScores) 1) (< _index (length (slot-value this 'f_highScoresArrayP)))) do
                (block jcontinue
            (setf _highScores (aref (slot-value this 'f_highScoresArrayP) (jm_next_0 (slot-value this 'f_circularIndexUtil))))
            (setf _index (JR.i32 (+ _index 1))))))
        (jm_setSelectedHighScores_1 this _highScores))))



